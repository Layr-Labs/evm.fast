import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc610
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody610_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody610_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody610_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody610_3 : StackLang.HolProg 64 :=
.seq RemovedBody610_1 RemovedBody610_2

def RemovedBody610_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody610_3 RemovedBody610_4

def RemovedBody610_6 : StackLang.HolProg 64 :=
.seq RemovedBody610_0 RemovedBody610_5

def RemovedBody610_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody610_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody610_9 : StackLang.HolProg 64 :=
.seq RemovedBody610_7 RemovedBody610_8

def RemovedBody610_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2345#64)

def RemovedBody610_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody610_13 : StackLang.HolProg 64 :=
.seq RemovedBody610_11 RemovedBody610_12

def RemovedBody610_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody610_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody610_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody610_17 : StackLang.HolProg 64 :=
.seq RemovedBody610_15 RemovedBody610_16

def RemovedBody610_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody610_17 RemovedBody610_18

def RemovedBody610_20 : StackLang.HolProg 64 :=
.seq RemovedBody610_14 RemovedBody610_19

def RemovedBody610_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody610_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody610_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 610 3

def RemovedBody610_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody610_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody610_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody610_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody610_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody610_30 : StackLang.HolProg 64 :=
.seq RemovedBody610_28 RemovedBody610_29

def RemovedBody610_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody610_32 : StackLang.HolProg 64 :=
.seq RemovedBody610_30 RemovedBody610_31

def RemovedBody610_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody610_34 : StackLang.HolProg 64 :=
.seq RemovedBody610_32 RemovedBody610_33

def RemovedBody610_35 : StackLang.HolProg 64 :=
.seq RemovedBody610_27 RemovedBody610_34

def RemovedBody610_36 : StackLang.HolProg 64 :=
.seq RemovedBody610_26 RemovedBody610_35

def RemovedBody610_37 : StackLang.HolProg 64 :=
.seq RemovedBody610_25 RemovedBody610_36

def RemovedBody610_38 : StackLang.HolProg 64 :=
.seq RemovedBody610_24 RemovedBody610_37

def RemovedBody610_39 : StackLang.HolProg 64 :=
.seq RemovedBody610_23 RemovedBody610_38

def RemovedBody610_40 : StackLang.HolProg 64 :=
.seq RemovedBody610_22 RemovedBody610_39

def RemovedBody610_41 : StackLang.HolProg 64 :=
.seq RemovedBody610_21 RemovedBody610_40

def RemovedBody610_42 : StackLang.HolProg 64 :=
.seq RemovedBody610_20 RemovedBody610_41

def RemovedBody610_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody610_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody610_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody610_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody610_50 : StackLang.HolProg 64 :=
.seq RemovedBody610_48 RemovedBody610_49

def RemovedBody610_51 : StackLang.HolProg 64 :=
.seq RemovedBody610_47 RemovedBody610_50

def RemovedBody610_52 : StackLang.HolProg 64 :=
.seq RemovedBody610_46 RemovedBody610_51

def RemovedBody610_53 : StackLang.HolProg 64 :=
.seq RemovedBody610_45 RemovedBody610_52

def RemovedBody610_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody610_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody610_56 : StackLang.HolProg 64 :=
.seq RemovedBody610_54 RemovedBody610_55

def RemovedBody610_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody610_53, 0, 610, 2)) (Sum.inl 609) (some (RemovedBody610_56, 610, 3))

def RemovedBody610_58 : StackLang.HolProg 64 :=
.seq RemovedBody610_44 RemovedBody610_57

def RemovedBody610_59 : StackLang.HolProg 64 :=
.seq RemovedBody610_43 RemovedBody610_58

def RemovedBody610_60 : StackLang.HolProg 64 :=
.seq RemovedBody610_42 RemovedBody610_59

def RemovedBody610_61 : StackLang.HolProg 64 :=
.seq RemovedBody610_13 RemovedBody610_60

def RemovedBody610_62 : StackLang.HolProg 64 :=
.seq RemovedBody610_10 RemovedBody610_61

def RemovedBody610_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody610_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody610_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody610_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody610_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody610_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody610_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 192#64))

def RemovedBody610_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody610_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 192#64))

def RemovedBody610_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody610_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody610_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody610_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 72#64))

def RemovedBody610_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody610_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 192#64))

def RemovedBody610_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody610_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody610_84 : StackLang.HolProg 64 :=
.seq RemovedBody610_82 RemovedBody610_83

def RemovedBody610_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody610_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_87 : StackLang.HolProg 64 :=
.seq RemovedBody610_85 RemovedBody610_86

def RemovedBody610_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody610_84 RemovedBody610_87

def RemovedBody610_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody610_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody610_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def RemovedBody610_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody610_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody610_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody610_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody610_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 72#64))

def RemovedBody610_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody610_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody610_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody610_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody610_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 192#64))

def RemovedBody610_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody610_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody610_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def RemovedBody610_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody610_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody610_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody610_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody610_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody610_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody610_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody610_126 : StackLang.HolProg 64 :=
.seq RemovedBody610_124 RemovedBody610_125

def RemovedBody610_127 : StackLang.HolProg 64 :=
.seq RemovedBody610_123 RemovedBody610_126

def RemovedBody610_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody610_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody610_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody610_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody610_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody610_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody610_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody610_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody610_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody610_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody610_141 : StackLang.HolProg 64 :=
.seq RemovedBody610_139 RemovedBody610_140

def RemovedBody610_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody610_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody610_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody610_145 : StackLang.HolProg 64 :=
.seq RemovedBody610_143 RemovedBody610_144

def RemovedBody610_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody610_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody610_148 : StackLang.HolProg 64 :=
.seq RemovedBody610_146 RemovedBody610_147

def RemovedBody610_149 : StackLang.HolProg 64 :=
.seq RemovedBody610_145 RemovedBody610_148

def RemovedBody610_150 : StackLang.HolProg 64 :=
.seq RemovedBody610_142 RemovedBody610_149

def RemovedBody610_151 : StackLang.HolProg 64 :=
.seq RemovedBody610_141 RemovedBody610_150

def RemovedBody610_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2346#64)

def RemovedBody610_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody610_155 : StackLang.HolProg 64 :=
.seq RemovedBody610_153 RemovedBody610_154

def RemovedBody610_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody610_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody610_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody610_159 : StackLang.HolProg 64 :=
.seq RemovedBody610_157 RemovedBody610_158

def RemovedBody610_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody610_159 RemovedBody610_160

def RemovedBody610_162 : StackLang.HolProg 64 :=
.seq RemovedBody610_156 RemovedBody610_161

def RemovedBody610_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody610_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody610_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 610 5

def RemovedBody610_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody610_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody610_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody610_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody610_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody610_172 : StackLang.HolProg 64 :=
.seq RemovedBody610_170 RemovedBody610_171

def RemovedBody610_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody610_174 : StackLang.HolProg 64 :=
.seq RemovedBody610_172 RemovedBody610_173

def RemovedBody610_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody610_176 : StackLang.HolProg 64 :=
.seq RemovedBody610_174 RemovedBody610_175

def RemovedBody610_177 : StackLang.HolProg 64 :=
.seq RemovedBody610_169 RemovedBody610_176

def RemovedBody610_178 : StackLang.HolProg 64 :=
.seq RemovedBody610_168 RemovedBody610_177

def RemovedBody610_179 : StackLang.HolProg 64 :=
.seq RemovedBody610_167 RemovedBody610_178

def RemovedBody610_180 : StackLang.HolProg 64 :=
.seq RemovedBody610_166 RemovedBody610_179

def RemovedBody610_181 : StackLang.HolProg 64 :=
.seq RemovedBody610_165 RemovedBody610_180

def RemovedBody610_182 : StackLang.HolProg 64 :=
.seq RemovedBody610_164 RemovedBody610_181

def RemovedBody610_183 : StackLang.HolProg 64 :=
.seq RemovedBody610_163 RemovedBody610_182

def RemovedBody610_184 : StackLang.HolProg 64 :=
.seq RemovedBody610_162 RemovedBody610_183

def RemovedBody610_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody610_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody610_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody610_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody610_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody610_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody610_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody610_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody610_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody610_197 : StackLang.HolProg 64 :=
.seq RemovedBody610_195 RemovedBody610_196

def RemovedBody610_198 : StackLang.HolProg 64 :=
.seq RemovedBody610_194 RemovedBody610_197

def RemovedBody610_199 : StackLang.HolProg 64 :=
.seq RemovedBody610_193 RemovedBody610_198

def RemovedBody610_200 : StackLang.HolProg 64 :=
.seq RemovedBody610_192 RemovedBody610_199

def RemovedBody610_201 : StackLang.HolProg 64 :=
.seq RemovedBody610_191 RemovedBody610_200

def RemovedBody610_202 : StackLang.HolProg 64 :=
.seq RemovedBody610_190 RemovedBody610_201

def RemovedBody610_203 : StackLang.HolProg 64 :=
.seq RemovedBody610_189 RemovedBody610_202

def RemovedBody610_204 : StackLang.HolProg 64 :=
.seq RemovedBody610_188 RemovedBody610_203

def RemovedBody610_205 : StackLang.HolProg 64 :=
.seq RemovedBody610_187 RemovedBody610_204

def RemovedBody610_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody610_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody610_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody610_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody610_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody610_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody610_212 : StackLang.HolProg 64 :=
.seq RemovedBody610_210 RemovedBody610_211

def RemovedBody610_213 : StackLang.HolProg 64 :=
.seq RemovedBody610_209 RemovedBody610_212

def RemovedBody610_214 : StackLang.HolProg 64 :=
.seq RemovedBody610_208 RemovedBody610_213

def RemovedBody610_215 : StackLang.HolProg 64 :=
.seq RemovedBody610_207 RemovedBody610_214

def RemovedBody610_216 : StackLang.HolProg 64 :=
.seq RemovedBody610_206 RemovedBody610_215

def RemovedBody610_217 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody610_218 : StackLang.HolProg 64 :=
.seq RemovedBody610_216 RemovedBody610_217

def RemovedBody610_219 : StackLang.HolProg 64 :=
.call (some (RemovedBody610_205, 0, 610, 4)) (Sum.inl 545) (some (RemovedBody610_218, 610, 5))

def RemovedBody610_220 : StackLang.HolProg 64 :=
.seq RemovedBody610_186 RemovedBody610_219

def RemovedBody610_221 : StackLang.HolProg 64 :=
.seq RemovedBody610_185 RemovedBody610_220

def RemovedBody610_222 : StackLang.HolProg 64 :=
.seq RemovedBody610_184 RemovedBody610_221

def RemovedBody610_223 : StackLang.HolProg 64 :=
.seq RemovedBody610_155 RemovedBody610_222

def RemovedBody610_224 : StackLang.HolProg 64 :=
.seq RemovedBody610_152 RemovedBody610_223

def RemovedBody610_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody610_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody610_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody610_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody610_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody610_231 : StackLang.HolProg 64 :=
.seq RemovedBody610_229 RemovedBody610_230

def RemovedBody610_232 : StackLang.HolProg 64 :=
.seq RemovedBody610_228 RemovedBody610_231

def RemovedBody610_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody610_234 : StackLang.HolProg 64 :=
.seq RemovedBody610_232 RemovedBody610_233

def RemovedBody610_235 : StackLang.HolProg 64 :=
.seq RemovedBody610_227 RemovedBody610_234

def RemovedBody610_236 : StackLang.HolProg 64 :=
.seq RemovedBody610_226 RemovedBody610_235

def RemovedBody610_237 : StackLang.HolProg 64 :=
.seq RemovedBody610_225 RemovedBody610_236

def RemovedBody610_238 : StackLang.HolProg 64 :=
.seq RemovedBody610_224 RemovedBody610_237

def RemovedBody610_239 : StackLang.HolProg 64 :=
.seq RemovedBody610_151 RemovedBody610_238

def RemovedBody610_240 : StackLang.HolProg 64 :=
.seq RemovedBody610_138 RemovedBody610_239

def RemovedBody610_241 : StackLang.HolProg 64 :=
.seq RemovedBody610_137 RemovedBody610_240

def RemovedBody610_242 : StackLang.HolProg 64 :=
.seq RemovedBody610_136 RemovedBody610_241

def RemovedBody610_243 : StackLang.HolProg 64 :=
.seq RemovedBody610_135 RemovedBody610_242

def RemovedBody610_244 : StackLang.HolProg 64 :=
.seq RemovedBody610_134 RemovedBody610_243

def RemovedBody610_245 : StackLang.HolProg 64 :=
.seq RemovedBody610_133 RemovedBody610_244

def RemovedBody610_246 : StackLang.HolProg 64 :=
.seq RemovedBody610_132 RemovedBody610_245

def RemovedBody610_247 : StackLang.HolProg 64 :=
.seq RemovedBody610_131 RemovedBody610_246

def RemovedBody610_248 : StackLang.HolProg 64 :=
.seq RemovedBody610_130 RemovedBody610_247

def RemovedBody610_249 : StackLang.HolProg 64 :=
.seq RemovedBody610_129 RemovedBody610_248

def RemovedBody610_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody610_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody610_252 : StackLang.HolProg 64 :=
.seq RemovedBody610_250 RemovedBody610_251

def RemovedBody610_253 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody610_249 RemovedBody610_252

def RemovedBody610_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody610_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody610_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody610_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody610_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody610_259 : StackLang.HolProg 64 :=
.seq RemovedBody610_257 RemovedBody610_258

def RemovedBody610_260 : StackLang.HolProg 64 :=
.seq RemovedBody610_256 RemovedBody610_259

def RemovedBody610_261 : StackLang.HolProg 64 :=
.seq RemovedBody610_255 RemovedBody610_260

def RemovedBody610_262 : StackLang.HolProg 64 :=
.seq RemovedBody610_254 RemovedBody610_261

def RemovedBody610_263 : StackLang.HolProg 64 :=
.seq RemovedBody610_253 RemovedBody610_262

def RemovedBody610_264 : StackLang.HolProg 64 :=
.seq RemovedBody610_128 RemovedBody610_263

def RemovedBody610_265 : StackLang.HolProg 64 :=
.loop RemovedBody610_264

def RemovedBody610_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody610_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody610_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody610_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody610_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody610_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody610_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody610_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def RemovedBody610_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def RemovedBody610_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody610_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody610_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody610_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 136#64))

def RemovedBody610_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 136#64))

def RemovedBody610_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2347#64)

def RemovedBody610_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody610_288 : StackLang.HolProg 64 :=
.seq RemovedBody610_286 RemovedBody610_287

def RemovedBody610_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody610_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody610_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody610_292 : StackLang.HolProg 64 :=
.seq RemovedBody610_290 RemovedBody610_291

def RemovedBody610_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_294 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody610_292 RemovedBody610_293

def RemovedBody610_295 : StackLang.HolProg 64 :=
.seq RemovedBody610_289 RemovedBody610_294

def RemovedBody610_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody610_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody610_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 610 7

def RemovedBody610_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody610_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody610_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody610_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody610_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody610_305 : StackLang.HolProg 64 :=
.seq RemovedBody610_303 RemovedBody610_304

def RemovedBody610_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody610_307 : StackLang.HolProg 64 :=
.seq RemovedBody610_305 RemovedBody610_306

def RemovedBody610_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody610_309 : StackLang.HolProg 64 :=
.seq RemovedBody610_307 RemovedBody610_308

def RemovedBody610_310 : StackLang.HolProg 64 :=
.seq RemovedBody610_302 RemovedBody610_309

def RemovedBody610_311 : StackLang.HolProg 64 :=
.seq RemovedBody610_301 RemovedBody610_310

def RemovedBody610_312 : StackLang.HolProg 64 :=
.seq RemovedBody610_300 RemovedBody610_311

def RemovedBody610_313 : StackLang.HolProg 64 :=
.seq RemovedBody610_299 RemovedBody610_312

def RemovedBody610_314 : StackLang.HolProg 64 :=
.seq RemovedBody610_298 RemovedBody610_313

def RemovedBody610_315 : StackLang.HolProg 64 :=
.seq RemovedBody610_297 RemovedBody610_314

def RemovedBody610_316 : StackLang.HolProg 64 :=
.seq RemovedBody610_296 RemovedBody610_315

def RemovedBody610_317 : StackLang.HolProg 64 :=
.seq RemovedBody610_295 RemovedBody610_316

def RemovedBody610_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody610_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody610_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody610_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody610_325 : StackLang.HolProg 64 :=
.seq RemovedBody610_323 RemovedBody610_324

def RemovedBody610_326 : StackLang.HolProg 64 :=
.seq RemovedBody610_322 RemovedBody610_325

def RemovedBody610_327 : StackLang.HolProg 64 :=
.seq RemovedBody610_321 RemovedBody610_326

def RemovedBody610_328 : StackLang.HolProg 64 :=
.seq RemovedBody610_320 RemovedBody610_327

def RemovedBody610_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody610_330 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody610_331 : StackLang.HolProg 64 :=
.seq RemovedBody610_329 RemovedBody610_330

def RemovedBody610_332 : StackLang.HolProg 64 :=
.call (some (RemovedBody610_328, 0, 610, 6)) (Sum.inl 432) (some (RemovedBody610_331, 610, 7))

def RemovedBody610_333 : StackLang.HolProg 64 :=
.seq RemovedBody610_319 RemovedBody610_332

def RemovedBody610_334 : StackLang.HolProg 64 :=
.seq RemovedBody610_318 RemovedBody610_333

def RemovedBody610_335 : StackLang.HolProg 64 :=
.seq RemovedBody610_317 RemovedBody610_334

def RemovedBody610_336 : StackLang.HolProg 64 :=
.seq RemovedBody610_288 RemovedBody610_335

def RemovedBody610_337 : StackLang.HolProg 64 :=
.seq RemovedBody610_285 RemovedBody610_336

def RemovedBody610_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody610_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody610_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody610_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody610_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody610_343 : StackLang.HolProg 64 :=
.seq RemovedBody610_341 RemovedBody610_342

def RemovedBody610_344 : StackLang.HolProg 64 :=
.seq RemovedBody610_340 RemovedBody610_343

def RemovedBody610_345 : StackLang.HolProg 64 :=
.seq RemovedBody610_339 RemovedBody610_344

def RemovedBody610_346 : StackLang.HolProg 64 :=
.seq RemovedBody610_338 RemovedBody610_345

def RemovedBody610_347 : StackLang.HolProg 64 :=
.seq RemovedBody610_337 RemovedBody610_346

def RemovedBody610_348 : StackLang.HolProg 64 :=
.seq RemovedBody610_284 RemovedBody610_347

def RemovedBody610_349 : StackLang.HolProg 64 :=
.seq RemovedBody610_283 RemovedBody610_348

def RemovedBody610_350 : StackLang.HolProg 64 :=
.seq RemovedBody610_282 RemovedBody610_349

def RemovedBody610_351 : StackLang.HolProg 64 :=
.seq RemovedBody610_281 RemovedBody610_350

def RemovedBody610_352 : StackLang.HolProg 64 :=
.seq RemovedBody610_280 RemovedBody610_351

def RemovedBody610_353 : StackLang.HolProg 64 :=
.seq RemovedBody610_279 RemovedBody610_352

def RemovedBody610_354 : StackLang.HolProg 64 :=
.seq RemovedBody610_278 RemovedBody610_353

def RemovedBody610_355 : StackLang.HolProg 64 :=
.seq RemovedBody610_277 RemovedBody610_354

def RemovedBody610_356 : StackLang.HolProg 64 :=
.seq RemovedBody610_276 RemovedBody610_355

def RemovedBody610_357 : StackLang.HolProg 64 :=
.seq RemovedBody610_275 RemovedBody610_356

def RemovedBody610_358 : StackLang.HolProg 64 :=
.seq RemovedBody610_274 RemovedBody610_357

def RemovedBody610_359 : StackLang.HolProg 64 :=
.seq RemovedBody610_273 RemovedBody610_358

def RemovedBody610_360 : StackLang.HolProg 64 :=
.seq RemovedBody610_272 RemovedBody610_359

def RemovedBody610_361 : StackLang.HolProg 64 :=
.seq RemovedBody610_271 RemovedBody610_360

def RemovedBody610_362 : StackLang.HolProg 64 :=
.seq RemovedBody610_270 RemovedBody610_361

def RemovedBody610_363 : StackLang.HolProg 64 :=
.seq RemovedBody610_269 RemovedBody610_362

def RemovedBody610_364 : StackLang.HolProg 64 :=
.seq RemovedBody610_268 RemovedBody610_363

def RemovedBody610_365 : StackLang.HolProg 64 :=
.seq RemovedBody610_267 RemovedBody610_364

def RemovedBody610_366 : StackLang.HolProg 64 :=
.seq RemovedBody610_266 RemovedBody610_365

def RemovedBody610_367 : StackLang.HolProg 64 :=
.seq RemovedBody610_265 RemovedBody610_366

def RemovedBody610_368 : StackLang.HolProg 64 :=
.seq RemovedBody610_127 RemovedBody610_367

def RemovedBody610_369 : StackLang.HolProg 64 :=
.seq RemovedBody610_122 RemovedBody610_368

def RemovedBody610_370 : StackLang.HolProg 64 :=
.seq RemovedBody610_121 RemovedBody610_369

def RemovedBody610_371 : StackLang.HolProg 64 :=
.seq RemovedBody610_120 RemovedBody610_370

def RemovedBody610_372 : StackLang.HolProg 64 :=
.seq RemovedBody610_119 RemovedBody610_371

def RemovedBody610_373 : StackLang.HolProg 64 :=
.seq RemovedBody610_118 RemovedBody610_372

def RemovedBody610_374 : StackLang.HolProg 64 :=
.seq RemovedBody610_117 RemovedBody610_373

def RemovedBody610_375 : StackLang.HolProg 64 :=
.seq RemovedBody610_116 RemovedBody610_374

def RemovedBody610_376 : StackLang.HolProg 64 :=
.seq RemovedBody610_115 RemovedBody610_375

def RemovedBody610_377 : StackLang.HolProg 64 :=
.seq RemovedBody610_114 RemovedBody610_376

def RemovedBody610_378 : StackLang.HolProg 64 :=
.seq RemovedBody610_113 RemovedBody610_377

def RemovedBody610_379 : StackLang.HolProg 64 :=
.seq RemovedBody610_112 RemovedBody610_378

def RemovedBody610_380 : StackLang.HolProg 64 :=
.seq RemovedBody610_111 RemovedBody610_379

def RemovedBody610_381 : StackLang.HolProg 64 :=
.seq RemovedBody610_110 RemovedBody610_380

def RemovedBody610_382 : StackLang.HolProg 64 :=
.seq RemovedBody610_109 RemovedBody610_381

def RemovedBody610_383 : StackLang.HolProg 64 :=
.seq RemovedBody610_108 RemovedBody610_382

def RemovedBody610_384 : StackLang.HolProg 64 :=
.seq RemovedBody610_107 RemovedBody610_383

def RemovedBody610_385 : StackLang.HolProg 64 :=
.seq RemovedBody610_106 RemovedBody610_384

def RemovedBody610_386 : StackLang.HolProg 64 :=
.seq RemovedBody610_105 RemovedBody610_385

def RemovedBody610_387 : StackLang.HolProg 64 :=
.seq RemovedBody610_104 RemovedBody610_386

def RemovedBody610_388 : StackLang.HolProg 64 :=
.seq RemovedBody610_103 RemovedBody610_387

def RemovedBody610_389 : StackLang.HolProg 64 :=
.seq RemovedBody610_102 RemovedBody610_388

def RemovedBody610_390 : StackLang.HolProg 64 :=
.seq RemovedBody610_101 RemovedBody610_389

def RemovedBody610_391 : StackLang.HolProg 64 :=
.seq RemovedBody610_100 RemovedBody610_390

def RemovedBody610_392 : StackLang.HolProg 64 :=
.seq RemovedBody610_99 RemovedBody610_391

def RemovedBody610_393 : StackLang.HolProg 64 :=
.seq RemovedBody610_98 RemovedBody610_392

def RemovedBody610_394 : StackLang.HolProg 64 :=
.seq RemovedBody610_97 RemovedBody610_393

def RemovedBody610_395 : StackLang.HolProg 64 :=
.seq RemovedBody610_96 RemovedBody610_394

def RemovedBody610_396 : StackLang.HolProg 64 :=
.seq RemovedBody610_95 RemovedBody610_395

def RemovedBody610_397 : StackLang.HolProg 64 :=
.seq RemovedBody610_94 RemovedBody610_396

def RemovedBody610_398 : StackLang.HolProg 64 :=
.seq RemovedBody610_93 RemovedBody610_397

def RemovedBody610_399 : StackLang.HolProg 64 :=
.seq RemovedBody610_92 RemovedBody610_398

def RemovedBody610_400 : StackLang.HolProg 64 :=
.seq RemovedBody610_91 RemovedBody610_399

def RemovedBody610_401 : StackLang.HolProg 64 :=
.seq RemovedBody610_90 RemovedBody610_400

def RemovedBody610_402 : StackLang.HolProg 64 :=
.seq RemovedBody610_89 RemovedBody610_401

def RemovedBody610_403 : StackLang.HolProg 64 :=
.seq RemovedBody610_88 RemovedBody610_402

def RemovedBody610_404 : StackLang.HolProg 64 :=
.seq RemovedBody610_81 RemovedBody610_403

def RemovedBody610_405 : StackLang.HolProg 64 :=
.seq RemovedBody610_80 RemovedBody610_404

def RemovedBody610_406 : StackLang.HolProg 64 :=
.seq RemovedBody610_79 RemovedBody610_405

def RemovedBody610_407 : StackLang.HolProg 64 :=
.seq RemovedBody610_78 RemovedBody610_406

def RemovedBody610_408 : StackLang.HolProg 64 :=
.seq RemovedBody610_77 RemovedBody610_407

def RemovedBody610_409 : StackLang.HolProg 64 :=
.seq RemovedBody610_76 RemovedBody610_408

def RemovedBody610_410 : StackLang.HolProg 64 :=
.seq RemovedBody610_75 RemovedBody610_409

def RemovedBody610_411 : StackLang.HolProg 64 :=
.seq RemovedBody610_74 RemovedBody610_410

def RemovedBody610_412 : StackLang.HolProg 64 :=
.seq RemovedBody610_73 RemovedBody610_411

def RemovedBody610_413 : StackLang.HolProg 64 :=
.seq RemovedBody610_72 RemovedBody610_412

def RemovedBody610_414 : StackLang.HolProg 64 :=
.seq RemovedBody610_71 RemovedBody610_413

def RemovedBody610_415 : StackLang.HolProg 64 :=
.seq RemovedBody610_70 RemovedBody610_414

def RemovedBody610_416 : StackLang.HolProg 64 :=
.seq RemovedBody610_69 RemovedBody610_415

def RemovedBody610_417 : StackLang.HolProg 64 :=
.seq RemovedBody610_68 RemovedBody610_416

def RemovedBody610_418 : StackLang.HolProg 64 :=
.seq RemovedBody610_67 RemovedBody610_417

def RemovedBody610_419 : StackLang.HolProg 64 :=
.seq RemovedBody610_66 RemovedBody610_418

def RemovedBody610_420 : StackLang.HolProg 64 :=
.seq RemovedBody610_65 RemovedBody610_419

def RemovedBody610_421 : StackLang.HolProg 64 :=
.seq RemovedBody610_64 RemovedBody610_420

def RemovedBody610_422 : StackLang.HolProg 64 :=
.seq RemovedBody610_63 RemovedBody610_421

def RemovedBody610_423 : StackLang.HolProg 64 :=
.seq RemovedBody610_62 RemovedBody610_422

def RemovedBody610_424 : StackLang.HolProg 64 :=
.seq RemovedBody610_9 RemovedBody610_423

def RemovedBody610_425 : StackLang.HolProg 64 :=
.seq RemovedBody610_6 RemovedBody610_424

def Removed610 : Nat × StackLang.HolProg 64 := (610, RemovedBody610_425)
theorem Removed610_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc610 = Removed610 := by
  kernel_rfl
#print axioms Removed610_eq
end InitECandidate.Proofs.BackendStages
