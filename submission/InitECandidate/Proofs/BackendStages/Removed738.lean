import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc738
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody738_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody738_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody738_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody738_3 : StackLang.HolProg 64 :=
.seq RemovedBody738_1 RemovedBody738_2

def RemovedBody738_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody738_3 RemovedBody738_4

def RemovedBody738_6 : StackLang.HolProg 64 :=
.seq RemovedBody738_0 RemovedBody738_5

def RemovedBody738_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody738_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody738_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody738_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 8#64))

def RemovedBody738_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 16#64))

def RemovedBody738_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 24#64))

def RemovedBody738_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 32#64))

def RemovedBody738_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 40#64))

def RemovedBody738_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 48#64))

def RemovedBody738_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 56#64))

def RemovedBody738_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 64#64))

def RemovedBody738_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 72#64))

def RemovedBody738_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 80#64))

def RemovedBody738_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 88#64))

def RemovedBody738_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody738_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody738_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody738_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody738_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody738_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody738_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody738_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody738_39 : StackLang.HolProg 64 :=
.seq RemovedBody738_37 RemovedBody738_38

def RemovedBody738_40 : StackLang.HolProg 64 :=
.seq RemovedBody738_36 RemovedBody738_39

def RemovedBody738_41 : StackLang.HolProg 64 :=
.seq RemovedBody738_35 RemovedBody738_40

def RemovedBody738_42 : StackLang.HolProg 64 :=
.seq RemovedBody738_34 RemovedBody738_41

def RemovedBody738_43 : StackLang.HolProg 64 :=
.seq RemovedBody738_33 RemovedBody738_42

def RemovedBody738_44 : StackLang.HolProg 64 :=
.seq RemovedBody738_32 RemovedBody738_43

def RemovedBody738_45 : StackLang.HolProg 64 :=
.seq RemovedBody738_31 RemovedBody738_44

def RemovedBody738_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3270#64)

def RemovedBody738_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody738_49 : StackLang.HolProg 64 :=
.seq RemovedBody738_47 RemovedBody738_48

def RemovedBody738_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody738_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody738_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody738_53 : StackLang.HolProg 64 :=
.seq RemovedBody738_51 RemovedBody738_52

def RemovedBody738_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_55 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody738_53 RemovedBody738_54

def RemovedBody738_56 : StackLang.HolProg 64 :=
.seq RemovedBody738_50 RemovedBody738_55

def RemovedBody738_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody738_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody738_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 738 3

def RemovedBody738_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody738_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody738_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody738_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody738_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody738_66 : StackLang.HolProg 64 :=
.seq RemovedBody738_64 RemovedBody738_65

def RemovedBody738_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody738_68 : StackLang.HolProg 64 :=
.seq RemovedBody738_66 RemovedBody738_67

def RemovedBody738_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody738_70 : StackLang.HolProg 64 :=
.seq RemovedBody738_68 RemovedBody738_69

def RemovedBody738_71 : StackLang.HolProg 64 :=
.seq RemovedBody738_63 RemovedBody738_70

def RemovedBody738_72 : StackLang.HolProg 64 :=
.seq RemovedBody738_62 RemovedBody738_71

def RemovedBody738_73 : StackLang.HolProg 64 :=
.seq RemovedBody738_61 RemovedBody738_72

def RemovedBody738_74 : StackLang.HolProg 64 :=
.seq RemovedBody738_60 RemovedBody738_73

def RemovedBody738_75 : StackLang.HolProg 64 :=
.seq RemovedBody738_59 RemovedBody738_74

def RemovedBody738_76 : StackLang.HolProg 64 :=
.seq RemovedBody738_58 RemovedBody738_75

def RemovedBody738_77 : StackLang.HolProg 64 :=
.seq RemovedBody738_57 RemovedBody738_76

def RemovedBody738_78 : StackLang.HolProg 64 :=
.seq RemovedBody738_56 RemovedBody738_77

def RemovedBody738_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody738_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody738_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody738_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody738_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody738_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody738_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody738_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody738_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody738_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody738_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody738_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody738_94 : StackLang.HolProg 64 :=
.seq RemovedBody738_92 RemovedBody738_93

def RemovedBody738_95 : StackLang.HolProg 64 :=
.seq RemovedBody738_91 RemovedBody738_94

def RemovedBody738_96 : StackLang.HolProg 64 :=
.seq RemovedBody738_90 RemovedBody738_95

def RemovedBody738_97 : StackLang.HolProg 64 :=
.seq RemovedBody738_89 RemovedBody738_96

def RemovedBody738_98 : StackLang.HolProg 64 :=
.seq RemovedBody738_88 RemovedBody738_97

def RemovedBody738_99 : StackLang.HolProg 64 :=
.seq RemovedBody738_87 RemovedBody738_98

def RemovedBody738_100 : StackLang.HolProg 64 :=
.seq RemovedBody738_86 RemovedBody738_99

def RemovedBody738_101 : StackLang.HolProg 64 :=
.seq RemovedBody738_85 RemovedBody738_100

def RemovedBody738_102 : StackLang.HolProg 64 :=
.seq RemovedBody738_84 RemovedBody738_101

def RemovedBody738_103 : StackLang.HolProg 64 :=
.seq RemovedBody738_83 RemovedBody738_102

def RemovedBody738_104 : StackLang.HolProg 64 :=
.seq RemovedBody738_82 RemovedBody738_103

def RemovedBody738_105 : StackLang.HolProg 64 :=
.seq RemovedBody738_81 RemovedBody738_104

def RemovedBody738_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody738_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody738_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody738_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody738_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody738_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody738_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody738_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody738_114 : StackLang.HolProg 64 :=
.seq RemovedBody738_112 RemovedBody738_113

def RemovedBody738_115 : StackLang.HolProg 64 :=
.seq RemovedBody738_111 RemovedBody738_114

def RemovedBody738_116 : StackLang.HolProg 64 :=
.seq RemovedBody738_110 RemovedBody738_115

def RemovedBody738_117 : StackLang.HolProg 64 :=
.seq RemovedBody738_109 RemovedBody738_116

def RemovedBody738_118 : StackLang.HolProg 64 :=
.seq RemovedBody738_108 RemovedBody738_117

def RemovedBody738_119 : StackLang.HolProg 64 :=
.seq RemovedBody738_107 RemovedBody738_118

def RemovedBody738_120 : StackLang.HolProg 64 :=
.seq RemovedBody738_106 RemovedBody738_119

def RemovedBody738_121 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody738_122 : StackLang.HolProg 64 :=
.seq RemovedBody738_120 RemovedBody738_121

def RemovedBody738_123 : StackLang.HolProg 64 :=
.call (some (RemovedBody738_105, 0, 738, 2)) (Sum.inl 712) (some (RemovedBody738_122, 738, 3))

def RemovedBody738_124 : StackLang.HolProg 64 :=
.seq RemovedBody738_80 RemovedBody738_123

def RemovedBody738_125 : StackLang.HolProg 64 :=
.seq RemovedBody738_79 RemovedBody738_124

def RemovedBody738_126 : StackLang.HolProg 64 :=
.seq RemovedBody738_78 RemovedBody738_125

def RemovedBody738_127 : StackLang.HolProg 64 :=
.seq RemovedBody738_49 RemovedBody738_126

def RemovedBody738_128 : StackLang.HolProg 64 :=
.seq RemovedBody738_46 RemovedBody738_127

def RemovedBody738_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody738_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def RemovedBody738_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 8#64))

def RemovedBody738_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 16#64))

def RemovedBody738_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 24#64))

def RemovedBody738_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 32#64))

def RemovedBody738_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 40#64))

def RemovedBody738_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody738_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody738_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody738_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody738_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody738_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody738_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def RemovedBody738_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody738_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody738_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody738_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 14

def RemovedBody738_160 : StackLang.HolProg 64 :=
.seq RemovedBody738_158 RemovedBody738_159

def RemovedBody738_161 : StackLang.HolProg 64 :=
.seq RemovedBody738_157 RemovedBody738_160

def RemovedBody738_162 : StackLang.HolProg 64 :=
.seq RemovedBody738_156 RemovedBody738_161

def RemovedBody738_163 : StackLang.HolProg 64 :=
.seq RemovedBody738_155 RemovedBody738_162

def RemovedBody738_164 : StackLang.HolProg 64 :=
.seq RemovedBody738_154 RemovedBody738_163

def RemovedBody738_165 : StackLang.HolProg 64 :=
.seq RemovedBody738_153 RemovedBody738_164

def RemovedBody738_166 : StackLang.HolProg 64 :=
.seq RemovedBody738_152 RemovedBody738_165

def RemovedBody738_167 : StackLang.HolProg 64 :=
.seq RemovedBody738_151 RemovedBody738_166

def RemovedBody738_168 : StackLang.HolProg 64 :=
.seq RemovedBody738_150 RemovedBody738_167

def RemovedBody738_169 : StackLang.HolProg 64 :=
.seq RemovedBody738_149 RemovedBody738_168

def RemovedBody738_170 : StackLang.HolProg 64 :=
.seq RemovedBody738_148 RemovedBody738_169

def RemovedBody738_171 : StackLang.HolProg 64 :=
.seq RemovedBody738_147 RemovedBody738_170

def RemovedBody738_172 : StackLang.HolProg 64 :=
.seq RemovedBody738_146 RemovedBody738_171

def RemovedBody738_173 : StackLang.HolProg 64 :=
.seq RemovedBody738_145 RemovedBody738_172

def RemovedBody738_174 : StackLang.HolProg 64 :=
.seq RemovedBody738_144 RemovedBody738_173

def RemovedBody738_175 : StackLang.HolProg 64 :=
.seq RemovedBody738_143 RemovedBody738_174

def RemovedBody738_176 : StackLang.HolProg 64 :=
.seq RemovedBody738_142 RemovedBody738_175

def RemovedBody738_177 : StackLang.HolProg 64 :=
.seq RemovedBody738_141 RemovedBody738_176

def RemovedBody738_178 : StackLang.HolProg 64 :=
.seq RemovedBody738_140 RemovedBody738_177

def RemovedBody738_179 : StackLang.HolProg 64 :=
.seq RemovedBody738_139 RemovedBody738_178

def RemovedBody738_180 : StackLang.HolProg 64 :=
.seq RemovedBody738_138 RemovedBody738_179

def RemovedBody738_181 : StackLang.HolProg 64 :=
.seq RemovedBody738_137 RemovedBody738_180

def RemovedBody738_182 : StackLang.HolProg 64 :=
.seq RemovedBody738_136 RemovedBody738_181

def RemovedBody738_183 : StackLang.HolProg 64 :=
.seq RemovedBody738_135 RemovedBody738_182

def RemovedBody738_184 : StackLang.HolProg 64 :=
.seq RemovedBody738_134 RemovedBody738_183

def RemovedBody738_185 : StackLang.HolProg 64 :=
.seq RemovedBody738_133 RemovedBody738_184

def RemovedBody738_186 : StackLang.HolProg 64 :=
.seq RemovedBody738_132 RemovedBody738_185

def RemovedBody738_187 : StackLang.HolProg 64 :=
.seq RemovedBody738_131 RemovedBody738_186

def RemovedBody738_188 : StackLang.HolProg 64 :=
.seq RemovedBody738_130 RemovedBody738_187

def RemovedBody738_189 : StackLang.HolProg 64 :=
.seq RemovedBody738_129 RemovedBody738_188

def RemovedBody738_190 : StackLang.HolProg 64 :=
.seq RemovedBody738_128 RemovedBody738_189

def RemovedBody738_191 : StackLang.HolProg 64 :=
.seq RemovedBody738_45 RemovedBody738_190

def RemovedBody738_192 : StackLang.HolProg 64 :=
.seq RemovedBody738_30 RemovedBody738_191

def RemovedBody738_193 : StackLang.HolProg 64 :=
.seq RemovedBody738_29 RemovedBody738_192

def RemovedBody738_194 : StackLang.HolProg 64 :=
.seq RemovedBody738_28 RemovedBody738_193

def RemovedBody738_195 : StackLang.HolProg 64 :=
.seq RemovedBody738_27 RemovedBody738_194

def RemovedBody738_196 : StackLang.HolProg 64 :=
.seq RemovedBody738_26 RemovedBody738_195

def RemovedBody738_197 : StackLang.HolProg 64 :=
.seq RemovedBody738_25 RemovedBody738_196

def RemovedBody738_198 : StackLang.HolProg 64 :=
.seq RemovedBody738_24 RemovedBody738_197

def RemovedBody738_199 : StackLang.HolProg 64 :=
.seq RemovedBody738_23 RemovedBody738_198

def RemovedBody738_200 : StackLang.HolProg 64 :=
.seq RemovedBody738_22 RemovedBody738_199

def RemovedBody738_201 : StackLang.HolProg 64 :=
.seq RemovedBody738_21 RemovedBody738_200

def RemovedBody738_202 : StackLang.HolProg 64 :=
.seq RemovedBody738_20 RemovedBody738_201

def RemovedBody738_203 : StackLang.HolProg 64 :=
.seq RemovedBody738_19 RemovedBody738_202

def RemovedBody738_204 : StackLang.HolProg 64 :=
.seq RemovedBody738_18 RemovedBody738_203

def RemovedBody738_205 : StackLang.HolProg 64 :=
.seq RemovedBody738_17 RemovedBody738_204

def RemovedBody738_206 : StackLang.HolProg 64 :=
.seq RemovedBody738_16 RemovedBody738_205

def RemovedBody738_207 : StackLang.HolProg 64 :=
.seq RemovedBody738_15 RemovedBody738_206

def RemovedBody738_208 : StackLang.HolProg 64 :=
.seq RemovedBody738_14 RemovedBody738_207

def RemovedBody738_209 : StackLang.HolProg 64 :=
.seq RemovedBody738_13 RemovedBody738_208

def RemovedBody738_210 : StackLang.HolProg 64 :=
.seq RemovedBody738_12 RemovedBody738_209

def RemovedBody738_211 : StackLang.HolProg 64 :=
.seq RemovedBody738_11 RemovedBody738_210

def RemovedBody738_212 : StackLang.HolProg 64 :=
.seq RemovedBody738_10 RemovedBody738_211

def RemovedBody738_213 : StackLang.HolProg 64 :=
.seq RemovedBody738_9 RemovedBody738_212

def RemovedBody738_214 : StackLang.HolProg 64 :=
.seq RemovedBody738_8 RemovedBody738_213

def RemovedBody738_215 : StackLang.HolProg 64 :=
.seq RemovedBody738_7 RemovedBody738_214

def RemovedBody738_216 : StackLang.HolProg 64 :=
.seq RemovedBody738_6 RemovedBody738_215

def Removed738 : Nat × StackLang.HolProg 64 := (738, RemovedBody738_216)
theorem Removed738_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc738 = Removed738 := by
  kernel_rfl
#print axioms Removed738_eq
end InitECandidate.Proofs.BackendStages
