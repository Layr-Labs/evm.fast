import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc745
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody745_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody745_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody745_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody745_3 : StackLang.HolProg 64 :=
.seq RemovedBody745_1 RemovedBody745_2

def RemovedBody745_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody745_3 RemovedBody745_4

def RemovedBody745_6 : StackLang.HolProg 64 :=
.seq RemovedBody745_0 RemovedBody745_5

def RemovedBody745_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody745_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody745_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 8#64))

def RemovedBody745_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 16#64))

def RemovedBody745_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def RemovedBody745_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 32#64))

def RemovedBody745_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 40#64))

def RemovedBody745_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody745_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody745_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody745_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody745_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody745_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody745_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody745_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody745_27 : StackLang.HolProg 64 :=
.seq RemovedBody745_25 RemovedBody745_26

def RemovedBody745_28 : StackLang.HolProg 64 :=
.seq RemovedBody745_24 RemovedBody745_27

def RemovedBody745_29 : StackLang.HolProg 64 :=
.seq RemovedBody745_23 RemovedBody745_28

def RemovedBody745_30 : StackLang.HolProg 64 :=
.seq RemovedBody745_22 RemovedBody745_29

def RemovedBody745_31 : StackLang.HolProg 64 :=
.seq RemovedBody745_21 RemovedBody745_30

def RemovedBody745_32 : StackLang.HolProg 64 :=
.seq RemovedBody745_20 RemovedBody745_31

def RemovedBody745_33 : StackLang.HolProg 64 :=
.seq RemovedBody745_19 RemovedBody745_32

def RemovedBody745_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3304#64)

def RemovedBody745_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody745_37 : StackLang.HolProg 64 :=
.seq RemovedBody745_35 RemovedBody745_36

def RemovedBody745_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody745_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody745_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody745_41 : StackLang.HolProg 64 :=
.seq RemovedBody745_39 RemovedBody745_40

def RemovedBody745_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_43 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody745_41 RemovedBody745_42

def RemovedBody745_44 : StackLang.HolProg 64 :=
.seq RemovedBody745_38 RemovedBody745_43

def RemovedBody745_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody745_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody745_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 745 3

def RemovedBody745_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody745_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody745_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody745_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody745_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody745_54 : StackLang.HolProg 64 :=
.seq RemovedBody745_52 RemovedBody745_53

def RemovedBody745_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody745_56 : StackLang.HolProg 64 :=
.seq RemovedBody745_54 RemovedBody745_55

def RemovedBody745_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody745_58 : StackLang.HolProg 64 :=
.seq RemovedBody745_56 RemovedBody745_57

def RemovedBody745_59 : StackLang.HolProg 64 :=
.seq RemovedBody745_51 RemovedBody745_58

def RemovedBody745_60 : StackLang.HolProg 64 :=
.seq RemovedBody745_50 RemovedBody745_59

def RemovedBody745_61 : StackLang.HolProg 64 :=
.seq RemovedBody745_49 RemovedBody745_60

def RemovedBody745_62 : StackLang.HolProg 64 :=
.seq RemovedBody745_48 RemovedBody745_61

def RemovedBody745_63 : StackLang.HolProg 64 :=
.seq RemovedBody745_47 RemovedBody745_62

def RemovedBody745_64 : StackLang.HolProg 64 :=
.seq RemovedBody745_46 RemovedBody745_63

def RemovedBody745_65 : StackLang.HolProg 64 :=
.seq RemovedBody745_45 RemovedBody745_64

def RemovedBody745_66 : StackLang.HolProg 64 :=
.seq RemovedBody745_44 RemovedBody745_65

def RemovedBody745_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody745_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody745_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody745_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody745_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody745_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody745_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody745_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody745_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody745_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody745_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody745_81 : StackLang.HolProg 64 :=
.seq RemovedBody745_79 RemovedBody745_80

def RemovedBody745_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody745_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody745_84 : StackLang.HolProg 64 :=
.seq RemovedBody745_82 RemovedBody745_83

def RemovedBody745_85 : StackLang.HolProg 64 :=
.seq RemovedBody745_81 RemovedBody745_84

def RemovedBody745_86 : StackLang.HolProg 64 :=
.seq RemovedBody745_78 RemovedBody745_85

def RemovedBody745_87 : StackLang.HolProg 64 :=
.seq RemovedBody745_77 RemovedBody745_86

def RemovedBody745_88 : StackLang.HolProg 64 :=
.seq RemovedBody745_76 RemovedBody745_87

def RemovedBody745_89 : StackLang.HolProg 64 :=
.seq RemovedBody745_75 RemovedBody745_88

def RemovedBody745_90 : StackLang.HolProg 64 :=
.seq RemovedBody745_74 RemovedBody745_89

def RemovedBody745_91 : StackLang.HolProg 64 :=
.seq RemovedBody745_73 RemovedBody745_90

def RemovedBody745_92 : StackLang.HolProg 64 :=
.seq RemovedBody745_72 RemovedBody745_91

def RemovedBody745_93 : StackLang.HolProg 64 :=
.seq RemovedBody745_71 RemovedBody745_92

def RemovedBody745_94 : StackLang.HolProg 64 :=
.seq RemovedBody745_70 RemovedBody745_93

def RemovedBody745_95 : StackLang.HolProg 64 :=
.seq RemovedBody745_69 RemovedBody745_94

def RemovedBody745_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody745_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody745_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody745_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody745_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody745_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody745_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody745_103 : StackLang.HolProg 64 :=
.seq RemovedBody745_101 RemovedBody745_102

def RemovedBody745_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody745_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody745_106 : StackLang.HolProg 64 :=
.seq RemovedBody745_104 RemovedBody745_105

def RemovedBody745_107 : StackLang.HolProg 64 :=
.seq RemovedBody745_103 RemovedBody745_106

def RemovedBody745_108 : StackLang.HolProg 64 :=
.seq RemovedBody745_100 RemovedBody745_107

def RemovedBody745_109 : StackLang.HolProg 64 :=
.seq RemovedBody745_99 RemovedBody745_108

def RemovedBody745_110 : StackLang.HolProg 64 :=
.seq RemovedBody745_98 RemovedBody745_109

def RemovedBody745_111 : StackLang.HolProg 64 :=
.seq RemovedBody745_97 RemovedBody745_110

def RemovedBody745_112 : StackLang.HolProg 64 :=
.seq RemovedBody745_96 RemovedBody745_111

def RemovedBody745_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody745_114 : StackLang.HolProg 64 :=
.seq RemovedBody745_112 RemovedBody745_113

def RemovedBody745_115 : StackLang.HolProg 64 :=
.call (some (RemovedBody745_95, 0, 745, 2)) (Sum.inl 723) (some (RemovedBody745_114, 745, 3))

def RemovedBody745_116 : StackLang.HolProg 64 :=
.seq RemovedBody745_68 RemovedBody745_115

def RemovedBody745_117 : StackLang.HolProg 64 :=
.seq RemovedBody745_67 RemovedBody745_116

def RemovedBody745_118 : StackLang.HolProg 64 :=
.seq RemovedBody745_66 RemovedBody745_117

def RemovedBody745_119 : StackLang.HolProg 64 :=
.seq RemovedBody745_37 RemovedBody745_118

def RemovedBody745_120 : StackLang.HolProg 64 :=
.seq RemovedBody745_34 RemovedBody745_119

def RemovedBody745_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody745_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody745_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody745_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody745_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody745_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def RemovedBody745_129 : StackLang.HolProg 64 :=
.seq RemovedBody745_127 RemovedBody745_128

def RemovedBody745_130 : StackLang.HolProg 64 :=
.seq RemovedBody745_126 RemovedBody745_129

def RemovedBody745_131 : StackLang.HolProg 64 :=
.seq RemovedBody745_125 RemovedBody745_130

def RemovedBody745_132 : StackLang.HolProg 64 :=
.seq RemovedBody745_124 RemovedBody745_131

def RemovedBody745_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_134 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody745_132 RemovedBody745_133

def RemovedBody745_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody745_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody745_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody745_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody745_139 : StackLang.HolProg 64 :=
.seq RemovedBody745_137 RemovedBody745_138

def RemovedBody745_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3305#64)

def RemovedBody745_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody745_143 : StackLang.HolProg 64 :=
.seq RemovedBody745_141 RemovedBody745_142

def RemovedBody745_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody745_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody745_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody745_147 : StackLang.HolProg 64 :=
.seq RemovedBody745_145 RemovedBody745_146

def RemovedBody745_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_149 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody745_147 RemovedBody745_148

def RemovedBody745_150 : StackLang.HolProg 64 :=
.seq RemovedBody745_144 RemovedBody745_149

def RemovedBody745_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody745_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody745_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 745 5

def RemovedBody745_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody745_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody745_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody745_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody745_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody745_160 : StackLang.HolProg 64 :=
.seq RemovedBody745_158 RemovedBody745_159

def RemovedBody745_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody745_162 : StackLang.HolProg 64 :=
.seq RemovedBody745_160 RemovedBody745_161

def RemovedBody745_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody745_164 : StackLang.HolProg 64 :=
.seq RemovedBody745_162 RemovedBody745_163

def RemovedBody745_165 : StackLang.HolProg 64 :=
.seq RemovedBody745_157 RemovedBody745_164

def RemovedBody745_166 : StackLang.HolProg 64 :=
.seq RemovedBody745_156 RemovedBody745_165

def RemovedBody745_167 : StackLang.HolProg 64 :=
.seq RemovedBody745_155 RemovedBody745_166

def RemovedBody745_168 : StackLang.HolProg 64 :=
.seq RemovedBody745_154 RemovedBody745_167

def RemovedBody745_169 : StackLang.HolProg 64 :=
.seq RemovedBody745_153 RemovedBody745_168

def RemovedBody745_170 : StackLang.HolProg 64 :=
.seq RemovedBody745_152 RemovedBody745_169

def RemovedBody745_171 : StackLang.HolProg 64 :=
.seq RemovedBody745_151 RemovedBody745_170

def RemovedBody745_172 : StackLang.HolProg 64 :=
.seq RemovedBody745_150 RemovedBody745_171

def RemovedBody745_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody745_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody745_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody745_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody745_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody745_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody745_182 : StackLang.HolProg 64 :=
.seq RemovedBody745_180 RemovedBody745_181

def RemovedBody745_183 : StackLang.HolProg 64 :=
.seq RemovedBody745_179 RemovedBody745_182

def RemovedBody745_184 : StackLang.HolProg 64 :=
.seq RemovedBody745_178 RemovedBody745_183

def RemovedBody745_185 : StackLang.HolProg 64 :=
.seq RemovedBody745_177 RemovedBody745_184

def RemovedBody745_186 : StackLang.HolProg 64 :=
.seq RemovedBody745_176 RemovedBody745_185

def RemovedBody745_187 : StackLang.HolProg 64 :=
.seq RemovedBody745_175 RemovedBody745_186

def RemovedBody745_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody745_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody745_190 : StackLang.HolProg 64 :=
.seq RemovedBody745_188 RemovedBody745_189

def RemovedBody745_191 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody745_192 : StackLang.HolProg 64 :=
.seq RemovedBody745_190 RemovedBody745_191

def RemovedBody745_193 : StackLang.HolProg 64 :=
.call (some (RemovedBody745_187, 0, 745, 4)) (Sum.inl 705) (some (RemovedBody745_192, 745, 5))

def RemovedBody745_194 : StackLang.HolProg 64 :=
.seq RemovedBody745_174 RemovedBody745_193

def RemovedBody745_195 : StackLang.HolProg 64 :=
.seq RemovedBody745_173 RemovedBody745_194

def RemovedBody745_196 : StackLang.HolProg 64 :=
.seq RemovedBody745_172 RemovedBody745_195

def RemovedBody745_197 : StackLang.HolProg 64 :=
.seq RemovedBody745_143 RemovedBody745_196

def RemovedBody745_198 : StackLang.HolProg 64 :=
.seq RemovedBody745_140 RemovedBody745_197

def RemovedBody745_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody745_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody745_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody745_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody745_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody745_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody745_207 : StackLang.HolProg 64 :=
.seq RemovedBody745_205 RemovedBody745_206

def RemovedBody745_208 : StackLang.HolProg 64 :=
.seq RemovedBody745_204 RemovedBody745_207

def RemovedBody745_209 : StackLang.HolProg 64 :=
.seq RemovedBody745_203 RemovedBody745_208

def RemovedBody745_210 : StackLang.HolProg 64 :=
.seq RemovedBody745_202 RemovedBody745_209

def RemovedBody745_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody745_210 RemovedBody745_211

def RemovedBody745_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody745_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody745_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 48#64))

def RemovedBody745_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 56#64))

def RemovedBody745_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 64#64))

def RemovedBody745_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 72#64))

def RemovedBody745_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 80#64))

def RemovedBody745_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 88#64))

def RemovedBody745_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody745_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody745_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 723

def RemovedBody745_231 : StackLang.HolProg 64 :=
.seq RemovedBody745_229 RemovedBody745_230

def RemovedBody745_232 : StackLang.HolProg 64 :=
.seq RemovedBody745_228 RemovedBody745_231

def RemovedBody745_233 : StackLang.HolProg 64 :=
.seq RemovedBody745_227 RemovedBody745_232

def RemovedBody745_234 : StackLang.HolProg 64 :=
.seq RemovedBody745_226 RemovedBody745_233

def RemovedBody745_235 : StackLang.HolProg 64 :=
.seq RemovedBody745_225 RemovedBody745_234

def RemovedBody745_236 : StackLang.HolProg 64 :=
.seq RemovedBody745_224 RemovedBody745_235

def RemovedBody745_237 : StackLang.HolProg 64 :=
.seq RemovedBody745_223 RemovedBody745_236

def RemovedBody745_238 : StackLang.HolProg 64 :=
.seq RemovedBody745_222 RemovedBody745_237

def RemovedBody745_239 : StackLang.HolProg 64 :=
.seq RemovedBody745_221 RemovedBody745_238

def RemovedBody745_240 : StackLang.HolProg 64 :=
.seq RemovedBody745_220 RemovedBody745_239

def RemovedBody745_241 : StackLang.HolProg 64 :=
.seq RemovedBody745_219 RemovedBody745_240

def RemovedBody745_242 : StackLang.HolProg 64 :=
.seq RemovedBody745_218 RemovedBody745_241

def RemovedBody745_243 : StackLang.HolProg 64 :=
.seq RemovedBody745_217 RemovedBody745_242

def RemovedBody745_244 : StackLang.HolProg 64 :=
.seq RemovedBody745_216 RemovedBody745_243

def RemovedBody745_245 : StackLang.HolProg 64 :=
.seq RemovedBody745_215 RemovedBody745_244

def RemovedBody745_246 : StackLang.HolProg 64 :=
.seq RemovedBody745_214 RemovedBody745_245

def RemovedBody745_247 : StackLang.HolProg 64 :=
.seq RemovedBody745_213 RemovedBody745_246

def RemovedBody745_248 : StackLang.HolProg 64 :=
.seq RemovedBody745_212 RemovedBody745_247

def RemovedBody745_249 : StackLang.HolProg 64 :=
.seq RemovedBody745_201 RemovedBody745_248

def RemovedBody745_250 : StackLang.HolProg 64 :=
.seq RemovedBody745_200 RemovedBody745_249

def RemovedBody745_251 : StackLang.HolProg 64 :=
.seq RemovedBody745_199 RemovedBody745_250

def RemovedBody745_252 : StackLang.HolProg 64 :=
.seq RemovedBody745_198 RemovedBody745_251

def RemovedBody745_253 : StackLang.HolProg 64 :=
.seq RemovedBody745_139 RemovedBody745_252

def RemovedBody745_254 : StackLang.HolProg 64 :=
.seq RemovedBody745_136 RemovedBody745_253

def RemovedBody745_255 : StackLang.HolProg 64 :=
.seq RemovedBody745_135 RemovedBody745_254

def RemovedBody745_256 : StackLang.HolProg 64 :=
.seq RemovedBody745_134 RemovedBody745_255

def RemovedBody745_257 : StackLang.HolProg 64 :=
.seq RemovedBody745_123 RemovedBody745_256

def RemovedBody745_258 : StackLang.HolProg 64 :=
.seq RemovedBody745_122 RemovedBody745_257

def RemovedBody745_259 : StackLang.HolProg 64 :=
.seq RemovedBody745_121 RemovedBody745_258

def RemovedBody745_260 : StackLang.HolProg 64 :=
.seq RemovedBody745_120 RemovedBody745_259

def RemovedBody745_261 : StackLang.HolProg 64 :=
.seq RemovedBody745_33 RemovedBody745_260

def RemovedBody745_262 : StackLang.HolProg 64 :=
.seq RemovedBody745_18 RemovedBody745_261

def RemovedBody745_263 : StackLang.HolProg 64 :=
.seq RemovedBody745_17 RemovedBody745_262

def RemovedBody745_264 : StackLang.HolProg 64 :=
.seq RemovedBody745_16 RemovedBody745_263

def RemovedBody745_265 : StackLang.HolProg 64 :=
.seq RemovedBody745_15 RemovedBody745_264

def RemovedBody745_266 : StackLang.HolProg 64 :=
.seq RemovedBody745_14 RemovedBody745_265

def RemovedBody745_267 : StackLang.HolProg 64 :=
.seq RemovedBody745_13 RemovedBody745_266

def RemovedBody745_268 : StackLang.HolProg 64 :=
.seq RemovedBody745_12 RemovedBody745_267

def RemovedBody745_269 : StackLang.HolProg 64 :=
.seq RemovedBody745_11 RemovedBody745_268

def RemovedBody745_270 : StackLang.HolProg 64 :=
.seq RemovedBody745_10 RemovedBody745_269

def RemovedBody745_271 : StackLang.HolProg 64 :=
.seq RemovedBody745_9 RemovedBody745_270

def RemovedBody745_272 : StackLang.HolProg 64 :=
.seq RemovedBody745_8 RemovedBody745_271

def RemovedBody745_273 : StackLang.HolProg 64 :=
.seq RemovedBody745_7 RemovedBody745_272

def RemovedBody745_274 : StackLang.HolProg 64 :=
.seq RemovedBody745_6 RemovedBody745_273

def Removed745 : Nat × StackLang.HolProg 64 := (745, RemovedBody745_274)
theorem Removed745_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc745 = Removed745 := by
  kernel_rfl
#print axioms Removed745_eq
end InitECandidate.Proofs.BackendStages
