import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc476
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody476_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody476_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody476_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody476_3 : StackLang.HolProg 64 :=
.seq RemovedBody476_1 RemovedBody476_2

def RemovedBody476_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody476_3 RemovedBody476_4

def RemovedBody476_6 : StackLang.HolProg 64 :=
.seq RemovedBody476_0 RemovedBody476_5

def RemovedBody476_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody476_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody476_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody476_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody476_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody476_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody476_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 232#64))

def RemovedBody476_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1024#64)

def RemovedBody476_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody476_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody476_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody476_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_25 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody476_26 : StackLang.HolProg 64 :=
.seq RemovedBody476_24 RemovedBody476_25

def RemovedBody476_27 : StackLang.HolProg 64 :=
.seq RemovedBody476_23 RemovedBody476_26

def RemovedBody476_28 : StackLang.HolProg 64 :=
.seq RemovedBody476_22 RemovedBody476_27

def RemovedBody476_29 : StackLang.HolProg 64 :=
.seq RemovedBody476_21 RemovedBody476_28

def RemovedBody476_30 : StackLang.HolProg 64 :=
.seq RemovedBody476_20 RemovedBody476_29

def RemovedBody476_31 : StackLang.HolProg 64 :=
.seq RemovedBody476_19 RemovedBody476_30

def RemovedBody476_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody476_31 RemovedBody476_32

def RemovedBody476_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody476_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1024#64)

def RemovedBody476_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1024#64)

def RemovedBody476_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_43 : StackLang.HolProg 64 :=
.seq RemovedBody476_41 RemovedBody476_42

def RemovedBody476_44 : StackLang.HolProg 64 :=
.seq RemovedBody476_40 RemovedBody476_43

def RemovedBody476_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_47 : StackLang.HolProg 64 :=
.seq RemovedBody476_45 RemovedBody476_46

def RemovedBody476_48 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody476_44 RemovedBody476_47

def RemovedBody476_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody476_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody476_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody476_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody476_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody476_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody476_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody476_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody476_59 : StackLang.HolProg 64 :=
.seq RemovedBody476_57 RemovedBody476_58

def RemovedBody476_60 : StackLang.HolProg 64 :=
.seq RemovedBody476_56 RemovedBody476_59

def RemovedBody476_61 : StackLang.HolProg 64 :=
.seq RemovedBody476_55 RemovedBody476_60

def RemovedBody476_62 : StackLang.HolProg 64 :=
.seq RemovedBody476_54 RemovedBody476_61

def RemovedBody476_63 : StackLang.HolProg 64 :=
.seq RemovedBody476_53 RemovedBody476_62

def RemovedBody476_64 : StackLang.HolProg 64 :=
.seq RemovedBody476_52 RemovedBody476_63

def RemovedBody476_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1496#64)

def RemovedBody476_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody476_68 : StackLang.HolProg 64 :=
.seq RemovedBody476_66 RemovedBody476_67

def RemovedBody476_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody476_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody476_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody476_72 : StackLang.HolProg 64 :=
.seq RemovedBody476_70 RemovedBody476_71

def RemovedBody476_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody476_72 RemovedBody476_73

def RemovedBody476_75 : StackLang.HolProg 64 :=
.seq RemovedBody476_69 RemovedBody476_74

def RemovedBody476_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody476_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody476_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 476 3

def RemovedBody476_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody476_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody476_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody476_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody476_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody476_85 : StackLang.HolProg 64 :=
.seq RemovedBody476_83 RemovedBody476_84

def RemovedBody476_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody476_87 : StackLang.HolProg 64 :=
.seq RemovedBody476_85 RemovedBody476_86

def RemovedBody476_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody476_89 : StackLang.HolProg 64 :=
.seq RemovedBody476_87 RemovedBody476_88

def RemovedBody476_90 : StackLang.HolProg 64 :=
.seq RemovedBody476_82 RemovedBody476_89

def RemovedBody476_91 : StackLang.HolProg 64 :=
.seq RemovedBody476_81 RemovedBody476_90

def RemovedBody476_92 : StackLang.HolProg 64 :=
.seq RemovedBody476_80 RemovedBody476_91

def RemovedBody476_93 : StackLang.HolProg 64 :=
.seq RemovedBody476_79 RemovedBody476_92

def RemovedBody476_94 : StackLang.HolProg 64 :=
.seq RemovedBody476_78 RemovedBody476_93

def RemovedBody476_95 : StackLang.HolProg 64 :=
.seq RemovedBody476_77 RemovedBody476_94

def RemovedBody476_96 : StackLang.HolProg 64 :=
.seq RemovedBody476_76 RemovedBody476_95

def RemovedBody476_97 : StackLang.HolProg 64 :=
.seq RemovedBody476_75 RemovedBody476_96

def RemovedBody476_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody476_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody476_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody476_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody476_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody476_106 : StackLang.HolProg 64 :=
.seq RemovedBody476_104 RemovedBody476_105

def RemovedBody476_107 : StackLang.HolProg 64 :=
.seq RemovedBody476_103 RemovedBody476_106

def RemovedBody476_108 : StackLang.HolProg 64 :=
.seq RemovedBody476_102 RemovedBody476_107

def RemovedBody476_109 : StackLang.HolProg 64 :=
.seq RemovedBody476_101 RemovedBody476_108

def RemovedBody476_110 : StackLang.HolProg 64 :=
.seq RemovedBody476_100 RemovedBody476_109

def RemovedBody476_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody476_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody476_113 : StackLang.HolProg 64 :=
.seq RemovedBody476_111 RemovedBody476_112

def RemovedBody476_114 : StackLang.HolProg 64 :=
.call (some (RemovedBody476_110, 0, 476, 2)) (Sum.inl 74) (some (RemovedBody476_113, 476, 3))

def RemovedBody476_115 : StackLang.HolProg 64 :=
.seq RemovedBody476_99 RemovedBody476_114

def RemovedBody476_116 : StackLang.HolProg 64 :=
.seq RemovedBody476_98 RemovedBody476_115

def RemovedBody476_117 : StackLang.HolProg 64 :=
.seq RemovedBody476_97 RemovedBody476_116

def RemovedBody476_118 : StackLang.HolProg 64 :=
.seq RemovedBody476_68 RemovedBody476_117

def RemovedBody476_119 : StackLang.HolProg 64 :=
.seq RemovedBody476_65 RemovedBody476_118

def RemovedBody476_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody476_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody476_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody476_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody476_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody476_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody476_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody476_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody476_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody476_131 : StackLang.HolProg 64 :=
.seq RemovedBody476_129 RemovedBody476_130

def RemovedBody476_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1497#64)

def RemovedBody476_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody476_135 : StackLang.HolProg 64 :=
.seq RemovedBody476_133 RemovedBody476_134

def RemovedBody476_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody476_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody476_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody476_139 : StackLang.HolProg 64 :=
.seq RemovedBody476_137 RemovedBody476_138

def RemovedBody476_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_141 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody476_139 RemovedBody476_140

def RemovedBody476_142 : StackLang.HolProg 64 :=
.seq RemovedBody476_136 RemovedBody476_141

def RemovedBody476_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody476_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody476_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 476 5

def RemovedBody476_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody476_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody476_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody476_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody476_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody476_152 : StackLang.HolProg 64 :=
.seq RemovedBody476_150 RemovedBody476_151

def RemovedBody476_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody476_154 : StackLang.HolProg 64 :=
.seq RemovedBody476_152 RemovedBody476_153

def RemovedBody476_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody476_156 : StackLang.HolProg 64 :=
.seq RemovedBody476_154 RemovedBody476_155

def RemovedBody476_157 : StackLang.HolProg 64 :=
.seq RemovedBody476_149 RemovedBody476_156

def RemovedBody476_158 : StackLang.HolProg 64 :=
.seq RemovedBody476_148 RemovedBody476_157

def RemovedBody476_159 : StackLang.HolProg 64 :=
.seq RemovedBody476_147 RemovedBody476_158

def RemovedBody476_160 : StackLang.HolProg 64 :=
.seq RemovedBody476_146 RemovedBody476_159

def RemovedBody476_161 : StackLang.HolProg 64 :=
.seq RemovedBody476_145 RemovedBody476_160

def RemovedBody476_162 : StackLang.HolProg 64 :=
.seq RemovedBody476_144 RemovedBody476_161

def RemovedBody476_163 : StackLang.HolProg 64 :=
.seq RemovedBody476_143 RemovedBody476_162

def RemovedBody476_164 : StackLang.HolProg 64 :=
.seq RemovedBody476_142 RemovedBody476_163

def RemovedBody476_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody476_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody476_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody476_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody476_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody476_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody476_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody476_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody476_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody476_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody476_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody476_179 : StackLang.HolProg 64 :=
.seq RemovedBody476_177 RemovedBody476_178

def RemovedBody476_180 : StackLang.HolProg 64 :=
.seq RemovedBody476_176 RemovedBody476_179

def RemovedBody476_181 : StackLang.HolProg 64 :=
.seq RemovedBody476_175 RemovedBody476_180

def RemovedBody476_182 : StackLang.HolProg 64 :=
.seq RemovedBody476_174 RemovedBody476_181

def RemovedBody476_183 : StackLang.HolProg 64 :=
.seq RemovedBody476_173 RemovedBody476_182

def RemovedBody476_184 : StackLang.HolProg 64 :=
.seq RemovedBody476_172 RemovedBody476_183

def RemovedBody476_185 : StackLang.HolProg 64 :=
.seq RemovedBody476_171 RemovedBody476_184

def RemovedBody476_186 : StackLang.HolProg 64 :=
.seq RemovedBody476_170 RemovedBody476_185

def RemovedBody476_187 : StackLang.HolProg 64 :=
.seq RemovedBody476_169 RemovedBody476_186

def RemovedBody476_188 : StackLang.HolProg 64 :=
.seq RemovedBody476_168 RemovedBody476_187

def RemovedBody476_189 : StackLang.HolProg 64 :=
.seq RemovedBody476_167 RemovedBody476_188

def RemovedBody476_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody476_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody476_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody476_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody476_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody476_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody476_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody476_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody476_198 : StackLang.HolProg 64 :=
.seq RemovedBody476_196 RemovedBody476_197

def RemovedBody476_199 : StackLang.HolProg 64 :=
.seq RemovedBody476_195 RemovedBody476_198

def RemovedBody476_200 : StackLang.HolProg 64 :=
.seq RemovedBody476_194 RemovedBody476_199

def RemovedBody476_201 : StackLang.HolProg 64 :=
.seq RemovedBody476_193 RemovedBody476_200

def RemovedBody476_202 : StackLang.HolProg 64 :=
.seq RemovedBody476_192 RemovedBody476_201

def RemovedBody476_203 : StackLang.HolProg 64 :=
.seq RemovedBody476_191 RemovedBody476_202

def RemovedBody476_204 : StackLang.HolProg 64 :=
.seq RemovedBody476_190 RemovedBody476_203

def RemovedBody476_205 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody476_206 : StackLang.HolProg 64 :=
.seq RemovedBody476_204 RemovedBody476_205

def RemovedBody476_207 : StackLang.HolProg 64 :=
.call (some (RemovedBody476_189, 0, 476, 4)) (Sum.inl 77) (some (RemovedBody476_206, 476, 5))

def RemovedBody476_208 : StackLang.HolProg 64 :=
.seq RemovedBody476_166 RemovedBody476_207

def RemovedBody476_209 : StackLang.HolProg 64 :=
.seq RemovedBody476_165 RemovedBody476_208

def RemovedBody476_210 : StackLang.HolProg 64 :=
.seq RemovedBody476_164 RemovedBody476_209

def RemovedBody476_211 : StackLang.HolProg 64 :=
.seq RemovedBody476_135 RemovedBody476_210

def RemovedBody476_212 : StackLang.HolProg 64 :=
.seq RemovedBody476_132 RemovedBody476_211

def RemovedBody476_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody476_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody476_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody476_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody476_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody476_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def RemovedBody476_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody476_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 232#64)))

def RemovedBody476_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody476_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_227 : StackLang.HolProg 64 :=
.seq RemovedBody476_225 RemovedBody476_226

def RemovedBody476_228 : StackLang.HolProg 64 :=
.seq RemovedBody476_224 RemovedBody476_227

def RemovedBody476_229 : StackLang.HolProg 64 :=
.seq RemovedBody476_223 RemovedBody476_228

def RemovedBody476_230 : StackLang.HolProg 64 :=
.seq RemovedBody476_222 RemovedBody476_229

def RemovedBody476_231 : StackLang.HolProg 64 :=
.seq RemovedBody476_221 RemovedBody476_230

def RemovedBody476_232 : StackLang.HolProg 64 :=
.seq RemovedBody476_220 RemovedBody476_231

def RemovedBody476_233 : StackLang.HolProg 64 :=
.seq RemovedBody476_219 RemovedBody476_232

def RemovedBody476_234 : StackLang.HolProg 64 :=
.seq RemovedBody476_218 RemovedBody476_233

def RemovedBody476_235 : StackLang.HolProg 64 :=
.seq RemovedBody476_217 RemovedBody476_234

def RemovedBody476_236 : StackLang.HolProg 64 :=
.seq RemovedBody476_216 RemovedBody476_235

def RemovedBody476_237 : StackLang.HolProg 64 :=
.seq RemovedBody476_215 RemovedBody476_236

def RemovedBody476_238 : StackLang.HolProg 64 :=
.seq RemovedBody476_214 RemovedBody476_237

def RemovedBody476_239 : StackLang.HolProg 64 :=
.seq RemovedBody476_213 RemovedBody476_238

def RemovedBody476_240 : StackLang.HolProg 64 :=
.seq RemovedBody476_212 RemovedBody476_239

def RemovedBody476_241 : StackLang.HolProg 64 :=
.seq RemovedBody476_131 RemovedBody476_240

def RemovedBody476_242 : StackLang.HolProg 64 :=
.seq RemovedBody476_128 RemovedBody476_241

def RemovedBody476_243 : StackLang.HolProg 64 :=
.seq RemovedBody476_127 RemovedBody476_242

def RemovedBody476_244 : StackLang.HolProg 64 :=
.seq RemovedBody476_126 RemovedBody476_243

def RemovedBody476_245 : StackLang.HolProg 64 :=
.seq RemovedBody476_125 RemovedBody476_244

def RemovedBody476_246 : StackLang.HolProg 64 :=
.seq RemovedBody476_124 RemovedBody476_245

def RemovedBody476_247 : StackLang.HolProg 64 :=
.seq RemovedBody476_123 RemovedBody476_246

def RemovedBody476_248 : StackLang.HolProg 64 :=
.seq RemovedBody476_122 RemovedBody476_247

def RemovedBody476_249 : StackLang.HolProg 64 :=
.seq RemovedBody476_121 RemovedBody476_248

def RemovedBody476_250 : StackLang.HolProg 64 :=
.seq RemovedBody476_120 RemovedBody476_249

def RemovedBody476_251 : StackLang.HolProg 64 :=
.seq RemovedBody476_119 RemovedBody476_250

def RemovedBody476_252 : StackLang.HolProg 64 :=
.seq RemovedBody476_64 RemovedBody476_251

def RemovedBody476_253 : StackLang.HolProg 64 :=
.seq RemovedBody476_51 RemovedBody476_252

def RemovedBody476_254 : StackLang.HolProg 64 :=
.seq RemovedBody476_50 RemovedBody476_253

def RemovedBody476_255 : StackLang.HolProg 64 :=
.seq RemovedBody476_49 RemovedBody476_254

def RemovedBody476_256 : StackLang.HolProg 64 :=
.seq RemovedBody476_48 RemovedBody476_255

def RemovedBody476_257 : StackLang.HolProg 64 :=
.seq RemovedBody476_39 RemovedBody476_256

def RemovedBody476_258 : StackLang.HolProg 64 :=
.seq RemovedBody476_38 RemovedBody476_257

def RemovedBody476_259 : StackLang.HolProg 64 :=
.seq RemovedBody476_37 RemovedBody476_258

def RemovedBody476_260 : StackLang.HolProg 64 :=
.seq RemovedBody476_36 RemovedBody476_259

def RemovedBody476_261 : StackLang.HolProg 64 :=
.seq RemovedBody476_35 RemovedBody476_260

def RemovedBody476_262 : StackLang.HolProg 64 :=
.seq RemovedBody476_34 RemovedBody476_261

def RemovedBody476_263 : StackLang.HolProg 64 :=
.seq RemovedBody476_33 RemovedBody476_262

def RemovedBody476_264 : StackLang.HolProg 64 :=
.seq RemovedBody476_18 RemovedBody476_263

def RemovedBody476_265 : StackLang.HolProg 64 :=
.seq RemovedBody476_17 RemovedBody476_264

def RemovedBody476_266 : StackLang.HolProg 64 :=
.seq RemovedBody476_16 RemovedBody476_265

def RemovedBody476_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_269 : StackLang.HolProg 64 :=
.seq RemovedBody476_267 RemovedBody476_268

def RemovedBody476_270 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody476_266 RemovedBody476_269

def RemovedBody476_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1024#64)

def RemovedBody476_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody476_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody476_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody476_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_280 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody476_281 : StackLang.HolProg 64 :=
.seq RemovedBody476_279 RemovedBody476_280

def RemovedBody476_282 : StackLang.HolProg 64 :=
.seq RemovedBody476_278 RemovedBody476_281

def RemovedBody476_283 : StackLang.HolProg 64 :=
.seq RemovedBody476_277 RemovedBody476_282

def RemovedBody476_284 : StackLang.HolProg 64 :=
.seq RemovedBody476_276 RemovedBody476_283

def RemovedBody476_285 : StackLang.HolProg 64 :=
.seq RemovedBody476_275 RemovedBody476_284

def RemovedBody476_286 : StackLang.HolProg 64 :=
.seq RemovedBody476_274 RemovedBody476_285

def RemovedBody476_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_288 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody476_286 RemovedBody476_287

def RemovedBody476_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody476_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody476_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody476_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody476_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody476_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody476_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def RemovedBody476_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody476_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody476_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 8#64))

def RemovedBody476_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 16#64))

def RemovedBody476_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def RemovedBody476_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody476_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody476_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody476_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody476_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody476_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody476_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody476_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody476_318 : StackLang.HolProg 64 :=
.seq RemovedBody476_316 RemovedBody476_317

def RemovedBody476_319 : StackLang.HolProg 64 :=
.seq RemovedBody476_315 RemovedBody476_318

def RemovedBody476_320 : StackLang.HolProg 64 :=
.seq RemovedBody476_314 RemovedBody476_319

def RemovedBody476_321 : StackLang.HolProg 64 :=
.seq RemovedBody476_313 RemovedBody476_320

def RemovedBody476_322 : StackLang.HolProg 64 :=
.seq RemovedBody476_312 RemovedBody476_321

def RemovedBody476_323 : StackLang.HolProg 64 :=
.seq RemovedBody476_311 RemovedBody476_322

def RemovedBody476_324 : StackLang.HolProg 64 :=
.seq RemovedBody476_310 RemovedBody476_323

def RemovedBody476_325 : StackLang.HolProg 64 :=
.seq RemovedBody476_309 RemovedBody476_324

def RemovedBody476_326 : StackLang.HolProg 64 :=
.seq RemovedBody476_308 RemovedBody476_325

def RemovedBody476_327 : StackLang.HolProg 64 :=
.seq RemovedBody476_307 RemovedBody476_326

def RemovedBody476_328 : StackLang.HolProg 64 :=
.seq RemovedBody476_306 RemovedBody476_327

def RemovedBody476_329 : StackLang.HolProg 64 :=
.seq RemovedBody476_305 RemovedBody476_328

def RemovedBody476_330 : StackLang.HolProg 64 :=
.seq RemovedBody476_304 RemovedBody476_329

def RemovedBody476_331 : StackLang.HolProg 64 :=
.seq RemovedBody476_303 RemovedBody476_330

def RemovedBody476_332 : StackLang.HolProg 64 :=
.seq RemovedBody476_302 RemovedBody476_331

def RemovedBody476_333 : StackLang.HolProg 64 :=
.seq RemovedBody476_301 RemovedBody476_332

def RemovedBody476_334 : StackLang.HolProg 64 :=
.seq RemovedBody476_300 RemovedBody476_333

def RemovedBody476_335 : StackLang.HolProg 64 :=
.seq RemovedBody476_299 RemovedBody476_334

def RemovedBody476_336 : StackLang.HolProg 64 :=
.seq RemovedBody476_298 RemovedBody476_335

def RemovedBody476_337 : StackLang.HolProg 64 :=
.seq RemovedBody476_297 RemovedBody476_336

def RemovedBody476_338 : StackLang.HolProg 64 :=
.seq RemovedBody476_296 RemovedBody476_337

def RemovedBody476_339 : StackLang.HolProg 64 :=
.seq RemovedBody476_295 RemovedBody476_338

def RemovedBody476_340 : StackLang.HolProg 64 :=
.seq RemovedBody476_294 RemovedBody476_339

def RemovedBody476_341 : StackLang.HolProg 64 :=
.seq RemovedBody476_293 RemovedBody476_340

def RemovedBody476_342 : StackLang.HolProg 64 :=
.seq RemovedBody476_292 RemovedBody476_341

def RemovedBody476_343 : StackLang.HolProg 64 :=
.seq RemovedBody476_291 RemovedBody476_342

def RemovedBody476_344 : StackLang.HolProg 64 :=
.seq RemovedBody476_290 RemovedBody476_343

def RemovedBody476_345 : StackLang.HolProg 64 :=
.seq RemovedBody476_289 RemovedBody476_344

def RemovedBody476_346 : StackLang.HolProg 64 :=
.seq RemovedBody476_288 RemovedBody476_345

def RemovedBody476_347 : StackLang.HolProg 64 :=
.seq RemovedBody476_273 RemovedBody476_346

def RemovedBody476_348 : StackLang.HolProg 64 :=
.seq RemovedBody476_272 RemovedBody476_347

def RemovedBody476_349 : StackLang.HolProg 64 :=
.seq RemovedBody476_271 RemovedBody476_348

def RemovedBody476_350 : StackLang.HolProg 64 :=
.seq RemovedBody476_270 RemovedBody476_349

def RemovedBody476_351 : StackLang.HolProg 64 :=
.seq RemovedBody476_15 RemovedBody476_350

def RemovedBody476_352 : StackLang.HolProg 64 :=
.seq RemovedBody476_14 RemovedBody476_351

def RemovedBody476_353 : StackLang.HolProg 64 :=
.seq RemovedBody476_13 RemovedBody476_352

def RemovedBody476_354 : StackLang.HolProg 64 :=
.seq RemovedBody476_12 RemovedBody476_353

def RemovedBody476_355 : StackLang.HolProg 64 :=
.seq RemovedBody476_11 RemovedBody476_354

def RemovedBody476_356 : StackLang.HolProg 64 :=
.seq RemovedBody476_10 RemovedBody476_355

def RemovedBody476_357 : StackLang.HolProg 64 :=
.seq RemovedBody476_9 RemovedBody476_356

def RemovedBody476_358 : StackLang.HolProg 64 :=
.seq RemovedBody476_8 RemovedBody476_357

def RemovedBody476_359 : StackLang.HolProg 64 :=
.seq RemovedBody476_7 RemovedBody476_358

def RemovedBody476_360 : StackLang.HolProg 64 :=
.seq RemovedBody476_6 RemovedBody476_359

def Removed476 : Nat × StackLang.HolProg 64 := (476, RemovedBody476_360)
theorem Removed476_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc476 = Removed476 := by
  kernel_rfl
#print axioms Removed476_eq
end InitECandidate.Proofs.BackendStages
