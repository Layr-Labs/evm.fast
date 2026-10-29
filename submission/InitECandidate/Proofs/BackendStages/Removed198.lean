import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc198
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody198_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody198_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody198_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody198_3 : StackLang.HolProg 64 :=
.seq RemovedBody198_1 RemovedBody198_2

def RemovedBody198_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody198_3 RemovedBody198_4

def RemovedBody198_6 : StackLang.HolProg 64 :=
.seq RemovedBody198_0 RemovedBody198_5

def RemovedBody198_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody198_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody198_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody198_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody198_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody198_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody198_13 : StackLang.HolProg 64 :=
.seq RemovedBody198_11 RemovedBody198_12

def RemovedBody198_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody198_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody198_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody198_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody198_19 : StackLang.HolProg 64 :=
.seq RemovedBody198_17 RemovedBody198_18

def RemovedBody198_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 234#64)

def RemovedBody198_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody198_23 : StackLang.HolProg 64 :=
.seq RemovedBody198_21 RemovedBody198_22

def RemovedBody198_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody198_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody198_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody198_27 : StackLang.HolProg 64 :=
.seq RemovedBody198_25 RemovedBody198_26

def RemovedBody198_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody198_27 RemovedBody198_28

def RemovedBody198_30 : StackLang.HolProg 64 :=
.seq RemovedBody198_24 RemovedBody198_29

def RemovedBody198_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody198_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody198_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 198 3

def RemovedBody198_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody198_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody198_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody198_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody198_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody198_40 : StackLang.HolProg 64 :=
.seq RemovedBody198_38 RemovedBody198_39

def RemovedBody198_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody198_42 : StackLang.HolProg 64 :=
.seq RemovedBody198_40 RemovedBody198_41

def RemovedBody198_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody198_44 : StackLang.HolProg 64 :=
.seq RemovedBody198_42 RemovedBody198_43

def RemovedBody198_45 : StackLang.HolProg 64 :=
.seq RemovedBody198_37 RemovedBody198_44

def RemovedBody198_46 : StackLang.HolProg 64 :=
.seq RemovedBody198_36 RemovedBody198_45

def RemovedBody198_47 : StackLang.HolProg 64 :=
.seq RemovedBody198_35 RemovedBody198_46

def RemovedBody198_48 : StackLang.HolProg 64 :=
.seq RemovedBody198_34 RemovedBody198_47

def RemovedBody198_49 : StackLang.HolProg 64 :=
.seq RemovedBody198_33 RemovedBody198_48

def RemovedBody198_50 : StackLang.HolProg 64 :=
.seq RemovedBody198_32 RemovedBody198_49

def RemovedBody198_51 : StackLang.HolProg 64 :=
.seq RemovedBody198_31 RemovedBody198_50

def RemovedBody198_52 : StackLang.HolProg 64 :=
.seq RemovedBody198_30 RemovedBody198_51

def RemovedBody198_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody198_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody198_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody198_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody198_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody198_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody198_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody198_63 : StackLang.HolProg 64 :=
.seq RemovedBody198_61 RemovedBody198_62

def RemovedBody198_64 : StackLang.HolProg 64 :=
.seq RemovedBody198_60 RemovedBody198_63

def RemovedBody198_65 : StackLang.HolProg 64 :=
.seq RemovedBody198_59 RemovedBody198_64

def RemovedBody198_66 : StackLang.HolProg 64 :=
.seq RemovedBody198_58 RemovedBody198_65

def RemovedBody198_67 : StackLang.HolProg 64 :=
.seq RemovedBody198_57 RemovedBody198_66

def RemovedBody198_68 : StackLang.HolProg 64 :=
.seq RemovedBody198_56 RemovedBody198_67

def RemovedBody198_69 : StackLang.HolProg 64 :=
.seq RemovedBody198_55 RemovedBody198_68

def RemovedBody198_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody198_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody198_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody198_73 : StackLang.HolProg 64 :=
.seq RemovedBody198_71 RemovedBody198_72

def RemovedBody198_74 : StackLang.HolProg 64 :=
.seq RemovedBody198_70 RemovedBody198_73

def RemovedBody198_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody198_76 : StackLang.HolProg 64 :=
.seq RemovedBody198_74 RemovedBody198_75

def RemovedBody198_77 : StackLang.HolProg 64 :=
.call (some (RemovedBody198_69, 0, 198, 2)) (Sum.inl 68) (some (RemovedBody198_76, 198, 3))

def RemovedBody198_78 : StackLang.HolProg 64 :=
.seq RemovedBody198_54 RemovedBody198_77

def RemovedBody198_79 : StackLang.HolProg 64 :=
.seq RemovedBody198_53 RemovedBody198_78

def RemovedBody198_80 : StackLang.HolProg 64 :=
.seq RemovedBody198_52 RemovedBody198_79

def RemovedBody198_81 : StackLang.HolProg 64 :=
.seq RemovedBody198_23 RemovedBody198_80

def RemovedBody198_82 : StackLang.HolProg 64 :=
.seq RemovedBody198_20 RemovedBody198_81

def RemovedBody198_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody198_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 32#64))

def RemovedBody198_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def RemovedBody198_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody198_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody198_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody198_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody198_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody198_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody198_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody198_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody198_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody198_100 : StackLang.HolProg 64 :=
.seq RemovedBody198_98 RemovedBody198_99

def RemovedBody198_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody198_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody198_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody198_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def RemovedBody198_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody198_106 : StackLang.HolProg 64 :=
.seq RemovedBody198_104 RemovedBody198_105

def RemovedBody198_107 : StackLang.HolProg 64 :=
.seq RemovedBody198_103 RemovedBody198_106

def RemovedBody198_108 : StackLang.HolProg 64 :=
.seq RemovedBody198_102 RemovedBody198_107

def RemovedBody198_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody198_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody198_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody198_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody198_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody198_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody198_117 : StackLang.HolProg 64 :=
.seq RemovedBody198_115 RemovedBody198_116

def RemovedBody198_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody198_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody198_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody198_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody198_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody198_123 : StackLang.HolProg 64 :=
.seq RemovedBody198_121 RemovedBody198_122

def RemovedBody198_124 : StackLang.HolProg 64 :=
.seq RemovedBody198_120 RemovedBody198_123

def RemovedBody198_125 : StackLang.HolProg 64 :=
.seq RemovedBody198_119 RemovedBody198_124

def RemovedBody198_126 : StackLang.HolProg 64 :=
.seq RemovedBody198_118 RemovedBody198_125

def RemovedBody198_127 : StackLang.HolProg 64 :=
.seq RemovedBody198_117 RemovedBody198_126

def RemovedBody198_128 : StackLang.HolProg 64 :=
.seq RemovedBody198_114 RemovedBody198_127

def RemovedBody198_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 235#64)

def RemovedBody198_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody198_132 : StackLang.HolProg 64 :=
.seq RemovedBody198_130 RemovedBody198_131

def RemovedBody198_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody198_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody198_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody198_136 : StackLang.HolProg 64 :=
.seq RemovedBody198_134 RemovedBody198_135

def RemovedBody198_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody198_136 RemovedBody198_137

def RemovedBody198_139 : StackLang.HolProg 64 :=
.seq RemovedBody198_133 RemovedBody198_138

def RemovedBody198_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody198_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody198_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 198 5

def RemovedBody198_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody198_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody198_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody198_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody198_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody198_149 : StackLang.HolProg 64 :=
.seq RemovedBody198_147 RemovedBody198_148

def RemovedBody198_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody198_151 : StackLang.HolProg 64 :=
.seq RemovedBody198_149 RemovedBody198_150

def RemovedBody198_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody198_153 : StackLang.HolProg 64 :=
.seq RemovedBody198_151 RemovedBody198_152

def RemovedBody198_154 : StackLang.HolProg 64 :=
.seq RemovedBody198_146 RemovedBody198_153

def RemovedBody198_155 : StackLang.HolProg 64 :=
.seq RemovedBody198_145 RemovedBody198_154

def RemovedBody198_156 : StackLang.HolProg 64 :=
.seq RemovedBody198_144 RemovedBody198_155

def RemovedBody198_157 : StackLang.HolProg 64 :=
.seq RemovedBody198_143 RemovedBody198_156

def RemovedBody198_158 : StackLang.HolProg 64 :=
.seq RemovedBody198_142 RemovedBody198_157

def RemovedBody198_159 : StackLang.HolProg 64 :=
.seq RemovedBody198_141 RemovedBody198_158

def RemovedBody198_160 : StackLang.HolProg 64 :=
.seq RemovedBody198_140 RemovedBody198_159

def RemovedBody198_161 : StackLang.HolProg 64 :=
.seq RemovedBody198_139 RemovedBody198_160

def RemovedBody198_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody198_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody198_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody198_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody198_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody198_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody198_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody198_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody198_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody198_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody198_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody198_176 : StackLang.HolProg 64 :=
.seq RemovedBody198_174 RemovedBody198_175

def RemovedBody198_177 : StackLang.HolProg 64 :=
.seq RemovedBody198_173 RemovedBody198_176

def RemovedBody198_178 : StackLang.HolProg 64 :=
.seq RemovedBody198_172 RemovedBody198_177

def RemovedBody198_179 : StackLang.HolProg 64 :=
.seq RemovedBody198_171 RemovedBody198_178

def RemovedBody198_180 : StackLang.HolProg 64 :=
.seq RemovedBody198_170 RemovedBody198_179

def RemovedBody198_181 : StackLang.HolProg 64 :=
.seq RemovedBody198_169 RemovedBody198_180

def RemovedBody198_182 : StackLang.HolProg 64 :=
.seq RemovedBody198_168 RemovedBody198_181

def RemovedBody198_183 : StackLang.HolProg 64 :=
.seq RemovedBody198_167 RemovedBody198_182

def RemovedBody198_184 : StackLang.HolProg 64 :=
.seq RemovedBody198_166 RemovedBody198_183

def RemovedBody198_185 : StackLang.HolProg 64 :=
.seq RemovedBody198_165 RemovedBody198_184

def RemovedBody198_186 : StackLang.HolProg 64 :=
.seq RemovedBody198_164 RemovedBody198_185

def RemovedBody198_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody198_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody198_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody198_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody198_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody198_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody198_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody198_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody198_195 : StackLang.HolProg 64 :=
.seq RemovedBody198_193 RemovedBody198_194

def RemovedBody198_196 : StackLang.HolProg 64 :=
.seq RemovedBody198_192 RemovedBody198_195

def RemovedBody198_197 : StackLang.HolProg 64 :=
.seq RemovedBody198_191 RemovedBody198_196

def RemovedBody198_198 : StackLang.HolProg 64 :=
.seq RemovedBody198_190 RemovedBody198_197

def RemovedBody198_199 : StackLang.HolProg 64 :=
.seq RemovedBody198_189 RemovedBody198_198

def RemovedBody198_200 : StackLang.HolProg 64 :=
.seq RemovedBody198_188 RemovedBody198_199

def RemovedBody198_201 : StackLang.HolProg 64 :=
.seq RemovedBody198_187 RemovedBody198_200

def RemovedBody198_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody198_203 : StackLang.HolProg 64 :=
.seq RemovedBody198_201 RemovedBody198_202

def RemovedBody198_204 : StackLang.HolProg 64 :=
.call (some (RemovedBody198_186, 0, 198, 4)) (Sum.inl 77) (some (RemovedBody198_203, 198, 5))

def RemovedBody198_205 : StackLang.HolProg 64 :=
.seq RemovedBody198_163 RemovedBody198_204

def RemovedBody198_206 : StackLang.HolProg 64 :=
.seq RemovedBody198_162 RemovedBody198_205

def RemovedBody198_207 : StackLang.HolProg 64 :=
.seq RemovedBody198_161 RemovedBody198_206

def RemovedBody198_208 : StackLang.HolProg 64 :=
.seq RemovedBody198_132 RemovedBody198_207

def RemovedBody198_209 : StackLang.HolProg 64 :=
.seq RemovedBody198_129 RemovedBody198_208

def RemovedBody198_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody198_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody198_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody198_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody198_215 : StackLang.HolProg 64 :=
.seq RemovedBody198_213 RemovedBody198_214

def RemovedBody198_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody198_217 : StackLang.HolProg 64 :=
.seq RemovedBody198_215 RemovedBody198_216

def RemovedBody198_218 : StackLang.HolProg 64 :=
.seq RemovedBody198_212 RemovedBody198_217

def RemovedBody198_219 : StackLang.HolProg 64 :=
.seq RemovedBody198_211 RemovedBody198_218

def RemovedBody198_220 : StackLang.HolProg 64 :=
.seq RemovedBody198_210 RemovedBody198_219

def RemovedBody198_221 : StackLang.HolProg 64 :=
.seq RemovedBody198_209 RemovedBody198_220

def RemovedBody198_222 : StackLang.HolProg 64 :=
.seq RemovedBody198_128 RemovedBody198_221

def RemovedBody198_223 : StackLang.HolProg 64 :=
.seq RemovedBody198_113 RemovedBody198_222

def RemovedBody198_224 : StackLang.HolProg 64 :=
.seq RemovedBody198_112 RemovedBody198_223

def RemovedBody198_225 : StackLang.HolProg 64 :=
.seq RemovedBody198_111 RemovedBody198_224

def RemovedBody198_226 : StackLang.HolProg 64 :=
.seq RemovedBody198_110 RemovedBody198_225

def RemovedBody198_227 : StackLang.HolProg 64 :=
.seq RemovedBody198_109 RemovedBody198_226

def RemovedBody198_228 : StackLang.HolProg 64 :=
.seq RemovedBody198_108 RemovedBody198_227

def RemovedBody198_229 : StackLang.HolProg 64 :=
.seq RemovedBody198_101 RemovedBody198_228

def RemovedBody198_230 : StackLang.HolProg 64 :=
.seq RemovedBody198_100 RemovedBody198_229

def RemovedBody198_231 : StackLang.HolProg 64 :=
.seq RemovedBody198_97 RemovedBody198_230

def RemovedBody198_232 : StackLang.HolProg 64 :=
.seq RemovedBody198_96 RemovedBody198_231

def RemovedBody198_233 : StackLang.HolProg 64 :=
.seq RemovedBody198_95 RemovedBody198_232

def RemovedBody198_234 : StackLang.HolProg 64 :=
.seq RemovedBody198_94 RemovedBody198_233

def RemovedBody198_235 : StackLang.HolProg 64 :=
.seq RemovedBody198_93 RemovedBody198_234

def RemovedBody198_236 : StackLang.HolProg 64 :=
.seq RemovedBody198_92 RemovedBody198_235

def RemovedBody198_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody198_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody198_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody198_240 : StackLang.HolProg 64 :=
.seq RemovedBody198_238 RemovedBody198_239

def RemovedBody198_241 : StackLang.HolProg 64 :=
.seq RemovedBody198_237 RemovedBody198_240

def RemovedBody198_242 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody198_236 RemovedBody198_241

def RemovedBody198_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody198_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody198_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody198_246 : StackLang.HolProg 64 :=
.seq RemovedBody198_244 RemovedBody198_245

def RemovedBody198_247 : StackLang.HolProg 64 :=
.seq RemovedBody198_243 RemovedBody198_246

def RemovedBody198_248 : StackLang.HolProg 64 :=
.seq RemovedBody198_242 RemovedBody198_247

def RemovedBody198_249 : StackLang.HolProg 64 :=
.seq RemovedBody198_91 RemovedBody198_248

def RemovedBody198_250 : StackLang.HolProg 64 :=
.loop RemovedBody198_249

def RemovedBody198_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody198_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody198_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody198_254 : StackLang.HolProg 64 :=
.seq RemovedBody198_252 RemovedBody198_253

def RemovedBody198_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody198_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody198_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody198_258 : StackLang.HolProg 64 :=
.seq RemovedBody198_256 RemovedBody198_257

def RemovedBody198_259 : StackLang.HolProg 64 :=
.seq RemovedBody198_255 RemovedBody198_258

def RemovedBody198_260 : StackLang.HolProg 64 :=
.seq RemovedBody198_254 RemovedBody198_259

def RemovedBody198_261 : StackLang.HolProg 64 :=
.seq RemovedBody198_251 RemovedBody198_260

def RemovedBody198_262 : StackLang.HolProg 64 :=
.seq RemovedBody198_250 RemovedBody198_261

def RemovedBody198_263 : StackLang.HolProg 64 :=
.seq RemovedBody198_90 RemovedBody198_262

def RemovedBody198_264 : StackLang.HolProg 64 :=
.seq RemovedBody198_89 RemovedBody198_263

def RemovedBody198_265 : StackLang.HolProg 64 :=
.seq RemovedBody198_88 RemovedBody198_264

def RemovedBody198_266 : StackLang.HolProg 64 :=
.seq RemovedBody198_87 RemovedBody198_265

def RemovedBody198_267 : StackLang.HolProg 64 :=
.seq RemovedBody198_86 RemovedBody198_266

def RemovedBody198_268 : StackLang.HolProg 64 :=
.seq RemovedBody198_85 RemovedBody198_267

def RemovedBody198_269 : StackLang.HolProg 64 :=
.seq RemovedBody198_84 RemovedBody198_268

def RemovedBody198_270 : StackLang.HolProg 64 :=
.seq RemovedBody198_83 RemovedBody198_269

def RemovedBody198_271 : StackLang.HolProg 64 :=
.seq RemovedBody198_82 RemovedBody198_270

def RemovedBody198_272 : StackLang.HolProg 64 :=
.seq RemovedBody198_19 RemovedBody198_271

def RemovedBody198_273 : StackLang.HolProg 64 :=
.seq RemovedBody198_16 RemovedBody198_272

def RemovedBody198_274 : StackLang.HolProg 64 :=
.seq RemovedBody198_15 RemovedBody198_273

def RemovedBody198_275 : StackLang.HolProg 64 :=
.seq RemovedBody198_14 RemovedBody198_274

def RemovedBody198_276 : StackLang.HolProg 64 :=
.seq RemovedBody198_13 RemovedBody198_275

def RemovedBody198_277 : StackLang.HolProg 64 :=
.seq RemovedBody198_10 RemovedBody198_276

def RemovedBody198_278 : StackLang.HolProg 64 :=
.seq RemovedBody198_9 RemovedBody198_277

def RemovedBody198_279 : StackLang.HolProg 64 :=
.seq RemovedBody198_8 RemovedBody198_278

def RemovedBody198_280 : StackLang.HolProg 64 :=
.seq RemovedBody198_7 RemovedBody198_279

def RemovedBody198_281 : StackLang.HolProg 64 :=
.seq RemovedBody198_6 RemovedBody198_280

def Removed198 : Nat × StackLang.HolProg 64 := (198, RemovedBody198_281)
theorem Removed198_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc198 = Removed198 := by
  kernel_rfl
#print axioms Removed198_eq
end InitECandidate.Proofs.BackendStages
