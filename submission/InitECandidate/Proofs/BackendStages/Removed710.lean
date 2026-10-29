import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc710
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody710_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody710_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody710_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody710_3 : StackLang.HolProg 64 :=
.seq RemovedBody710_1 RemovedBody710_2

def RemovedBody710_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody710_3 RemovedBody710_4

def RemovedBody710_6 : StackLang.HolProg 64 :=
.seq RemovedBody710_0 RemovedBody710_5

def RemovedBody710_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody710_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3152#64)

def RemovedBody710_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody710_11 : StackLang.HolProg 64 :=
.seq RemovedBody710_9 RemovedBody710_10

def RemovedBody710_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody710_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody710_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody710_15 : StackLang.HolProg 64 :=
.seq RemovedBody710_13 RemovedBody710_14

def RemovedBody710_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody710_15 RemovedBody710_16

def RemovedBody710_18 : StackLang.HolProg 64 :=
.seq RemovedBody710_12 RemovedBody710_17

def RemovedBody710_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody710_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody710_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 710 3

def RemovedBody710_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody710_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody710_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody710_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody710_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody710_28 : StackLang.HolProg 64 :=
.seq RemovedBody710_26 RemovedBody710_27

def RemovedBody710_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody710_30 : StackLang.HolProg 64 :=
.seq RemovedBody710_28 RemovedBody710_29

def RemovedBody710_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody710_32 : StackLang.HolProg 64 :=
.seq RemovedBody710_30 RemovedBody710_31

def RemovedBody710_33 : StackLang.HolProg 64 :=
.seq RemovedBody710_25 RemovedBody710_32

def RemovedBody710_34 : StackLang.HolProg 64 :=
.seq RemovedBody710_24 RemovedBody710_33

def RemovedBody710_35 : StackLang.HolProg 64 :=
.seq RemovedBody710_23 RemovedBody710_34

def RemovedBody710_36 : StackLang.HolProg 64 :=
.seq RemovedBody710_22 RemovedBody710_35

def RemovedBody710_37 : StackLang.HolProg 64 :=
.seq RemovedBody710_21 RemovedBody710_36

def RemovedBody710_38 : StackLang.HolProg 64 :=
.seq RemovedBody710_20 RemovedBody710_37

def RemovedBody710_39 : StackLang.HolProg 64 :=
.seq RemovedBody710_19 RemovedBody710_38

def RemovedBody710_40 : StackLang.HolProg 64 :=
.seq RemovedBody710_18 RemovedBody710_39

def RemovedBody710_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody710_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody710_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody710_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody710_48 : StackLang.HolProg 64 :=
.seq RemovedBody710_46 RemovedBody710_47

def RemovedBody710_49 : StackLang.HolProg 64 :=
.seq RemovedBody710_45 RemovedBody710_48

def RemovedBody710_50 : StackLang.HolProg 64 :=
.seq RemovedBody710_44 RemovedBody710_49

def RemovedBody710_51 : StackLang.HolProg 64 :=
.seq RemovedBody710_43 RemovedBody710_50

def RemovedBody710_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody710_54 : StackLang.HolProg 64 :=
.seq RemovedBody710_52 RemovedBody710_53

def RemovedBody710_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody710_51, 0, 710, 2)) (Sum.inl 708) (some (RemovedBody710_54, 710, 3))

def RemovedBody710_56 : StackLang.HolProg 64 :=
.seq RemovedBody710_42 RemovedBody710_55

def RemovedBody710_57 : StackLang.HolProg 64 :=
.seq RemovedBody710_41 RemovedBody710_56

def RemovedBody710_58 : StackLang.HolProg 64 :=
.seq RemovedBody710_40 RemovedBody710_57

def RemovedBody710_59 : StackLang.HolProg 64 :=
.seq RemovedBody710_11 RemovedBody710_58

def RemovedBody710_60 : StackLang.HolProg 64 :=
.seq RemovedBody710_8 RemovedBody710_59

def RemovedBody710_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody710_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody710_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1873798617647539866#64)

def RemovedBody710_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 5412103778470702295#64)

def RemovedBody710_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7239337960414712511#64)

def RemovedBody710_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7435674573564081700#64)

def RemovedBody710_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2210141511517208575#64)

def RemovedBody710_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13402431016077863595#64)

def RemovedBody710_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody710_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody710_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody710_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody710_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody710_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody710_75 : StackLang.HolProg 64 :=
.seq RemovedBody710_73 RemovedBody710_74

def RemovedBody710_76 : StackLang.HolProg 64 :=
.seq RemovedBody710_72 RemovedBody710_75

def RemovedBody710_77 : StackLang.HolProg 64 :=
.seq RemovedBody710_71 RemovedBody710_76

def RemovedBody710_78 : StackLang.HolProg 64 :=
.seq RemovedBody710_70 RemovedBody710_77

def RemovedBody710_79 : StackLang.HolProg 64 :=
.seq RemovedBody710_69 RemovedBody710_78

def RemovedBody710_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3153#64)

def RemovedBody710_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody710_83 : StackLang.HolProg 64 :=
.seq RemovedBody710_81 RemovedBody710_82

def RemovedBody710_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody710_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody710_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody710_87 : StackLang.HolProg 64 :=
.seq RemovedBody710_85 RemovedBody710_86

def RemovedBody710_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_89 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody710_87 RemovedBody710_88

def RemovedBody710_90 : StackLang.HolProg 64 :=
.seq RemovedBody710_84 RemovedBody710_89

def RemovedBody710_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody710_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody710_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 710 5

def RemovedBody710_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody710_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody710_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody710_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody710_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody710_100 : StackLang.HolProg 64 :=
.seq RemovedBody710_98 RemovedBody710_99

def RemovedBody710_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody710_102 : StackLang.HolProg 64 :=
.seq RemovedBody710_100 RemovedBody710_101

def RemovedBody710_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody710_104 : StackLang.HolProg 64 :=
.seq RemovedBody710_102 RemovedBody710_103

def RemovedBody710_105 : StackLang.HolProg 64 :=
.seq RemovedBody710_97 RemovedBody710_104

def RemovedBody710_106 : StackLang.HolProg 64 :=
.seq RemovedBody710_96 RemovedBody710_105

def RemovedBody710_107 : StackLang.HolProg 64 :=
.seq RemovedBody710_95 RemovedBody710_106

def RemovedBody710_108 : StackLang.HolProg 64 :=
.seq RemovedBody710_94 RemovedBody710_107

def RemovedBody710_109 : StackLang.HolProg 64 :=
.seq RemovedBody710_93 RemovedBody710_108

def RemovedBody710_110 : StackLang.HolProg 64 :=
.seq RemovedBody710_92 RemovedBody710_109

def RemovedBody710_111 : StackLang.HolProg 64 :=
.seq RemovedBody710_91 RemovedBody710_110

def RemovedBody710_112 : StackLang.HolProg 64 :=
.seq RemovedBody710_90 RemovedBody710_111

def RemovedBody710_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody710_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody710_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody710_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody710_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody710_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody710_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody710_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody710_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody710_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody710_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody710_127 : StackLang.HolProg 64 :=
.seq RemovedBody710_125 RemovedBody710_126

def RemovedBody710_128 : StackLang.HolProg 64 :=
.seq RemovedBody710_124 RemovedBody710_127

def RemovedBody710_129 : StackLang.HolProg 64 :=
.seq RemovedBody710_123 RemovedBody710_128

def RemovedBody710_130 : StackLang.HolProg 64 :=
.seq RemovedBody710_122 RemovedBody710_129

def RemovedBody710_131 : StackLang.HolProg 64 :=
.seq RemovedBody710_121 RemovedBody710_130

def RemovedBody710_132 : StackLang.HolProg 64 :=
.seq RemovedBody710_120 RemovedBody710_131

def RemovedBody710_133 : StackLang.HolProg 64 :=
.seq RemovedBody710_119 RemovedBody710_132

def RemovedBody710_134 : StackLang.HolProg 64 :=
.seq RemovedBody710_118 RemovedBody710_133

def RemovedBody710_135 : StackLang.HolProg 64 :=
.seq RemovedBody710_117 RemovedBody710_134

def RemovedBody710_136 : StackLang.HolProg 64 :=
.seq RemovedBody710_116 RemovedBody710_135

def RemovedBody710_137 : StackLang.HolProg 64 :=
.seq RemovedBody710_115 RemovedBody710_136

def RemovedBody710_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody710_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody710_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody710_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody710_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody710_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody710_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody710_145 : StackLang.HolProg 64 :=
.seq RemovedBody710_143 RemovedBody710_144

def RemovedBody710_146 : StackLang.HolProg 64 :=
.seq RemovedBody710_142 RemovedBody710_145

def RemovedBody710_147 : StackLang.HolProg 64 :=
.seq RemovedBody710_141 RemovedBody710_146

def RemovedBody710_148 : StackLang.HolProg 64 :=
.seq RemovedBody710_140 RemovedBody710_147

def RemovedBody710_149 : StackLang.HolProg 64 :=
.seq RemovedBody710_139 RemovedBody710_148

def RemovedBody710_150 : StackLang.HolProg 64 :=
.seq RemovedBody710_138 RemovedBody710_149

def RemovedBody710_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody710_152 : StackLang.HolProg 64 :=
.seq RemovedBody710_150 RemovedBody710_151

def RemovedBody710_153 : StackLang.HolProg 64 :=
.call (some (RemovedBody710_137, 0, 710, 4)) (Sum.inl 709) (some (RemovedBody710_152, 710, 5))

def RemovedBody710_154 : StackLang.HolProg 64 :=
.seq RemovedBody710_114 RemovedBody710_153

def RemovedBody710_155 : StackLang.HolProg 64 :=
.seq RemovedBody710_113 RemovedBody710_154

def RemovedBody710_156 : StackLang.HolProg 64 :=
.seq RemovedBody710_112 RemovedBody710_155

def RemovedBody710_157 : StackLang.HolProg 64 :=
.seq RemovedBody710_83 RemovedBody710_156

def RemovedBody710_158 : StackLang.HolProg 64 :=
.seq RemovedBody710_80 RemovedBody710_157

def RemovedBody710_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody710_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody710_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody710_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14)))

def RemovedBody710_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody710_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody710_166 : StackLang.HolProg 64 :=
.seq RemovedBody710_164 RemovedBody710_165

def RemovedBody710_167 : StackLang.HolProg 64 :=
.seq RemovedBody710_163 RemovedBody710_166

def RemovedBody710_168 : StackLang.HolProg 64 :=
.seq RemovedBody710_162 RemovedBody710_167

def RemovedBody710_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody710_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody710_168 RemovedBody710_169

def RemovedBody710_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody710_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody710_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody710_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody710_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody710_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody710_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def RemovedBody710_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def RemovedBody710_179 : StackLang.HolProg 64 :=
.seq RemovedBody710_177 RemovedBody710_178

def RemovedBody710_180 : StackLang.HolProg 64 :=
.seq RemovedBody710_176 RemovedBody710_179

def RemovedBody710_181 : StackLang.HolProg 64 :=
.seq RemovedBody710_175 RemovedBody710_180

def RemovedBody710_182 : StackLang.HolProg 64 :=
.seq RemovedBody710_174 RemovedBody710_181

def RemovedBody710_183 : StackLang.HolProg 64 :=
.seq RemovedBody710_173 RemovedBody710_182

def RemovedBody710_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody710_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody710_186 : StackLang.HolProg 64 :=
.seq RemovedBody710_184 RemovedBody710_185

def RemovedBody710_187 : StackLang.HolProg 64 :=
.seq RemovedBody710_183 RemovedBody710_186

def RemovedBody710_188 : StackLang.HolProg 64 :=
.seq RemovedBody710_172 RemovedBody710_187

def RemovedBody710_189 : StackLang.HolProg 64 :=
.seq RemovedBody710_171 RemovedBody710_188

def RemovedBody710_190 : StackLang.HolProg 64 :=
.seq RemovedBody710_170 RemovedBody710_189

def RemovedBody710_191 : StackLang.HolProg 64 :=
.seq RemovedBody710_161 RemovedBody710_190

def RemovedBody710_192 : StackLang.HolProg 64 :=
.seq RemovedBody710_160 RemovedBody710_191

def RemovedBody710_193 : StackLang.HolProg 64 :=
.seq RemovedBody710_159 RemovedBody710_192

def RemovedBody710_194 : StackLang.HolProg 64 :=
.seq RemovedBody710_158 RemovedBody710_193

def RemovedBody710_195 : StackLang.HolProg 64 :=
.seq RemovedBody710_79 RemovedBody710_194

def RemovedBody710_196 : StackLang.HolProg 64 :=
.seq RemovedBody710_68 RemovedBody710_195

def RemovedBody710_197 : StackLang.HolProg 64 :=
.seq RemovedBody710_67 RemovedBody710_196

def RemovedBody710_198 : StackLang.HolProg 64 :=
.seq RemovedBody710_66 RemovedBody710_197

def RemovedBody710_199 : StackLang.HolProg 64 :=
.seq RemovedBody710_65 RemovedBody710_198

def RemovedBody710_200 : StackLang.HolProg 64 :=
.seq RemovedBody710_64 RemovedBody710_199

def RemovedBody710_201 : StackLang.HolProg 64 :=
.seq RemovedBody710_63 RemovedBody710_200

def RemovedBody710_202 : StackLang.HolProg 64 :=
.seq RemovedBody710_62 RemovedBody710_201

def RemovedBody710_203 : StackLang.HolProg 64 :=
.seq RemovedBody710_61 RemovedBody710_202

def RemovedBody710_204 : StackLang.HolProg 64 :=
.seq RemovedBody710_60 RemovedBody710_203

def RemovedBody710_205 : StackLang.HolProg 64 :=
.seq RemovedBody710_7 RemovedBody710_204

def RemovedBody710_206 : StackLang.HolProg 64 :=
.seq RemovedBody710_6 RemovedBody710_205

def Removed710 : Nat × StackLang.HolProg 64 := (710, RemovedBody710_206)
theorem Removed710_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc710 = Removed710 := by
  kernel_rfl
#print axioms Removed710_eq
end InitECandidate.Proofs.BackendStages
