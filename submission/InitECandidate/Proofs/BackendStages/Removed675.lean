import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc675
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody675_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody675_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody675_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody675_3 : StackLang.HolProg 64 :=
.seq RemovedBody675_1 RemovedBody675_2

def RemovedBody675_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody675_3 RemovedBody675_4

def RemovedBody675_6 : StackLang.HolProg 64 :=
.seq RemovedBody675_0 RemovedBody675_5

def RemovedBody675_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody675_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody675_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody675_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody675_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody675_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody675_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody675_15 : StackLang.HolProg 64 :=
.seq RemovedBody675_13 RemovedBody675_14

def RemovedBody675_16 : StackLang.HolProg 64 :=
.seq RemovedBody675_12 RemovedBody675_15

def RemovedBody675_17 : StackLang.HolProg 64 :=
.seq RemovedBody675_11 RemovedBody675_16

def RemovedBody675_18 : StackLang.HolProg 64 :=
.seq RemovedBody675_10 RemovedBody675_17

def RemovedBody675_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody675_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody675_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody675_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody675_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody675_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody675_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody675_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody675_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def RemovedBody675_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody675_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody675_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody675_35 : StackLang.HolProg 64 :=
.seq RemovedBody675_33 RemovedBody675_34

def RemovedBody675_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody675_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody675_38 : StackLang.HolProg 64 :=
.seq RemovedBody675_36 RemovedBody675_37

def RemovedBody675_39 : StackLang.HolProg 64 :=
.seq RemovedBody675_35 RemovedBody675_38

def RemovedBody675_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2791#64)

def RemovedBody675_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody675_43 : StackLang.HolProg 64 :=
.seq RemovedBody675_41 RemovedBody675_42

def RemovedBody675_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody675_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody675_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody675_47 : StackLang.HolProg 64 :=
.seq RemovedBody675_45 RemovedBody675_46

def RemovedBody675_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_49 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody675_47 RemovedBody675_48

def RemovedBody675_50 : StackLang.HolProg 64 :=
.seq RemovedBody675_44 RemovedBody675_49

def RemovedBody675_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody675_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody675_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 675 3

def RemovedBody675_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody675_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody675_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody675_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody675_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody675_60 : StackLang.HolProg 64 :=
.seq RemovedBody675_58 RemovedBody675_59

def RemovedBody675_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody675_62 : StackLang.HolProg 64 :=
.seq RemovedBody675_60 RemovedBody675_61

def RemovedBody675_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody675_64 : StackLang.HolProg 64 :=
.seq RemovedBody675_62 RemovedBody675_63

def RemovedBody675_65 : StackLang.HolProg 64 :=
.seq RemovedBody675_57 RemovedBody675_64

def RemovedBody675_66 : StackLang.HolProg 64 :=
.seq RemovedBody675_56 RemovedBody675_65

def RemovedBody675_67 : StackLang.HolProg 64 :=
.seq RemovedBody675_55 RemovedBody675_66

def RemovedBody675_68 : StackLang.HolProg 64 :=
.seq RemovedBody675_54 RemovedBody675_67

def RemovedBody675_69 : StackLang.HolProg 64 :=
.seq RemovedBody675_53 RemovedBody675_68

def RemovedBody675_70 : StackLang.HolProg 64 :=
.seq RemovedBody675_52 RemovedBody675_69

def RemovedBody675_71 : StackLang.HolProg 64 :=
.seq RemovedBody675_51 RemovedBody675_70

def RemovedBody675_72 : StackLang.HolProg 64 :=
.seq RemovedBody675_50 RemovedBody675_71

def RemovedBody675_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody675_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody675_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody675_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody675_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody675_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody675_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody675_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody675_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody675_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody675_86 : StackLang.HolProg 64 :=
.seq RemovedBody675_84 RemovedBody675_85

def RemovedBody675_87 : StackLang.HolProg 64 :=
.seq RemovedBody675_83 RemovedBody675_86

def RemovedBody675_88 : StackLang.HolProg 64 :=
.seq RemovedBody675_82 RemovedBody675_87

def RemovedBody675_89 : StackLang.HolProg 64 :=
.seq RemovedBody675_81 RemovedBody675_88

def RemovedBody675_90 : StackLang.HolProg 64 :=
.seq RemovedBody675_80 RemovedBody675_89

def RemovedBody675_91 : StackLang.HolProg 64 :=
.seq RemovedBody675_79 RemovedBody675_90

def RemovedBody675_92 : StackLang.HolProg 64 :=
.seq RemovedBody675_78 RemovedBody675_91

def RemovedBody675_93 : StackLang.HolProg 64 :=
.seq RemovedBody675_77 RemovedBody675_92

def RemovedBody675_94 : StackLang.HolProg 64 :=
.seq RemovedBody675_76 RemovedBody675_93

def RemovedBody675_95 : StackLang.HolProg 64 :=
.seq RemovedBody675_75 RemovedBody675_94

def RemovedBody675_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody675_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody675_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody675_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody675_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody675_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody675_102 : StackLang.HolProg 64 :=
.seq RemovedBody675_100 RemovedBody675_101

def RemovedBody675_103 : StackLang.HolProg 64 :=
.seq RemovedBody675_99 RemovedBody675_102

def RemovedBody675_104 : StackLang.HolProg 64 :=
.seq RemovedBody675_98 RemovedBody675_103

def RemovedBody675_105 : StackLang.HolProg 64 :=
.seq RemovedBody675_97 RemovedBody675_104

def RemovedBody675_106 : StackLang.HolProg 64 :=
.seq RemovedBody675_96 RemovedBody675_105

def RemovedBody675_107 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody675_108 : StackLang.HolProg 64 :=
.seq RemovedBody675_106 RemovedBody675_107

def RemovedBody675_109 : StackLang.HolProg 64 :=
.call (some (RemovedBody675_95, 0, 675, 2)) (Sum.inl 665) (some (RemovedBody675_108, 675, 3))

def RemovedBody675_110 : StackLang.HolProg 64 :=
.seq RemovedBody675_74 RemovedBody675_109

def RemovedBody675_111 : StackLang.HolProg 64 :=
.seq RemovedBody675_73 RemovedBody675_110

def RemovedBody675_112 : StackLang.HolProg 64 :=
.seq RemovedBody675_72 RemovedBody675_111

def RemovedBody675_113 : StackLang.HolProg 64 :=
.seq RemovedBody675_43 RemovedBody675_112

def RemovedBody675_114 : StackLang.HolProg 64 :=
.seq RemovedBody675_40 RemovedBody675_113

def RemovedBody675_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody675_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody675_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody675_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody675_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody675_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody675_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody675_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody675_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody675_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody675_132 : StackLang.HolProg 64 :=
.seq RemovedBody675_130 RemovedBody675_131

def RemovedBody675_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody675_134 : StackLang.HolProg 64 :=
.seq RemovedBody675_132 RemovedBody675_133

def RemovedBody675_135 : StackLang.HolProg 64 :=
.seq RemovedBody675_129 RemovedBody675_134

def RemovedBody675_136 : StackLang.HolProg 64 :=
.seq RemovedBody675_128 RemovedBody675_135

def RemovedBody675_137 : StackLang.HolProg 64 :=
.seq RemovedBody675_127 RemovedBody675_136

def RemovedBody675_138 : StackLang.HolProg 64 :=
.seq RemovedBody675_126 RemovedBody675_137

def RemovedBody675_139 : StackLang.HolProg 64 :=
.seq RemovedBody675_125 RemovedBody675_138

def RemovedBody675_140 : StackLang.HolProg 64 :=
.seq RemovedBody675_124 RemovedBody675_139

def RemovedBody675_141 : StackLang.HolProg 64 :=
.seq RemovedBody675_123 RemovedBody675_140

def RemovedBody675_142 : StackLang.HolProg 64 :=
.seq RemovedBody675_122 RemovedBody675_141

def RemovedBody675_143 : StackLang.HolProg 64 :=
.seq RemovedBody675_121 RemovedBody675_142

def RemovedBody675_144 : StackLang.HolProg 64 :=
.seq RemovedBody675_120 RemovedBody675_143

def RemovedBody675_145 : StackLang.HolProg 64 :=
.seq RemovedBody675_119 RemovedBody675_144

def RemovedBody675_146 : StackLang.HolProg 64 :=
.seq RemovedBody675_118 RemovedBody675_145

def RemovedBody675_147 : StackLang.HolProg 64 :=
.seq RemovedBody675_117 RemovedBody675_146

def RemovedBody675_148 : StackLang.HolProg 64 :=
.seq RemovedBody675_116 RemovedBody675_147

def RemovedBody675_149 : StackLang.HolProg 64 :=
.seq RemovedBody675_115 RemovedBody675_148

def RemovedBody675_150 : StackLang.HolProg 64 :=
.seq RemovedBody675_114 RemovedBody675_149

def RemovedBody675_151 : StackLang.HolProg 64 :=
.seq RemovedBody675_39 RemovedBody675_150

def RemovedBody675_152 : StackLang.HolProg 64 :=
.seq RemovedBody675_32 RemovedBody675_151

def RemovedBody675_153 : StackLang.HolProg 64 :=
.seq RemovedBody675_31 RemovedBody675_152

def RemovedBody675_154 : StackLang.HolProg 64 :=
.seq RemovedBody675_30 RemovedBody675_153

def RemovedBody675_155 : StackLang.HolProg 64 :=
.seq RemovedBody675_29 RemovedBody675_154

def RemovedBody675_156 : StackLang.HolProg 64 :=
.seq RemovedBody675_28 RemovedBody675_155

def RemovedBody675_157 : StackLang.HolProg 64 :=
.seq RemovedBody675_27 RemovedBody675_156

def RemovedBody675_158 : StackLang.HolProg 64 :=
.seq RemovedBody675_26 RemovedBody675_157

def RemovedBody675_159 : StackLang.HolProg 64 :=
.seq RemovedBody675_25 RemovedBody675_158

def RemovedBody675_160 : StackLang.HolProg 64 :=
.seq RemovedBody675_24 RemovedBody675_159

def RemovedBody675_161 : StackLang.HolProg 64 :=
.seq RemovedBody675_23 RemovedBody675_160

def RemovedBody675_162 : StackLang.HolProg 64 :=
.seq RemovedBody675_22 RemovedBody675_161

def RemovedBody675_163 : StackLang.HolProg 64 :=
.seq RemovedBody675_21 RemovedBody675_162

def RemovedBody675_164 : StackLang.HolProg 64 :=
.seq RemovedBody675_20 RemovedBody675_163

def RemovedBody675_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody675_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody675_167 : StackLang.HolProg 64 :=
.seq RemovedBody675_165 RemovedBody675_166

def RemovedBody675_168 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody675_164 RemovedBody675_167

def RemovedBody675_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody675_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody675_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody675_172 : StackLang.HolProg 64 :=
.seq RemovedBody675_170 RemovedBody675_171

def RemovedBody675_173 : StackLang.HolProg 64 :=
.seq RemovedBody675_169 RemovedBody675_172

def RemovedBody675_174 : StackLang.HolProg 64 :=
.seq RemovedBody675_168 RemovedBody675_173

def RemovedBody675_175 : StackLang.HolProg 64 :=
.seq RemovedBody675_19 RemovedBody675_174

def RemovedBody675_176 : StackLang.HolProg 64 :=
.loop RemovedBody675_175

def RemovedBody675_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody675_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody675_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody675_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody675_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody675_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody675_183 : StackLang.HolProg 64 :=
.seq RemovedBody675_181 RemovedBody675_182

def RemovedBody675_184 : StackLang.HolProg 64 :=
.seq RemovedBody675_180 RemovedBody675_183

def RemovedBody675_185 : StackLang.HolProg 64 :=
.seq RemovedBody675_179 RemovedBody675_184

def RemovedBody675_186 : StackLang.HolProg 64 :=
.seq RemovedBody675_178 RemovedBody675_185

def RemovedBody675_187 : StackLang.HolProg 64 :=
.seq RemovedBody675_177 RemovedBody675_186

def RemovedBody675_188 : StackLang.HolProg 64 :=
.seq RemovedBody675_176 RemovedBody675_187

def RemovedBody675_189 : StackLang.HolProg 64 :=
.seq RemovedBody675_18 RemovedBody675_188

def RemovedBody675_190 : StackLang.HolProg 64 :=
.seq RemovedBody675_9 RemovedBody675_189

def RemovedBody675_191 : StackLang.HolProg 64 :=
.seq RemovedBody675_8 RemovedBody675_190

def RemovedBody675_192 : StackLang.HolProg 64 :=
.seq RemovedBody675_7 RemovedBody675_191

def RemovedBody675_193 : StackLang.HolProg 64 :=
.seq RemovedBody675_6 RemovedBody675_192

def Removed675 : Nat × StackLang.HolProg 64 := (675, RemovedBody675_193)
theorem Removed675_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc675 = Removed675 := by
  kernel_rfl
#print axioms Removed675_eq
end InitECandidate.Proofs.BackendStages
