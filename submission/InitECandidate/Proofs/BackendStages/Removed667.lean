import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc667
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody667_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody667_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody667_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody667_3 : StackLang.HolProg 64 :=
.seq RemovedBody667_1 RemovedBody667_2

def RemovedBody667_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody667_3 RemovedBody667_4

def RemovedBody667_6 : StackLang.HolProg 64 :=
.seq RemovedBody667_0 RemovedBody667_5

def RemovedBody667_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 11#64)

def RemovedBody667_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody667_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody667_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody667_12 : StackLang.HolProg 64 :=
.seq RemovedBody667_10 RemovedBody667_11

def RemovedBody667_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody667_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody667_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody667_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def RemovedBody667_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody667_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody667_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody667_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody667_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody667_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody667_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody667_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody667_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody667_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 82#64)

def RemovedBody667_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody667_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody667_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_37 : StackLang.HolProg 64 :=
.seq RemovedBody667_35 RemovedBody667_36

def RemovedBody667_38 : StackLang.HolProg 64 :=
.seq RemovedBody667_34 RemovedBody667_37

def RemovedBody667_39 : StackLang.HolProg 64 :=
.seq RemovedBody667_33 RemovedBody667_38

def RemovedBody667_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2762#64)

def RemovedBody667_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody667_43 : StackLang.HolProg 64 :=
.seq RemovedBody667_41 RemovedBody667_42

def RemovedBody667_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody667_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody667_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody667_47 : StackLang.HolProg 64 :=
.seq RemovedBody667_45 RemovedBody667_46

def RemovedBody667_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_49 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody667_47 RemovedBody667_48

def RemovedBody667_50 : StackLang.HolProg 64 :=
.seq RemovedBody667_44 RemovedBody667_49

def RemovedBody667_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody667_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody667_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 3

def RemovedBody667_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody667_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody667_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody667_60 : StackLang.HolProg 64 :=
.seq RemovedBody667_58 RemovedBody667_59

def RemovedBody667_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody667_62 : StackLang.HolProg 64 :=
.seq RemovedBody667_60 RemovedBody667_61

def RemovedBody667_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody667_64 : StackLang.HolProg 64 :=
.seq RemovedBody667_62 RemovedBody667_63

def RemovedBody667_65 : StackLang.HolProg 64 :=
.seq RemovedBody667_57 RemovedBody667_64

def RemovedBody667_66 : StackLang.HolProg 64 :=
.seq RemovedBody667_56 RemovedBody667_65

def RemovedBody667_67 : StackLang.HolProg 64 :=
.seq RemovedBody667_55 RemovedBody667_66

def RemovedBody667_68 : StackLang.HolProg 64 :=
.seq RemovedBody667_54 RemovedBody667_67

def RemovedBody667_69 : StackLang.HolProg 64 :=
.seq RemovedBody667_53 RemovedBody667_68

def RemovedBody667_70 : StackLang.HolProg 64 :=
.seq RemovedBody667_52 RemovedBody667_69

def RemovedBody667_71 : StackLang.HolProg 64 :=
.seq RemovedBody667_51 RemovedBody667_70

def RemovedBody667_72 : StackLang.HolProg 64 :=
.seq RemovedBody667_50 RemovedBody667_71

def RemovedBody667_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody667_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody667_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody667_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody667_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody667_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody667_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody667_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody667_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_87 : StackLang.HolProg 64 :=
.seq RemovedBody667_85 RemovedBody667_86

def RemovedBody667_88 : StackLang.HolProg 64 :=
.seq RemovedBody667_84 RemovedBody667_87

def RemovedBody667_89 : StackLang.HolProg 64 :=
.seq RemovedBody667_83 RemovedBody667_88

def RemovedBody667_90 : StackLang.HolProg 64 :=
.seq RemovedBody667_82 RemovedBody667_89

def RemovedBody667_91 : StackLang.HolProg 64 :=
.seq RemovedBody667_81 RemovedBody667_90

def RemovedBody667_92 : StackLang.HolProg 64 :=
.seq RemovedBody667_80 RemovedBody667_91

def RemovedBody667_93 : StackLang.HolProg 64 :=
.seq RemovedBody667_79 RemovedBody667_92

def RemovedBody667_94 : StackLang.HolProg 64 :=
.seq RemovedBody667_78 RemovedBody667_93

def RemovedBody667_95 : StackLang.HolProg 64 :=
.seq RemovedBody667_77 RemovedBody667_94

def RemovedBody667_96 : StackLang.HolProg 64 :=
.seq RemovedBody667_76 RemovedBody667_95

def RemovedBody667_97 : StackLang.HolProg 64 :=
.seq RemovedBody667_75 RemovedBody667_96

def RemovedBody667_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody667_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody667_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_102 : StackLang.HolProg 64 :=
.seq RemovedBody667_100 RemovedBody667_101

def RemovedBody667_103 : StackLang.HolProg 64 :=
.seq RemovedBody667_99 RemovedBody667_102

def RemovedBody667_104 : StackLang.HolProg 64 :=
.seq RemovedBody667_98 RemovedBody667_103

def RemovedBody667_105 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody667_106 : StackLang.HolProg 64 :=
.seq RemovedBody667_104 RemovedBody667_105

def RemovedBody667_107 : StackLang.HolProg 64 :=
.call (some (RemovedBody667_97, 0, 667, 2)) (Sum.inl 665) (some (RemovedBody667_106, 667, 3))

def RemovedBody667_108 : StackLang.HolProg 64 :=
.seq RemovedBody667_74 RemovedBody667_107

def RemovedBody667_109 : StackLang.HolProg 64 :=
.seq RemovedBody667_73 RemovedBody667_108

def RemovedBody667_110 : StackLang.HolProg 64 :=
.seq RemovedBody667_72 RemovedBody667_109

def RemovedBody667_111 : StackLang.HolProg 64 :=
.seq RemovedBody667_43 RemovedBody667_110

def RemovedBody667_112 : StackLang.HolProg 64 :=
.seq RemovedBody667_40 RemovedBody667_111

def RemovedBody667_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody667_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody667_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18#64)

def RemovedBody667_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody667_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody667_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_120 : StackLang.HolProg 64 :=
.seq RemovedBody667_118 RemovedBody667_119

def RemovedBody667_121 : StackLang.HolProg 64 :=
.seq RemovedBody667_117 RemovedBody667_120

def RemovedBody667_122 : StackLang.HolProg 64 :=
.seq RemovedBody667_116 RemovedBody667_121

def RemovedBody667_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2763#64)

def RemovedBody667_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody667_126 : StackLang.HolProg 64 :=
.seq RemovedBody667_124 RemovedBody667_125

def RemovedBody667_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody667_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody667_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody667_130 : StackLang.HolProg 64 :=
.seq RemovedBody667_128 RemovedBody667_129

def RemovedBody667_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody667_130 RemovedBody667_131

def RemovedBody667_133 : StackLang.HolProg 64 :=
.seq RemovedBody667_127 RemovedBody667_132

def RemovedBody667_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody667_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody667_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 5

def RemovedBody667_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody667_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody667_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody667_143 : StackLang.HolProg 64 :=
.seq RemovedBody667_141 RemovedBody667_142

def RemovedBody667_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody667_145 : StackLang.HolProg 64 :=
.seq RemovedBody667_143 RemovedBody667_144

def RemovedBody667_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody667_147 : StackLang.HolProg 64 :=
.seq RemovedBody667_145 RemovedBody667_146

def RemovedBody667_148 : StackLang.HolProg 64 :=
.seq RemovedBody667_140 RemovedBody667_147

def RemovedBody667_149 : StackLang.HolProg 64 :=
.seq RemovedBody667_139 RemovedBody667_148

def RemovedBody667_150 : StackLang.HolProg 64 :=
.seq RemovedBody667_138 RemovedBody667_149

def RemovedBody667_151 : StackLang.HolProg 64 :=
.seq RemovedBody667_137 RemovedBody667_150

def RemovedBody667_152 : StackLang.HolProg 64 :=
.seq RemovedBody667_136 RemovedBody667_151

def RemovedBody667_153 : StackLang.HolProg 64 :=
.seq RemovedBody667_135 RemovedBody667_152

def RemovedBody667_154 : StackLang.HolProg 64 :=
.seq RemovedBody667_134 RemovedBody667_153

def RemovedBody667_155 : StackLang.HolProg 64 :=
.seq RemovedBody667_133 RemovedBody667_154

def RemovedBody667_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody667_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody667_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody667_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody667_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody667_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody667_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody667_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody667_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody667_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody667_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_172 : StackLang.HolProg 64 :=
.seq RemovedBody667_170 RemovedBody667_171

def RemovedBody667_173 : StackLang.HolProg 64 :=
.seq RemovedBody667_169 RemovedBody667_172

def RemovedBody667_174 : StackLang.HolProg 64 :=
.seq RemovedBody667_168 RemovedBody667_173

def RemovedBody667_175 : StackLang.HolProg 64 :=
.seq RemovedBody667_167 RemovedBody667_174

def RemovedBody667_176 : StackLang.HolProg 64 :=
.seq RemovedBody667_166 RemovedBody667_175

def RemovedBody667_177 : StackLang.HolProg 64 :=
.seq RemovedBody667_165 RemovedBody667_176

def RemovedBody667_178 : StackLang.HolProg 64 :=
.seq RemovedBody667_164 RemovedBody667_177

def RemovedBody667_179 : StackLang.HolProg 64 :=
.seq RemovedBody667_163 RemovedBody667_178

def RemovedBody667_180 : StackLang.HolProg 64 :=
.seq RemovedBody667_162 RemovedBody667_179

def RemovedBody667_181 : StackLang.HolProg 64 :=
.seq RemovedBody667_161 RemovedBody667_180

def RemovedBody667_182 : StackLang.HolProg 64 :=
.seq RemovedBody667_160 RemovedBody667_181

def RemovedBody667_183 : StackLang.HolProg 64 :=
.seq RemovedBody667_159 RemovedBody667_182

def RemovedBody667_184 : StackLang.HolProg 64 :=
.seq RemovedBody667_158 RemovedBody667_183

def RemovedBody667_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody667_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody667_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody667_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody667_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_191 : StackLang.HolProg 64 :=
.seq RemovedBody667_189 RemovedBody667_190

def RemovedBody667_192 : StackLang.HolProg 64 :=
.seq RemovedBody667_188 RemovedBody667_191

def RemovedBody667_193 : StackLang.HolProg 64 :=
.seq RemovedBody667_187 RemovedBody667_192

def RemovedBody667_194 : StackLang.HolProg 64 :=
.seq RemovedBody667_186 RemovedBody667_193

def RemovedBody667_195 : StackLang.HolProg 64 :=
.seq RemovedBody667_185 RemovedBody667_194

def RemovedBody667_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody667_197 : StackLang.HolProg 64 :=
.seq RemovedBody667_195 RemovedBody667_196

def RemovedBody667_198 : StackLang.HolProg 64 :=
.call (some (RemovedBody667_184, 0, 667, 4)) (Sum.inl 665) (some (RemovedBody667_197, 667, 5))

def RemovedBody667_199 : StackLang.HolProg 64 :=
.seq RemovedBody667_157 RemovedBody667_198

def RemovedBody667_200 : StackLang.HolProg 64 :=
.seq RemovedBody667_156 RemovedBody667_199

def RemovedBody667_201 : StackLang.HolProg 64 :=
.seq RemovedBody667_155 RemovedBody667_200

def RemovedBody667_202 : StackLang.HolProg 64 :=
.seq RemovedBody667_126 RemovedBody667_201

def RemovedBody667_203 : StackLang.HolProg 64 :=
.seq RemovedBody667_123 RemovedBody667_202

def RemovedBody667_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody667_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody667_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody667_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody667_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody667_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody667_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody667_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody667_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody667_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody667_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody667_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody667_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_221 : StackLang.HolProg 64 :=
.seq RemovedBody667_219 RemovedBody667_220

def RemovedBody667_222 : StackLang.HolProg 64 :=
.seq RemovedBody667_218 RemovedBody667_221

def RemovedBody667_223 : StackLang.HolProg 64 :=
.seq RemovedBody667_217 RemovedBody667_222

def RemovedBody667_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2764#64)

def RemovedBody667_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody667_227 : StackLang.HolProg 64 :=
.seq RemovedBody667_225 RemovedBody667_226

def RemovedBody667_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody667_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody667_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody667_231 : StackLang.HolProg 64 :=
.seq RemovedBody667_229 RemovedBody667_230

def RemovedBody667_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_233 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody667_231 RemovedBody667_232

def RemovedBody667_234 : StackLang.HolProg 64 :=
.seq RemovedBody667_228 RemovedBody667_233

def RemovedBody667_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody667_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody667_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 7

def RemovedBody667_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody667_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody667_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody667_244 : StackLang.HolProg 64 :=
.seq RemovedBody667_242 RemovedBody667_243

def RemovedBody667_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody667_246 : StackLang.HolProg 64 :=
.seq RemovedBody667_244 RemovedBody667_245

def RemovedBody667_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody667_248 : StackLang.HolProg 64 :=
.seq RemovedBody667_246 RemovedBody667_247

def RemovedBody667_249 : StackLang.HolProg 64 :=
.seq RemovedBody667_241 RemovedBody667_248

def RemovedBody667_250 : StackLang.HolProg 64 :=
.seq RemovedBody667_240 RemovedBody667_249

def RemovedBody667_251 : StackLang.HolProg 64 :=
.seq RemovedBody667_239 RemovedBody667_250

def RemovedBody667_252 : StackLang.HolProg 64 :=
.seq RemovedBody667_238 RemovedBody667_251

def RemovedBody667_253 : StackLang.HolProg 64 :=
.seq RemovedBody667_237 RemovedBody667_252

def RemovedBody667_254 : StackLang.HolProg 64 :=
.seq RemovedBody667_236 RemovedBody667_253

def RemovedBody667_255 : StackLang.HolProg 64 :=
.seq RemovedBody667_235 RemovedBody667_254

def RemovedBody667_256 : StackLang.HolProg 64 :=
.seq RemovedBody667_234 RemovedBody667_255

def RemovedBody667_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody667_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody667_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody667_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody667_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody667_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody667_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody667_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_270 : StackLang.HolProg 64 :=
.seq RemovedBody667_268 RemovedBody667_269

def RemovedBody667_271 : StackLang.HolProg 64 :=
.seq RemovedBody667_267 RemovedBody667_270

def RemovedBody667_272 : StackLang.HolProg 64 :=
.seq RemovedBody667_266 RemovedBody667_271

def RemovedBody667_273 : StackLang.HolProg 64 :=
.seq RemovedBody667_265 RemovedBody667_272

def RemovedBody667_274 : StackLang.HolProg 64 :=
.seq RemovedBody667_264 RemovedBody667_273

def RemovedBody667_275 : StackLang.HolProg 64 :=
.seq RemovedBody667_263 RemovedBody667_274

def RemovedBody667_276 : StackLang.HolProg 64 :=
.seq RemovedBody667_262 RemovedBody667_275

def RemovedBody667_277 : StackLang.HolProg 64 :=
.seq RemovedBody667_261 RemovedBody667_276

def RemovedBody667_278 : StackLang.HolProg 64 :=
.seq RemovedBody667_260 RemovedBody667_277

def RemovedBody667_279 : StackLang.HolProg 64 :=
.seq RemovedBody667_259 RemovedBody667_278

def RemovedBody667_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody667_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody667_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody667_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody667_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_286 : StackLang.HolProg 64 :=
.seq RemovedBody667_284 RemovedBody667_285

def RemovedBody667_287 : StackLang.HolProg 64 :=
.seq RemovedBody667_283 RemovedBody667_286

def RemovedBody667_288 : StackLang.HolProg 64 :=
.seq RemovedBody667_282 RemovedBody667_287

def RemovedBody667_289 : StackLang.HolProg 64 :=
.seq RemovedBody667_281 RemovedBody667_288

def RemovedBody667_290 : StackLang.HolProg 64 :=
.seq RemovedBody667_280 RemovedBody667_289

def RemovedBody667_291 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody667_292 : StackLang.HolProg 64 :=
.seq RemovedBody667_290 RemovedBody667_291

def RemovedBody667_293 : StackLang.HolProg 64 :=
.call (some (RemovedBody667_279, 0, 667, 6)) (Sum.inl 659) (some (RemovedBody667_292, 667, 7))

def RemovedBody667_294 : StackLang.HolProg 64 :=
.seq RemovedBody667_258 RemovedBody667_293

def RemovedBody667_295 : StackLang.HolProg 64 :=
.seq RemovedBody667_257 RemovedBody667_294

def RemovedBody667_296 : StackLang.HolProg 64 :=
.seq RemovedBody667_256 RemovedBody667_295

def RemovedBody667_297 : StackLang.HolProg 64 :=
.seq RemovedBody667_227 RemovedBody667_296

def RemovedBody667_298 : StackLang.HolProg 64 :=
.seq RemovedBody667_224 RemovedBody667_297

def RemovedBody667_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody667_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody667_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody667_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody667_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody667_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody667_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody667_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody667_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody667_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody667_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody667_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody667_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody667_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody667_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody667_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def RemovedBody667_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody667_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2765#64)

def RemovedBody667_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody667_329 : StackLang.HolProg 64 :=
.seq RemovedBody667_327 RemovedBody667_328

def RemovedBody667_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody667_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody667_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody667_333 : StackLang.HolProg 64 :=
.seq RemovedBody667_331 RemovedBody667_332

def RemovedBody667_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_335 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody667_333 RemovedBody667_334

def RemovedBody667_336 : StackLang.HolProg 64 :=
.seq RemovedBody667_330 RemovedBody667_335

def RemovedBody667_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody667_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody667_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 9

def RemovedBody667_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody667_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody667_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody667_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody667_346 : StackLang.HolProg 64 :=
.seq RemovedBody667_344 RemovedBody667_345

def RemovedBody667_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody667_348 : StackLang.HolProg 64 :=
.seq RemovedBody667_346 RemovedBody667_347

def RemovedBody667_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody667_350 : StackLang.HolProg 64 :=
.seq RemovedBody667_348 RemovedBody667_349

def RemovedBody667_351 : StackLang.HolProg 64 :=
.seq RemovedBody667_343 RemovedBody667_350

def RemovedBody667_352 : StackLang.HolProg 64 :=
.seq RemovedBody667_342 RemovedBody667_351

def RemovedBody667_353 : StackLang.HolProg 64 :=
.seq RemovedBody667_341 RemovedBody667_352

def RemovedBody667_354 : StackLang.HolProg 64 :=
.seq RemovedBody667_340 RemovedBody667_353

def RemovedBody667_355 : StackLang.HolProg 64 :=
.seq RemovedBody667_339 RemovedBody667_354

def RemovedBody667_356 : StackLang.HolProg 64 :=
.seq RemovedBody667_338 RemovedBody667_355

def RemovedBody667_357 : StackLang.HolProg 64 :=
.seq RemovedBody667_337 RemovedBody667_356

def RemovedBody667_358 : StackLang.HolProg 64 :=
.seq RemovedBody667_336 RemovedBody667_357

def RemovedBody667_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody667_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody667_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody667_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody667_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody667_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody667_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody667_369 : StackLang.HolProg 64 :=
.seq RemovedBody667_367 RemovedBody667_368

def RemovedBody667_370 : StackLang.HolProg 64 :=
.seq RemovedBody667_366 RemovedBody667_369

def RemovedBody667_371 : StackLang.HolProg 64 :=
.seq RemovedBody667_365 RemovedBody667_370

def RemovedBody667_372 : StackLang.HolProg 64 :=
.seq RemovedBody667_364 RemovedBody667_371

def RemovedBody667_373 : StackLang.HolProg 64 :=
.seq RemovedBody667_363 RemovedBody667_372

def RemovedBody667_374 : StackLang.HolProg 64 :=
.seq RemovedBody667_362 RemovedBody667_373

def RemovedBody667_375 : StackLang.HolProg 64 :=
.seq RemovedBody667_361 RemovedBody667_374

def RemovedBody667_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody667_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody667_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody667_379 : StackLang.HolProg 64 :=
.seq RemovedBody667_377 RemovedBody667_378

def RemovedBody667_380 : StackLang.HolProg 64 :=
.seq RemovedBody667_376 RemovedBody667_379

def RemovedBody667_381 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody667_382 : StackLang.HolProg 64 :=
.seq RemovedBody667_380 RemovedBody667_381

def RemovedBody667_383 : StackLang.HolProg 64 :=
.call (some (RemovedBody667_375, 0, 667, 8)) (Sum.inl 658) (some (RemovedBody667_382, 667, 9))

def RemovedBody667_384 : StackLang.HolProg 64 :=
.seq RemovedBody667_360 RemovedBody667_383

def RemovedBody667_385 : StackLang.HolProg 64 :=
.seq RemovedBody667_359 RemovedBody667_384

def RemovedBody667_386 : StackLang.HolProg 64 :=
.seq RemovedBody667_358 RemovedBody667_385

def RemovedBody667_387 : StackLang.HolProg 64 :=
.seq RemovedBody667_329 RemovedBody667_386

def RemovedBody667_388 : StackLang.HolProg 64 :=
.seq RemovedBody667_326 RemovedBody667_387

def RemovedBody667_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody667_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody667_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody667_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody667_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody667_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody667_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody667_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody667_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody667_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody667_405 : StackLang.HolProg 64 :=
.seq RemovedBody667_403 RemovedBody667_404

def RemovedBody667_406 : StackLang.HolProg 64 :=
.seq RemovedBody667_402 RemovedBody667_405

def RemovedBody667_407 : StackLang.HolProg 64 :=
.seq RemovedBody667_401 RemovedBody667_406

def RemovedBody667_408 : StackLang.HolProg 64 :=
.seq RemovedBody667_400 RemovedBody667_407

def RemovedBody667_409 : StackLang.HolProg 64 :=
.seq RemovedBody667_399 RemovedBody667_408

def RemovedBody667_410 : StackLang.HolProg 64 :=
.seq RemovedBody667_398 RemovedBody667_409

def RemovedBody667_411 : StackLang.HolProg 64 :=
.seq RemovedBody667_397 RemovedBody667_410

def RemovedBody667_412 : StackLang.HolProg 64 :=
.seq RemovedBody667_396 RemovedBody667_411

def RemovedBody667_413 : StackLang.HolProg 64 :=
.seq RemovedBody667_395 RemovedBody667_412

def RemovedBody667_414 : StackLang.HolProg 64 :=
.seq RemovedBody667_394 RemovedBody667_413

def RemovedBody667_415 : StackLang.HolProg 64 :=
.seq RemovedBody667_393 RemovedBody667_414

def RemovedBody667_416 : StackLang.HolProg 64 :=
.seq RemovedBody667_392 RemovedBody667_415

def RemovedBody667_417 : StackLang.HolProg 64 :=
.seq RemovedBody667_391 RemovedBody667_416

def RemovedBody667_418 : StackLang.HolProg 64 :=
.seq RemovedBody667_390 RemovedBody667_417

def RemovedBody667_419 : StackLang.HolProg 64 :=
.seq RemovedBody667_389 RemovedBody667_418

def RemovedBody667_420 : StackLang.HolProg 64 :=
.seq RemovedBody667_388 RemovedBody667_419

def RemovedBody667_421 : StackLang.HolProg 64 :=
.seq RemovedBody667_325 RemovedBody667_420

def RemovedBody667_422 : StackLang.HolProg 64 :=
.seq RemovedBody667_324 RemovedBody667_421

def RemovedBody667_423 : StackLang.HolProg 64 :=
.seq RemovedBody667_323 RemovedBody667_422

def RemovedBody667_424 : StackLang.HolProg 64 :=
.seq RemovedBody667_322 RemovedBody667_423

def RemovedBody667_425 : StackLang.HolProg 64 :=
.seq RemovedBody667_321 RemovedBody667_424

def RemovedBody667_426 : StackLang.HolProg 64 :=
.seq RemovedBody667_320 RemovedBody667_425

def RemovedBody667_427 : StackLang.HolProg 64 :=
.seq RemovedBody667_319 RemovedBody667_426

def RemovedBody667_428 : StackLang.HolProg 64 :=
.seq RemovedBody667_318 RemovedBody667_427

def RemovedBody667_429 : StackLang.HolProg 64 :=
.seq RemovedBody667_317 RemovedBody667_428

def RemovedBody667_430 : StackLang.HolProg 64 :=
.seq RemovedBody667_316 RemovedBody667_429

def RemovedBody667_431 : StackLang.HolProg 64 :=
.seq RemovedBody667_315 RemovedBody667_430

def RemovedBody667_432 : StackLang.HolProg 64 :=
.seq RemovedBody667_314 RemovedBody667_431

def RemovedBody667_433 : StackLang.HolProg 64 :=
.seq RemovedBody667_313 RemovedBody667_432

def RemovedBody667_434 : StackLang.HolProg 64 :=
.seq RemovedBody667_312 RemovedBody667_433

def RemovedBody667_435 : StackLang.HolProg 64 :=
.seq RemovedBody667_311 RemovedBody667_434

def RemovedBody667_436 : StackLang.HolProg 64 :=
.seq RemovedBody667_310 RemovedBody667_435

def RemovedBody667_437 : StackLang.HolProg 64 :=
.seq RemovedBody667_309 RemovedBody667_436

def RemovedBody667_438 : StackLang.HolProg 64 :=
.seq RemovedBody667_308 RemovedBody667_437

def RemovedBody667_439 : StackLang.HolProg 64 :=
.seq RemovedBody667_307 RemovedBody667_438

def RemovedBody667_440 : StackLang.HolProg 64 :=
.seq RemovedBody667_306 RemovedBody667_439

def RemovedBody667_441 : StackLang.HolProg 64 :=
.seq RemovedBody667_305 RemovedBody667_440

def RemovedBody667_442 : StackLang.HolProg 64 :=
.seq RemovedBody667_304 RemovedBody667_441

def RemovedBody667_443 : StackLang.HolProg 64 :=
.seq RemovedBody667_303 RemovedBody667_442

def RemovedBody667_444 : StackLang.HolProg 64 :=
.seq RemovedBody667_302 RemovedBody667_443

def RemovedBody667_445 : StackLang.HolProg 64 :=
.seq RemovedBody667_301 RemovedBody667_444

def RemovedBody667_446 : StackLang.HolProg 64 :=
.seq RemovedBody667_300 RemovedBody667_445

def RemovedBody667_447 : StackLang.HolProg 64 :=
.seq RemovedBody667_299 RemovedBody667_446

def RemovedBody667_448 : StackLang.HolProg 64 :=
.seq RemovedBody667_298 RemovedBody667_447

def RemovedBody667_449 : StackLang.HolProg 64 :=
.seq RemovedBody667_223 RemovedBody667_448

def RemovedBody667_450 : StackLang.HolProg 64 :=
.seq RemovedBody667_216 RemovedBody667_449

def RemovedBody667_451 : StackLang.HolProg 64 :=
.seq RemovedBody667_215 RemovedBody667_450

def RemovedBody667_452 : StackLang.HolProg 64 :=
.seq RemovedBody667_214 RemovedBody667_451

def RemovedBody667_453 : StackLang.HolProg 64 :=
.seq RemovedBody667_213 RemovedBody667_452

def RemovedBody667_454 : StackLang.HolProg 64 :=
.seq RemovedBody667_212 RemovedBody667_453

def RemovedBody667_455 : StackLang.HolProg 64 :=
.seq RemovedBody667_211 RemovedBody667_454

def RemovedBody667_456 : StackLang.HolProg 64 :=
.seq RemovedBody667_210 RemovedBody667_455

def RemovedBody667_457 : StackLang.HolProg 64 :=
.seq RemovedBody667_209 RemovedBody667_456

def RemovedBody667_458 : StackLang.HolProg 64 :=
.seq RemovedBody667_208 RemovedBody667_457

def RemovedBody667_459 : StackLang.HolProg 64 :=
.seq RemovedBody667_207 RemovedBody667_458

def RemovedBody667_460 : StackLang.HolProg 64 :=
.seq RemovedBody667_206 RemovedBody667_459

def RemovedBody667_461 : StackLang.HolProg 64 :=
.seq RemovedBody667_205 RemovedBody667_460

def RemovedBody667_462 : StackLang.HolProg 64 :=
.seq RemovedBody667_204 RemovedBody667_461

def RemovedBody667_463 : StackLang.HolProg 64 :=
.seq RemovedBody667_203 RemovedBody667_462

def RemovedBody667_464 : StackLang.HolProg 64 :=
.seq RemovedBody667_122 RemovedBody667_463

def RemovedBody667_465 : StackLang.HolProg 64 :=
.seq RemovedBody667_115 RemovedBody667_464

def RemovedBody667_466 : StackLang.HolProg 64 :=
.seq RemovedBody667_114 RemovedBody667_465

def RemovedBody667_467 : StackLang.HolProg 64 :=
.seq RemovedBody667_113 RemovedBody667_466

def RemovedBody667_468 : StackLang.HolProg 64 :=
.seq RemovedBody667_112 RemovedBody667_467

def RemovedBody667_469 : StackLang.HolProg 64 :=
.seq RemovedBody667_39 RemovedBody667_468

def RemovedBody667_470 : StackLang.HolProg 64 :=
.seq RemovedBody667_32 RemovedBody667_469

def RemovedBody667_471 : StackLang.HolProg 64 :=
.seq RemovedBody667_31 RemovedBody667_470

def RemovedBody667_472 : StackLang.HolProg 64 :=
.seq RemovedBody667_30 RemovedBody667_471

def RemovedBody667_473 : StackLang.HolProg 64 :=
.seq RemovedBody667_29 RemovedBody667_472

def RemovedBody667_474 : StackLang.HolProg 64 :=
.seq RemovedBody667_28 RemovedBody667_473

def RemovedBody667_475 : StackLang.HolProg 64 :=
.seq RemovedBody667_27 RemovedBody667_474

def RemovedBody667_476 : StackLang.HolProg 64 :=
.seq RemovedBody667_26 RemovedBody667_475

def RemovedBody667_477 : StackLang.HolProg 64 :=
.seq RemovedBody667_25 RemovedBody667_476

def RemovedBody667_478 : StackLang.HolProg 64 :=
.seq RemovedBody667_24 RemovedBody667_477

def RemovedBody667_479 : StackLang.HolProg 64 :=
.seq RemovedBody667_23 RemovedBody667_478

def RemovedBody667_480 : StackLang.HolProg 64 :=
.seq RemovedBody667_22 RemovedBody667_479

def RemovedBody667_481 : StackLang.HolProg 64 :=
.seq RemovedBody667_21 RemovedBody667_480

def RemovedBody667_482 : StackLang.HolProg 64 :=
.seq RemovedBody667_20 RemovedBody667_481

def RemovedBody667_483 : StackLang.HolProg 64 :=
.seq RemovedBody667_19 RemovedBody667_482

def RemovedBody667_484 : StackLang.HolProg 64 :=
.seq RemovedBody667_18 RemovedBody667_483

def RemovedBody667_485 : StackLang.HolProg 64 :=
.seq RemovedBody667_17 RemovedBody667_484

def RemovedBody667_486 : StackLang.HolProg 64 :=
.seq RemovedBody667_16 RemovedBody667_485

def RemovedBody667_487 : StackLang.HolProg 64 :=
.seq RemovedBody667_15 RemovedBody667_486

def RemovedBody667_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody667_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody667_490 : StackLang.HolProg 64 :=
.seq RemovedBody667_488 RemovedBody667_489

def RemovedBody667_491 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody667_487 RemovedBody667_490

def RemovedBody667_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody667_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody667_494 : StackLang.HolProg 64 :=
.seq RemovedBody667_492 RemovedBody667_493

def RemovedBody667_495 : StackLang.HolProg 64 :=
.seq RemovedBody667_491 RemovedBody667_494

def RemovedBody667_496 : StackLang.HolProg 64 :=
.seq RemovedBody667_14 RemovedBody667_495

def RemovedBody667_497 : StackLang.HolProg 64 :=
.seq RemovedBody667_13 RemovedBody667_496

def RemovedBody667_498 : StackLang.HolProg 64 :=
.loop RemovedBody667_497

def RemovedBody667_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody667_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody667_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody667_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody667_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody667_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody667_505 : StackLang.HolProg 64 :=
.seq RemovedBody667_503 RemovedBody667_504

def RemovedBody667_506 : StackLang.HolProg 64 :=
.seq RemovedBody667_502 RemovedBody667_505

def RemovedBody667_507 : StackLang.HolProg 64 :=
.seq RemovedBody667_501 RemovedBody667_506

def RemovedBody667_508 : StackLang.HolProg 64 :=
.seq RemovedBody667_500 RemovedBody667_507

def RemovedBody667_509 : StackLang.HolProg 64 :=
.seq RemovedBody667_499 RemovedBody667_508

def RemovedBody667_510 : StackLang.HolProg 64 :=
.seq RemovedBody667_498 RemovedBody667_509

def RemovedBody667_511 : StackLang.HolProg 64 :=
.seq RemovedBody667_12 RemovedBody667_510

def RemovedBody667_512 : StackLang.HolProg 64 :=
.seq RemovedBody667_9 RemovedBody667_511

def RemovedBody667_513 : StackLang.HolProg 64 :=
.seq RemovedBody667_8 RemovedBody667_512

def RemovedBody667_514 : StackLang.HolProg 64 :=
.seq RemovedBody667_7 RemovedBody667_513

def RemovedBody667_515 : StackLang.HolProg 64 :=
.seq RemovedBody667_6 RemovedBody667_514

def Removed667 : Nat × StackLang.HolProg 64 := (667, RemovedBody667_515)
theorem Removed667_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc667 = Removed667 := by
  kernel_rfl
#print axioms Removed667_eq
end InitECandidate.Proofs.BackendStages
