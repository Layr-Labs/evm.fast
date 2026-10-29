import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc360
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody360_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody360_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody360_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody360_3 : StackLang.HolProg 64 :=
.seq RemovedBody360_1 RemovedBody360_2

def RemovedBody360_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody360_3 RemovedBody360_4

def RemovedBody360_6 : StackLang.HolProg 64 :=
.seq RemovedBody360_0 RemovedBody360_5

def RemovedBody360_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody360_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody360_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody360_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody360_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody360_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody360_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody360_15 : StackLang.HolProg 64 :=
.seq RemovedBody360_13 RemovedBody360_14

def RemovedBody360_16 : StackLang.HolProg 64 :=
.seq RemovedBody360_12 RemovedBody360_15

def RemovedBody360_17 : StackLang.HolProg 64 :=
.seq RemovedBody360_11 RemovedBody360_16

def RemovedBody360_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody360_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody360_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody360_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody360_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody360_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody360_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 33#64)

def RemovedBody360_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody360_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody360_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody360_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody360_33 : StackLang.HolProg 64 :=
.seq RemovedBody360_31 RemovedBody360_32

def RemovedBody360_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody360_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody360_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody360_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody360_38 : StackLang.HolProg 64 :=
.seq RemovedBody360_36 RemovedBody360_37

def RemovedBody360_39 : StackLang.HolProg 64 :=
.seq RemovedBody360_35 RemovedBody360_38

def RemovedBody360_40 : StackLang.HolProg 64 :=
.seq RemovedBody360_34 RemovedBody360_39

def RemovedBody360_41 : StackLang.HolProg 64 :=
.seq RemovedBody360_33 RemovedBody360_40

def RemovedBody360_42 : StackLang.HolProg 64 :=
.seq RemovedBody360_30 RemovedBody360_41

def RemovedBody360_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1033#64)

def RemovedBody360_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody360_46 : StackLang.HolProg 64 :=
.seq RemovedBody360_44 RemovedBody360_45

def RemovedBody360_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody360_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody360_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody360_50 : StackLang.HolProg 64 :=
.seq RemovedBody360_48 RemovedBody360_49

def RemovedBody360_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_52 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody360_50 RemovedBody360_51

def RemovedBody360_53 : StackLang.HolProg 64 :=
.seq RemovedBody360_47 RemovedBody360_52

def RemovedBody360_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody360_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody360_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 360 3

def RemovedBody360_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody360_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody360_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody360_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody360_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody360_63 : StackLang.HolProg 64 :=
.seq RemovedBody360_61 RemovedBody360_62

def RemovedBody360_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody360_65 : StackLang.HolProg 64 :=
.seq RemovedBody360_63 RemovedBody360_64

def RemovedBody360_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody360_67 : StackLang.HolProg 64 :=
.seq RemovedBody360_65 RemovedBody360_66

def RemovedBody360_68 : StackLang.HolProg 64 :=
.seq RemovedBody360_60 RemovedBody360_67

def RemovedBody360_69 : StackLang.HolProg 64 :=
.seq RemovedBody360_59 RemovedBody360_68

def RemovedBody360_70 : StackLang.HolProg 64 :=
.seq RemovedBody360_58 RemovedBody360_69

def RemovedBody360_71 : StackLang.HolProg 64 :=
.seq RemovedBody360_57 RemovedBody360_70

def RemovedBody360_72 : StackLang.HolProg 64 :=
.seq RemovedBody360_56 RemovedBody360_71

def RemovedBody360_73 : StackLang.HolProg 64 :=
.seq RemovedBody360_55 RemovedBody360_72

def RemovedBody360_74 : StackLang.HolProg 64 :=
.seq RemovedBody360_54 RemovedBody360_73

def RemovedBody360_75 : StackLang.HolProg 64 :=
.seq RemovedBody360_53 RemovedBody360_74

def RemovedBody360_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody360_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody360_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody360_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody360_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody360_84 : StackLang.HolProg 64 :=
.seq RemovedBody360_82 RemovedBody360_83

def RemovedBody360_85 : StackLang.HolProg 64 :=
.seq RemovedBody360_81 RemovedBody360_84

def RemovedBody360_86 : StackLang.HolProg 64 :=
.seq RemovedBody360_80 RemovedBody360_85

def RemovedBody360_87 : StackLang.HolProg 64 :=
.seq RemovedBody360_79 RemovedBody360_86

def RemovedBody360_88 : StackLang.HolProg 64 :=
.seq RemovedBody360_78 RemovedBody360_87

def RemovedBody360_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody360_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody360_91 : StackLang.HolProg 64 :=
.seq RemovedBody360_89 RemovedBody360_90

def RemovedBody360_92 : StackLang.HolProg 64 :=
.call (some (RemovedBody360_88, 0, 360, 2)) (Sum.inl 180) (some (RemovedBody360_91, 360, 3))

def RemovedBody360_93 : StackLang.HolProg 64 :=
.seq RemovedBody360_77 RemovedBody360_92

def RemovedBody360_94 : StackLang.HolProg 64 :=
.seq RemovedBody360_76 RemovedBody360_93

def RemovedBody360_95 : StackLang.HolProg 64 :=
.seq RemovedBody360_75 RemovedBody360_94

def RemovedBody360_96 : StackLang.HolProg 64 :=
.seq RemovedBody360_46 RemovedBody360_95

def RemovedBody360_97 : StackLang.HolProg 64 :=
.seq RemovedBody360_43 RemovedBody360_96

def RemovedBody360_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody360_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody360_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 21#64)))

def RemovedBody360_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody360_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1034#64)

def RemovedBody360_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody360_106 : StackLang.HolProg 64 :=
.seq RemovedBody360_104 RemovedBody360_105

def RemovedBody360_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody360_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody360_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody360_110 : StackLang.HolProg 64 :=
.seq RemovedBody360_108 RemovedBody360_109

def RemovedBody360_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody360_110 RemovedBody360_111

def RemovedBody360_113 : StackLang.HolProg 64 :=
.seq RemovedBody360_107 RemovedBody360_112

def RemovedBody360_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody360_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody360_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 360 5

def RemovedBody360_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody360_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody360_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody360_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody360_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody360_123 : StackLang.HolProg 64 :=
.seq RemovedBody360_121 RemovedBody360_122

def RemovedBody360_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody360_125 : StackLang.HolProg 64 :=
.seq RemovedBody360_123 RemovedBody360_124

def RemovedBody360_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody360_127 : StackLang.HolProg 64 :=
.seq RemovedBody360_125 RemovedBody360_126

def RemovedBody360_128 : StackLang.HolProg 64 :=
.seq RemovedBody360_120 RemovedBody360_127

def RemovedBody360_129 : StackLang.HolProg 64 :=
.seq RemovedBody360_119 RemovedBody360_128

def RemovedBody360_130 : StackLang.HolProg 64 :=
.seq RemovedBody360_118 RemovedBody360_129

def RemovedBody360_131 : StackLang.HolProg 64 :=
.seq RemovedBody360_117 RemovedBody360_130

def RemovedBody360_132 : StackLang.HolProg 64 :=
.seq RemovedBody360_116 RemovedBody360_131

def RemovedBody360_133 : StackLang.HolProg 64 :=
.seq RemovedBody360_115 RemovedBody360_132

def RemovedBody360_134 : StackLang.HolProg 64 :=
.seq RemovedBody360_114 RemovedBody360_133

def RemovedBody360_135 : StackLang.HolProg 64 :=
.seq RemovedBody360_113 RemovedBody360_134

def RemovedBody360_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody360_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody360_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody360_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody360_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody360_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody360_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody360_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody360_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody360_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody360_149 : StackLang.HolProg 64 :=
.seq RemovedBody360_147 RemovedBody360_148

def RemovedBody360_150 : StackLang.HolProg 64 :=
.seq RemovedBody360_146 RemovedBody360_149

def RemovedBody360_151 : StackLang.HolProg 64 :=
.seq RemovedBody360_145 RemovedBody360_150

def RemovedBody360_152 : StackLang.HolProg 64 :=
.seq RemovedBody360_144 RemovedBody360_151

def RemovedBody360_153 : StackLang.HolProg 64 :=
.seq RemovedBody360_143 RemovedBody360_152

def RemovedBody360_154 : StackLang.HolProg 64 :=
.seq RemovedBody360_142 RemovedBody360_153

def RemovedBody360_155 : StackLang.HolProg 64 :=
.seq RemovedBody360_141 RemovedBody360_154

def RemovedBody360_156 : StackLang.HolProg 64 :=
.seq RemovedBody360_140 RemovedBody360_155

def RemovedBody360_157 : StackLang.HolProg 64 :=
.seq RemovedBody360_139 RemovedBody360_156

def RemovedBody360_158 : StackLang.HolProg 64 :=
.seq RemovedBody360_138 RemovedBody360_157

def RemovedBody360_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody360_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody360_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody360_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody360_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody360_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody360_165 : StackLang.HolProg 64 :=
.seq RemovedBody360_163 RemovedBody360_164

def RemovedBody360_166 : StackLang.HolProg 64 :=
.seq RemovedBody360_162 RemovedBody360_165

def RemovedBody360_167 : StackLang.HolProg 64 :=
.seq RemovedBody360_161 RemovedBody360_166

def RemovedBody360_168 : StackLang.HolProg 64 :=
.seq RemovedBody360_160 RemovedBody360_167

def RemovedBody360_169 : StackLang.HolProg 64 :=
.seq RemovedBody360_159 RemovedBody360_168

def RemovedBody360_170 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody360_171 : StackLang.HolProg 64 :=
.seq RemovedBody360_169 RemovedBody360_170

def RemovedBody360_172 : StackLang.HolProg 64 :=
.call (some (RemovedBody360_158, 0, 360, 4)) (Sum.inl 180) (some (RemovedBody360_171, 360, 5))

def RemovedBody360_173 : StackLang.HolProg 64 :=
.seq RemovedBody360_137 RemovedBody360_172

def RemovedBody360_174 : StackLang.HolProg 64 :=
.seq RemovedBody360_136 RemovedBody360_173

def RemovedBody360_175 : StackLang.HolProg 64 :=
.seq RemovedBody360_135 RemovedBody360_174

def RemovedBody360_176 : StackLang.HolProg 64 :=
.seq RemovedBody360_106 RemovedBody360_175

def RemovedBody360_177 : StackLang.HolProg 64 :=
.seq RemovedBody360_103 RemovedBody360_176

def RemovedBody360_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody360_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody360_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody360_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody360_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody360_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody360_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody360_187 : StackLang.HolProg 64 :=
.seq RemovedBody360_185 RemovedBody360_186

def RemovedBody360_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody360_189 : StackLang.HolProg 64 :=
.seq RemovedBody360_187 RemovedBody360_188

def RemovedBody360_190 : StackLang.HolProg 64 :=
.seq RemovedBody360_184 RemovedBody360_189

def RemovedBody360_191 : StackLang.HolProg 64 :=
.seq RemovedBody360_183 RemovedBody360_190

def RemovedBody360_192 : StackLang.HolProg 64 :=
.seq RemovedBody360_182 RemovedBody360_191

def RemovedBody360_193 : StackLang.HolProg 64 :=
.seq RemovedBody360_181 RemovedBody360_192

def RemovedBody360_194 : StackLang.HolProg 64 :=
.seq RemovedBody360_180 RemovedBody360_193

def RemovedBody360_195 : StackLang.HolProg 64 :=
.seq RemovedBody360_179 RemovedBody360_194

def RemovedBody360_196 : StackLang.HolProg 64 :=
.seq RemovedBody360_178 RemovedBody360_195

def RemovedBody360_197 : StackLang.HolProg 64 :=
.seq RemovedBody360_177 RemovedBody360_196

def RemovedBody360_198 : StackLang.HolProg 64 :=
.seq RemovedBody360_102 RemovedBody360_197

def RemovedBody360_199 : StackLang.HolProg 64 :=
.seq RemovedBody360_101 RemovedBody360_198

def RemovedBody360_200 : StackLang.HolProg 64 :=
.seq RemovedBody360_100 RemovedBody360_199

def RemovedBody360_201 : StackLang.HolProg 64 :=
.seq RemovedBody360_99 RemovedBody360_200

def RemovedBody360_202 : StackLang.HolProg 64 :=
.seq RemovedBody360_98 RemovedBody360_201

def RemovedBody360_203 : StackLang.HolProg 64 :=
.seq RemovedBody360_97 RemovedBody360_202

def RemovedBody360_204 : StackLang.HolProg 64 :=
.seq RemovedBody360_42 RemovedBody360_203

def RemovedBody360_205 : StackLang.HolProg 64 :=
.seq RemovedBody360_29 RemovedBody360_204

def RemovedBody360_206 : StackLang.HolProg 64 :=
.seq RemovedBody360_28 RemovedBody360_205

def RemovedBody360_207 : StackLang.HolProg 64 :=
.seq RemovedBody360_27 RemovedBody360_206

def RemovedBody360_208 : StackLang.HolProg 64 :=
.seq RemovedBody360_26 RemovedBody360_207

def RemovedBody360_209 : StackLang.HolProg 64 :=
.seq RemovedBody360_25 RemovedBody360_208

def RemovedBody360_210 : StackLang.HolProg 64 :=
.seq RemovedBody360_24 RemovedBody360_209

def RemovedBody360_211 : StackLang.HolProg 64 :=
.seq RemovedBody360_23 RemovedBody360_210

def RemovedBody360_212 : StackLang.HolProg 64 :=
.seq RemovedBody360_22 RemovedBody360_211

def RemovedBody360_213 : StackLang.HolProg 64 :=
.seq RemovedBody360_21 RemovedBody360_212

def RemovedBody360_214 : StackLang.HolProg 64 :=
.seq RemovedBody360_20 RemovedBody360_213

def RemovedBody360_215 : StackLang.HolProg 64 :=
.seq RemovedBody360_19 RemovedBody360_214

def RemovedBody360_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody360_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody360_218 : StackLang.HolProg 64 :=
.seq RemovedBody360_216 RemovedBody360_217

def RemovedBody360_219 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody360_215 RemovedBody360_218

def RemovedBody360_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody360_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody360_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody360_223 : StackLang.HolProg 64 :=
.seq RemovedBody360_221 RemovedBody360_222

def RemovedBody360_224 : StackLang.HolProg 64 :=
.seq RemovedBody360_220 RemovedBody360_223

def RemovedBody360_225 : StackLang.HolProg 64 :=
.seq RemovedBody360_219 RemovedBody360_224

def RemovedBody360_226 : StackLang.HolProg 64 :=
.seq RemovedBody360_18 RemovedBody360_225

def RemovedBody360_227 : StackLang.HolProg 64 :=
.loop RemovedBody360_226

def RemovedBody360_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody360_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody360_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody360_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody360_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody360_233 : StackLang.HolProg 64 :=
.seq RemovedBody360_231 RemovedBody360_232

def RemovedBody360_234 : StackLang.HolProg 64 :=
.seq RemovedBody360_230 RemovedBody360_233

def RemovedBody360_235 : StackLang.HolProg 64 :=
.seq RemovedBody360_229 RemovedBody360_234

def RemovedBody360_236 : StackLang.HolProg 64 :=
.seq RemovedBody360_228 RemovedBody360_235

def RemovedBody360_237 : StackLang.HolProg 64 :=
.seq RemovedBody360_227 RemovedBody360_236

def RemovedBody360_238 : StackLang.HolProg 64 :=
.seq RemovedBody360_17 RemovedBody360_237

def RemovedBody360_239 : StackLang.HolProg 64 :=
.seq RemovedBody360_10 RemovedBody360_238

def RemovedBody360_240 : StackLang.HolProg 64 :=
.seq RemovedBody360_9 RemovedBody360_239

def RemovedBody360_241 : StackLang.HolProg 64 :=
.seq RemovedBody360_8 RemovedBody360_240

def RemovedBody360_242 : StackLang.HolProg 64 :=
.seq RemovedBody360_7 RemovedBody360_241

def RemovedBody360_243 : StackLang.HolProg 64 :=
.seq RemovedBody360_6 RemovedBody360_242

def Removed360 : Nat × StackLang.HolProg 64 := (360, RemovedBody360_243)
theorem Removed360_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc360 = Removed360 := by
  kernel_rfl
#print axioms Removed360_eq
end InitECandidate.Proofs.BackendStages
