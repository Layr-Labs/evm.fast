import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc153
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody153_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody153_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody153_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody153_3 : StackLang.HolProg 64 :=
.seq RemovedBody153_1 RemovedBody153_2

def RemovedBody153_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody153_3 RemovedBody153_4

def RemovedBody153_6 : StackLang.HolProg 64 :=
.seq RemovedBody153_0 RemovedBody153_5

def RemovedBody153_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody153_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody153_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody153_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody153_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551568#64))

def RemovedBody153_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody153_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody153_16 : StackLang.HolProg 64 :=
.seq RemovedBody153_14 RemovedBody153_15

def RemovedBody153_17 : StackLang.HolProg 64 :=
.seq RemovedBody153_13 RemovedBody153_16

def RemovedBody153_18 : StackLang.HolProg 64 :=
.seq RemovedBody153_12 RemovedBody153_17

def RemovedBody153_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 129#64)

def RemovedBody153_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_22 : StackLang.HolProg 64 :=
.seq RemovedBody153_20 RemovedBody153_21

def RemovedBody153_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody153_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody153_26 : StackLang.HolProg 64 :=
.seq RemovedBody153_24 RemovedBody153_25

def RemovedBody153_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody153_26 RemovedBody153_27

def RemovedBody153_29 : StackLang.HolProg 64 :=
.seq RemovedBody153_23 RemovedBody153_28

def RemovedBody153_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody153_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 3

def RemovedBody153_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody153_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody153_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody153_39 : StackLang.HolProg 64 :=
.seq RemovedBody153_37 RemovedBody153_38

def RemovedBody153_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody153_41 : StackLang.HolProg 64 :=
.seq RemovedBody153_39 RemovedBody153_40

def RemovedBody153_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_43 : StackLang.HolProg 64 :=
.seq RemovedBody153_41 RemovedBody153_42

def RemovedBody153_44 : StackLang.HolProg 64 :=
.seq RemovedBody153_36 RemovedBody153_43

def RemovedBody153_45 : StackLang.HolProg 64 :=
.seq RemovedBody153_35 RemovedBody153_44

def RemovedBody153_46 : StackLang.HolProg 64 :=
.seq RemovedBody153_34 RemovedBody153_45

def RemovedBody153_47 : StackLang.HolProg 64 :=
.seq RemovedBody153_33 RemovedBody153_46

def RemovedBody153_48 : StackLang.HolProg 64 :=
.seq RemovedBody153_32 RemovedBody153_47

def RemovedBody153_49 : StackLang.HolProg 64 :=
.seq RemovedBody153_31 RemovedBody153_48

def RemovedBody153_50 : StackLang.HolProg 64 :=
.seq RemovedBody153_30 RemovedBody153_49

def RemovedBody153_51 : StackLang.HolProg 64 :=
.seq RemovedBody153_29 RemovedBody153_50

def RemovedBody153_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_60 : StackLang.HolProg 64 :=
.seq RemovedBody153_58 RemovedBody153_59

def RemovedBody153_61 : StackLang.HolProg 64 :=
.seq RemovedBody153_57 RemovedBody153_60

def RemovedBody153_62 : StackLang.HolProg 64 :=
.seq RemovedBody153_56 RemovedBody153_61

def RemovedBody153_63 : StackLang.HolProg 64 :=
.seq RemovedBody153_55 RemovedBody153_62

def RemovedBody153_64 : StackLang.HolProg 64 :=
.seq RemovedBody153_54 RemovedBody153_63

def RemovedBody153_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_67 : StackLang.HolProg 64 :=
.seq RemovedBody153_65 RemovedBody153_66

def RemovedBody153_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody153_69 : StackLang.HolProg 64 :=
.seq RemovedBody153_67 RemovedBody153_68

def RemovedBody153_70 : StackLang.HolProg 64 :=
.call (some (RemovedBody153_64, 0, 153, 2)) (Sum.inl 150) (some (RemovedBody153_69, 153, 3))

def RemovedBody153_71 : StackLang.HolProg 64 :=
.seq RemovedBody153_53 RemovedBody153_70

def RemovedBody153_72 : StackLang.HolProg 64 :=
.seq RemovedBody153_52 RemovedBody153_71

def RemovedBody153_73 : StackLang.HolProg 64 :=
.seq RemovedBody153_51 RemovedBody153_72

def RemovedBody153_74 : StackLang.HolProg 64 :=
.seq RemovedBody153_22 RemovedBody153_73

def RemovedBody153_75 : StackLang.HolProg 64 :=
.seq RemovedBody153_19 RemovedBody153_74

def RemovedBody153_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody153_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody153_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody153_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody153_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody153_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551568#64))

def RemovedBody153_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody153_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody153_92 : StackLang.HolProg 64 :=
.seq RemovedBody153_90 RemovedBody153_91

def RemovedBody153_93 : StackLang.HolProg 64 :=
.seq RemovedBody153_89 RemovedBody153_92

def RemovedBody153_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 130#64)

def RemovedBody153_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_97 : StackLang.HolProg 64 :=
.seq RemovedBody153_95 RemovedBody153_96

def RemovedBody153_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody153_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody153_101 : StackLang.HolProg 64 :=
.seq RemovedBody153_99 RemovedBody153_100

def RemovedBody153_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody153_101 RemovedBody153_102

def RemovedBody153_104 : StackLang.HolProg 64 :=
.seq RemovedBody153_98 RemovedBody153_103

def RemovedBody153_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody153_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 5

def RemovedBody153_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody153_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody153_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody153_114 : StackLang.HolProg 64 :=
.seq RemovedBody153_112 RemovedBody153_113

def RemovedBody153_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody153_116 : StackLang.HolProg 64 :=
.seq RemovedBody153_114 RemovedBody153_115

def RemovedBody153_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_118 : StackLang.HolProg 64 :=
.seq RemovedBody153_116 RemovedBody153_117

def RemovedBody153_119 : StackLang.HolProg 64 :=
.seq RemovedBody153_111 RemovedBody153_118

def RemovedBody153_120 : StackLang.HolProg 64 :=
.seq RemovedBody153_110 RemovedBody153_119

def RemovedBody153_121 : StackLang.HolProg 64 :=
.seq RemovedBody153_109 RemovedBody153_120

def RemovedBody153_122 : StackLang.HolProg 64 :=
.seq RemovedBody153_108 RemovedBody153_121

def RemovedBody153_123 : StackLang.HolProg 64 :=
.seq RemovedBody153_107 RemovedBody153_122

def RemovedBody153_124 : StackLang.HolProg 64 :=
.seq RemovedBody153_106 RemovedBody153_123

def RemovedBody153_125 : StackLang.HolProg 64 :=
.seq RemovedBody153_105 RemovedBody153_124

def RemovedBody153_126 : StackLang.HolProg 64 :=
.seq RemovedBody153_104 RemovedBody153_125

def RemovedBody153_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody153_135 : StackLang.HolProg 64 :=
.seq RemovedBody153_133 RemovedBody153_134

def RemovedBody153_136 : StackLang.HolProg 64 :=
.seq RemovedBody153_132 RemovedBody153_135

def RemovedBody153_137 : StackLang.HolProg 64 :=
.seq RemovedBody153_131 RemovedBody153_136

def RemovedBody153_138 : StackLang.HolProg 64 :=
.seq RemovedBody153_130 RemovedBody153_137

def RemovedBody153_139 : StackLang.HolProg 64 :=
.seq RemovedBody153_129 RemovedBody153_138

def RemovedBody153_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody153_142 : StackLang.HolProg 64 :=
.seq RemovedBody153_140 RemovedBody153_141

def RemovedBody153_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody153_144 : StackLang.HolProg 64 :=
.seq RemovedBody153_142 RemovedBody153_143

def RemovedBody153_145 : StackLang.HolProg 64 :=
.call (some (RemovedBody153_139, 0, 153, 4)) (Sum.inl 151) (some (RemovedBody153_144, 153, 5))

def RemovedBody153_146 : StackLang.HolProg 64 :=
.seq RemovedBody153_128 RemovedBody153_145

def RemovedBody153_147 : StackLang.HolProg 64 :=
.seq RemovedBody153_127 RemovedBody153_146

def RemovedBody153_148 : StackLang.HolProg 64 :=
.seq RemovedBody153_126 RemovedBody153_147

def RemovedBody153_149 : StackLang.HolProg 64 :=
.seq RemovedBody153_97 RemovedBody153_148

def RemovedBody153_150 : StackLang.HolProg 64 :=
.seq RemovedBody153_94 RemovedBody153_149

def RemovedBody153_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody153_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody153_156 : StackLang.HolProg 64 :=
.seq RemovedBody153_154 RemovedBody153_155

def RemovedBody153_157 : StackLang.HolProg 64 :=
.seq RemovedBody153_153 RemovedBody153_156

def RemovedBody153_158 : StackLang.HolProg 64 :=
.seq RemovedBody153_152 RemovedBody153_157

def RemovedBody153_159 : StackLang.HolProg 64 :=
.seq RemovedBody153_151 RemovedBody153_158

def RemovedBody153_160 : StackLang.HolProg 64 :=
.seq RemovedBody153_150 RemovedBody153_159

def RemovedBody153_161 : StackLang.HolProg 64 :=
.seq RemovedBody153_93 RemovedBody153_160

def RemovedBody153_162 : StackLang.HolProg 64 :=
.seq RemovedBody153_88 RemovedBody153_161

def RemovedBody153_163 : StackLang.HolProg 64 :=
.seq RemovedBody153_87 RemovedBody153_162

def RemovedBody153_164 : StackLang.HolProg 64 :=
.seq RemovedBody153_86 RemovedBody153_163

def RemovedBody153_165 : StackLang.HolProg 64 :=
.seq RemovedBody153_85 RemovedBody153_164

def RemovedBody153_166 : StackLang.HolProg 64 :=
.seq RemovedBody153_84 RemovedBody153_165

def RemovedBody153_167 : StackLang.HolProg 64 :=
.seq RemovedBody153_83 RemovedBody153_166

def RemovedBody153_168 : StackLang.HolProg 64 :=
.seq RemovedBody153_82 RemovedBody153_167

def RemovedBody153_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody153_172 : StackLang.HolProg 64 :=
.seq RemovedBody153_170 RemovedBody153_171

def RemovedBody153_173 : StackLang.HolProg 64 :=
.seq RemovedBody153_169 RemovedBody153_172

def RemovedBody153_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody153_168 RemovedBody153_173

def RemovedBody153_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody153_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody153_179 : StackLang.HolProg 64 :=
.seq RemovedBody153_177 RemovedBody153_178

def RemovedBody153_180 : StackLang.HolProg 64 :=
.seq RemovedBody153_176 RemovedBody153_179

def RemovedBody153_181 : StackLang.HolProg 64 :=
.seq RemovedBody153_175 RemovedBody153_180

def RemovedBody153_182 : StackLang.HolProg 64 :=
.seq RemovedBody153_174 RemovedBody153_181

def RemovedBody153_183 : StackLang.HolProg 64 :=
.seq RemovedBody153_81 RemovedBody153_182

def RemovedBody153_184 : StackLang.HolProg 64 :=
.seq RemovedBody153_80 RemovedBody153_183

def RemovedBody153_185 : StackLang.HolProg 64 :=
.loop RemovedBody153_184

def RemovedBody153_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody153_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody153_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody153_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody153_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551560#64))

def RemovedBody153_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 128#64)

def RemovedBody153_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody153_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_197 : StackLang.HolProg 64 :=
.seq RemovedBody153_195 RemovedBody153_196

def RemovedBody153_198 : StackLang.HolProg 64 :=
.seq RemovedBody153_194 RemovedBody153_197

def RemovedBody153_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 131#64)

def RemovedBody153_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_202 : StackLang.HolProg 64 :=
.seq RemovedBody153_200 RemovedBody153_201

def RemovedBody153_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody153_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody153_206 : StackLang.HolProg 64 :=
.seq RemovedBody153_204 RemovedBody153_205

def RemovedBody153_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_208 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody153_206 RemovedBody153_207

def RemovedBody153_209 : StackLang.HolProg 64 :=
.seq RemovedBody153_203 RemovedBody153_208

def RemovedBody153_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody153_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 7

def RemovedBody153_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody153_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody153_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody153_219 : StackLang.HolProg 64 :=
.seq RemovedBody153_217 RemovedBody153_218

def RemovedBody153_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody153_221 : StackLang.HolProg 64 :=
.seq RemovedBody153_219 RemovedBody153_220

def RemovedBody153_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_223 : StackLang.HolProg 64 :=
.seq RemovedBody153_221 RemovedBody153_222

def RemovedBody153_224 : StackLang.HolProg 64 :=
.seq RemovedBody153_216 RemovedBody153_223

def RemovedBody153_225 : StackLang.HolProg 64 :=
.seq RemovedBody153_215 RemovedBody153_224

def RemovedBody153_226 : StackLang.HolProg 64 :=
.seq RemovedBody153_214 RemovedBody153_225

def RemovedBody153_227 : StackLang.HolProg 64 :=
.seq RemovedBody153_213 RemovedBody153_226

def RemovedBody153_228 : StackLang.HolProg 64 :=
.seq RemovedBody153_212 RemovedBody153_227

def RemovedBody153_229 : StackLang.HolProg 64 :=
.seq RemovedBody153_211 RemovedBody153_228

def RemovedBody153_230 : StackLang.HolProg 64 :=
.seq RemovedBody153_210 RemovedBody153_229

def RemovedBody153_231 : StackLang.HolProg 64 :=
.seq RemovedBody153_209 RemovedBody153_230

def RemovedBody153_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody153_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody153_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody153_243 : StackLang.HolProg 64 :=
.seq RemovedBody153_241 RemovedBody153_242

def RemovedBody153_244 : StackLang.HolProg 64 :=
.seq RemovedBody153_240 RemovedBody153_243

def RemovedBody153_245 : StackLang.HolProg 64 :=
.seq RemovedBody153_239 RemovedBody153_244

def RemovedBody153_246 : StackLang.HolProg 64 :=
.seq RemovedBody153_238 RemovedBody153_245

def RemovedBody153_247 : StackLang.HolProg 64 :=
.seq RemovedBody153_237 RemovedBody153_246

def RemovedBody153_248 : StackLang.HolProg 64 :=
.seq RemovedBody153_236 RemovedBody153_247

def RemovedBody153_249 : StackLang.HolProg 64 :=
.seq RemovedBody153_235 RemovedBody153_248

def RemovedBody153_250 : StackLang.HolProg 64 :=
.seq RemovedBody153_234 RemovedBody153_249

def RemovedBody153_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody153_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody153_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody153_256 : StackLang.HolProg 64 :=
.seq RemovedBody153_254 RemovedBody153_255

def RemovedBody153_257 : StackLang.HolProg 64 :=
.seq RemovedBody153_253 RemovedBody153_256

def RemovedBody153_258 : StackLang.HolProg 64 :=
.seq RemovedBody153_252 RemovedBody153_257

def RemovedBody153_259 : StackLang.HolProg 64 :=
.seq RemovedBody153_251 RemovedBody153_258

def RemovedBody153_260 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody153_261 : StackLang.HolProg 64 :=
.seq RemovedBody153_259 RemovedBody153_260

def RemovedBody153_262 : StackLang.HolProg 64 :=
.call (some (RemovedBody153_250, 0, 153, 6)) (Sum.inl 78) (some (RemovedBody153_261, 153, 7))

def RemovedBody153_263 : StackLang.HolProg 64 :=
.seq RemovedBody153_233 RemovedBody153_262

def RemovedBody153_264 : StackLang.HolProg 64 :=
.seq RemovedBody153_232 RemovedBody153_263

def RemovedBody153_265 : StackLang.HolProg 64 :=
.seq RemovedBody153_231 RemovedBody153_264

def RemovedBody153_266 : StackLang.HolProg 64 :=
.seq RemovedBody153_202 RemovedBody153_265

def RemovedBody153_267 : StackLang.HolProg 64 :=
.seq RemovedBody153_199 RemovedBody153_266

def RemovedBody153_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody153_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody153_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody153_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551560#64))

def RemovedBody153_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody153_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 132#64)

def RemovedBody153_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_279 : StackLang.HolProg 64 :=
.seq RemovedBody153_277 RemovedBody153_278

def RemovedBody153_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody153_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody153_283 : StackLang.HolProg 64 :=
.seq RemovedBody153_281 RemovedBody153_282

def RemovedBody153_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_285 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody153_283 RemovedBody153_284

def RemovedBody153_286 : StackLang.HolProg 64 :=
.seq RemovedBody153_280 RemovedBody153_285

def RemovedBody153_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody153_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 9

def RemovedBody153_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody153_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody153_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody153_296 : StackLang.HolProg 64 :=
.seq RemovedBody153_294 RemovedBody153_295

def RemovedBody153_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody153_298 : StackLang.HolProg 64 :=
.seq RemovedBody153_296 RemovedBody153_297

def RemovedBody153_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_300 : StackLang.HolProg 64 :=
.seq RemovedBody153_298 RemovedBody153_299

def RemovedBody153_301 : StackLang.HolProg 64 :=
.seq RemovedBody153_293 RemovedBody153_300

def RemovedBody153_302 : StackLang.HolProg 64 :=
.seq RemovedBody153_292 RemovedBody153_301

def RemovedBody153_303 : StackLang.HolProg 64 :=
.seq RemovedBody153_291 RemovedBody153_302

def RemovedBody153_304 : StackLang.HolProg 64 :=
.seq RemovedBody153_290 RemovedBody153_303

def RemovedBody153_305 : StackLang.HolProg 64 :=
.seq RemovedBody153_289 RemovedBody153_304

def RemovedBody153_306 : StackLang.HolProg 64 :=
.seq RemovedBody153_288 RemovedBody153_305

def RemovedBody153_307 : StackLang.HolProg 64 :=
.seq RemovedBody153_287 RemovedBody153_306

def RemovedBody153_308 : StackLang.HolProg 64 :=
.seq RemovedBody153_286 RemovedBody153_307

def RemovedBody153_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody153_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_319 : StackLang.HolProg 64 :=
.seq RemovedBody153_317 RemovedBody153_318

def RemovedBody153_320 : StackLang.HolProg 64 :=
.seq RemovedBody153_316 RemovedBody153_319

def RemovedBody153_321 : StackLang.HolProg 64 :=
.seq RemovedBody153_315 RemovedBody153_320

def RemovedBody153_322 : StackLang.HolProg 64 :=
.seq RemovedBody153_314 RemovedBody153_321

def RemovedBody153_323 : StackLang.HolProg 64 :=
.seq RemovedBody153_313 RemovedBody153_322

def RemovedBody153_324 : StackLang.HolProg 64 :=
.seq RemovedBody153_312 RemovedBody153_323

def RemovedBody153_325 : StackLang.HolProg 64 :=
.seq RemovedBody153_311 RemovedBody153_324

def RemovedBody153_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody153_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_330 : StackLang.HolProg 64 :=
.seq RemovedBody153_328 RemovedBody153_329

def RemovedBody153_331 : StackLang.HolProg 64 :=
.seq RemovedBody153_327 RemovedBody153_330

def RemovedBody153_332 : StackLang.HolProg 64 :=
.seq RemovedBody153_326 RemovedBody153_331

def RemovedBody153_333 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody153_334 : StackLang.HolProg 64 :=
.seq RemovedBody153_332 RemovedBody153_333

def RemovedBody153_335 : StackLang.HolProg 64 :=
.call (some (RemovedBody153_325, 0, 153, 8)) (Sum.inl 77) (some (RemovedBody153_334, 153, 9))

def RemovedBody153_336 : StackLang.HolProg 64 :=
.seq RemovedBody153_310 RemovedBody153_335

def RemovedBody153_337 : StackLang.HolProg 64 :=
.seq RemovedBody153_309 RemovedBody153_336

def RemovedBody153_338 : StackLang.HolProg 64 :=
.seq RemovedBody153_308 RemovedBody153_337

def RemovedBody153_339 : StackLang.HolProg 64 :=
.seq RemovedBody153_279 RemovedBody153_338

def RemovedBody153_340 : StackLang.HolProg 64 :=
.seq RemovedBody153_276 RemovedBody153_339

def RemovedBody153_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody153_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody153_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody153_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551560#64))

def RemovedBody153_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody153_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 128#64)

def RemovedBody153_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody153_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 64#64)

def RemovedBody153_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 56#64)

def RemovedBody153_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 128#64)

def RemovedBody153_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_356 : StackLang.HolProg 64 :=
.seq RemovedBody153_354 RemovedBody153_355

def RemovedBody153_357 : StackLang.HolProg 64 :=
.seq RemovedBody153_353 RemovedBody153_356

def RemovedBody153_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_360 : StackLang.HolProg 64 :=
.seq RemovedBody153_358 RemovedBody153_359

def RemovedBody153_361 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody153_357 RemovedBody153_360

def RemovedBody153_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551560#64))

def RemovedBody153_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody153_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def RemovedBody153_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody153_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 133#64)

def RemovedBody153_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_373 : StackLang.HolProg 64 :=
.seq RemovedBody153_371 RemovedBody153_372

def RemovedBody153_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody153_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody153_377 : StackLang.HolProg 64 :=
.seq RemovedBody153_375 RemovedBody153_376

def RemovedBody153_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_379 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody153_377 RemovedBody153_378

def RemovedBody153_380 : StackLang.HolProg 64 :=
.seq RemovedBody153_374 RemovedBody153_379

def RemovedBody153_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody153_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 11

def RemovedBody153_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody153_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody153_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody153_390 : StackLang.HolProg 64 :=
.seq RemovedBody153_388 RemovedBody153_389

def RemovedBody153_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody153_392 : StackLang.HolProg 64 :=
.seq RemovedBody153_390 RemovedBody153_391

def RemovedBody153_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_394 : StackLang.HolProg 64 :=
.seq RemovedBody153_392 RemovedBody153_393

def RemovedBody153_395 : StackLang.HolProg 64 :=
.seq RemovedBody153_387 RemovedBody153_394

def RemovedBody153_396 : StackLang.HolProg 64 :=
.seq RemovedBody153_386 RemovedBody153_395

def RemovedBody153_397 : StackLang.HolProg 64 :=
.seq RemovedBody153_385 RemovedBody153_396

def RemovedBody153_398 : StackLang.HolProg 64 :=
.seq RemovedBody153_384 RemovedBody153_397

def RemovedBody153_399 : StackLang.HolProg 64 :=
.seq RemovedBody153_383 RemovedBody153_398

def RemovedBody153_400 : StackLang.HolProg 64 :=
.seq RemovedBody153_382 RemovedBody153_399

def RemovedBody153_401 : StackLang.HolProg 64 :=
.seq RemovedBody153_381 RemovedBody153_400

def RemovedBody153_402 : StackLang.HolProg 64 :=
.seq RemovedBody153_380 RemovedBody153_401

def RemovedBody153_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_410 : StackLang.HolProg 64 :=
.seq RemovedBody153_408 RemovedBody153_409

def RemovedBody153_411 : StackLang.HolProg 64 :=
.seq RemovedBody153_407 RemovedBody153_410

def RemovedBody153_412 : StackLang.HolProg 64 :=
.seq RemovedBody153_406 RemovedBody153_411

def RemovedBody153_413 : StackLang.HolProg 64 :=
.seq RemovedBody153_405 RemovedBody153_412

def RemovedBody153_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_415 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody153_416 : StackLang.HolProg 64 :=
.seq RemovedBody153_414 RemovedBody153_415

def RemovedBody153_417 : StackLang.HolProg 64 :=
.call (some (RemovedBody153_413, 0, 153, 10)) (Sum.inl 89) (some (RemovedBody153_416, 153, 11))

def RemovedBody153_418 : StackLang.HolProg 64 :=
.seq RemovedBody153_404 RemovedBody153_417

def RemovedBody153_419 : StackLang.HolProg 64 :=
.seq RemovedBody153_403 RemovedBody153_418

def RemovedBody153_420 : StackLang.HolProg 64 :=
.seq RemovedBody153_402 RemovedBody153_419

def RemovedBody153_421 : StackLang.HolProg 64 :=
.seq RemovedBody153_373 RemovedBody153_420

def RemovedBody153_422 : StackLang.HolProg 64 :=
.seq RemovedBody153_370 RemovedBody153_421

def RemovedBody153_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody153_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody153_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody153_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551568#64))

def RemovedBody153_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551560#64))

def RemovedBody153_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 134#64)

def RemovedBody153_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_434 : StackLang.HolProg 64 :=
.seq RemovedBody153_432 RemovedBody153_433

def RemovedBody153_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody153_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody153_438 : StackLang.HolProg 64 :=
.seq RemovedBody153_436 RemovedBody153_437

def RemovedBody153_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_440 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody153_438 RemovedBody153_439

def RemovedBody153_441 : StackLang.HolProg 64 :=
.seq RemovedBody153_435 RemovedBody153_440

def RemovedBody153_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody153_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 13

def RemovedBody153_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody153_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody153_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody153_451 : StackLang.HolProg 64 :=
.seq RemovedBody153_449 RemovedBody153_450

def RemovedBody153_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody153_453 : StackLang.HolProg 64 :=
.seq RemovedBody153_451 RemovedBody153_452

def RemovedBody153_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_455 : StackLang.HolProg 64 :=
.seq RemovedBody153_453 RemovedBody153_454

def RemovedBody153_456 : StackLang.HolProg 64 :=
.seq RemovedBody153_448 RemovedBody153_455

def RemovedBody153_457 : StackLang.HolProg 64 :=
.seq RemovedBody153_447 RemovedBody153_456

def RemovedBody153_458 : StackLang.HolProg 64 :=
.seq RemovedBody153_446 RemovedBody153_457

def RemovedBody153_459 : StackLang.HolProg 64 :=
.seq RemovedBody153_445 RemovedBody153_458

def RemovedBody153_460 : StackLang.HolProg 64 :=
.seq RemovedBody153_444 RemovedBody153_459

def RemovedBody153_461 : StackLang.HolProg 64 :=
.seq RemovedBody153_443 RemovedBody153_460

def RemovedBody153_462 : StackLang.HolProg 64 :=
.seq RemovedBody153_442 RemovedBody153_461

def RemovedBody153_463 : StackLang.HolProg 64 :=
.seq RemovedBody153_441 RemovedBody153_462

def RemovedBody153_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_471 : StackLang.HolProg 64 :=
.seq RemovedBody153_469 RemovedBody153_470

def RemovedBody153_472 : StackLang.HolProg 64 :=
.seq RemovedBody153_468 RemovedBody153_471

def RemovedBody153_473 : StackLang.HolProg 64 :=
.seq RemovedBody153_467 RemovedBody153_472

def RemovedBody153_474 : StackLang.HolProg 64 :=
.seq RemovedBody153_466 RemovedBody153_473

def RemovedBody153_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody153_476 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody153_477 : StackLang.HolProg 64 :=
.seq RemovedBody153_475 RemovedBody153_476

def RemovedBody153_478 : StackLang.HolProg 64 :=
.call (some (RemovedBody153_474, 0, 153, 12)) (Sum.inl 151) (some (RemovedBody153_477, 153, 13))

def RemovedBody153_479 : StackLang.HolProg 64 :=
.seq RemovedBody153_465 RemovedBody153_478

def RemovedBody153_480 : StackLang.HolProg 64 :=
.seq RemovedBody153_464 RemovedBody153_479

def RemovedBody153_481 : StackLang.HolProg 64 :=
.seq RemovedBody153_463 RemovedBody153_480

def RemovedBody153_482 : StackLang.HolProg 64 :=
.seq RemovedBody153_434 RemovedBody153_481

def RemovedBody153_483 : StackLang.HolProg 64 :=
.seq RemovedBody153_431 RemovedBody153_482

def RemovedBody153_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody153_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody153_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody153_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody153_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551568#64))

def RemovedBody153_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551560#64))

def RemovedBody153_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody153_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 135#64)

def RemovedBody153_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_499 : StackLang.HolProg 64 :=
.seq RemovedBody153_497 RemovedBody153_498

def RemovedBody153_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody153_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody153_503 : StackLang.HolProg 64 :=
.seq RemovedBody153_501 RemovedBody153_502

def RemovedBody153_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_505 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody153_503 RemovedBody153_504

def RemovedBody153_506 : StackLang.HolProg 64 :=
.seq RemovedBody153_500 RemovedBody153_505

def RemovedBody153_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody153_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 15

def RemovedBody153_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody153_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody153_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody153_516 : StackLang.HolProg 64 :=
.seq RemovedBody153_514 RemovedBody153_515

def RemovedBody153_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody153_518 : StackLang.HolProg 64 :=
.seq RemovedBody153_516 RemovedBody153_517

def RemovedBody153_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_520 : StackLang.HolProg 64 :=
.seq RemovedBody153_518 RemovedBody153_519

def RemovedBody153_521 : StackLang.HolProg 64 :=
.seq RemovedBody153_513 RemovedBody153_520

def RemovedBody153_522 : StackLang.HolProg 64 :=
.seq RemovedBody153_512 RemovedBody153_521

def RemovedBody153_523 : StackLang.HolProg 64 :=
.seq RemovedBody153_511 RemovedBody153_522

def RemovedBody153_524 : StackLang.HolProg 64 :=
.seq RemovedBody153_510 RemovedBody153_523

def RemovedBody153_525 : StackLang.HolProg 64 :=
.seq RemovedBody153_509 RemovedBody153_524

def RemovedBody153_526 : StackLang.HolProg 64 :=
.seq RemovedBody153_508 RemovedBody153_525

def RemovedBody153_527 : StackLang.HolProg 64 :=
.seq RemovedBody153_507 RemovedBody153_526

def RemovedBody153_528 : StackLang.HolProg 64 :=
.seq RemovedBody153_506 RemovedBody153_527

def RemovedBody153_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_536 : StackLang.HolProg 64 :=
.seq RemovedBody153_534 RemovedBody153_535

def RemovedBody153_537 : StackLang.HolProg 64 :=
.seq RemovedBody153_533 RemovedBody153_536

def RemovedBody153_538 : StackLang.HolProg 64 :=
.seq RemovedBody153_532 RemovedBody153_537

def RemovedBody153_539 : StackLang.HolProg 64 :=
.seq RemovedBody153_531 RemovedBody153_538

def RemovedBody153_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_541 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody153_542 : StackLang.HolProg 64 :=
.seq RemovedBody153_540 RemovedBody153_541

def RemovedBody153_543 : StackLang.HolProg 64 :=
.call (some (RemovedBody153_539, 0, 153, 14)) (Sum.inl 151) (some (RemovedBody153_542, 153, 15))

def RemovedBody153_544 : StackLang.HolProg 64 :=
.seq RemovedBody153_530 RemovedBody153_543

def RemovedBody153_545 : StackLang.HolProg 64 :=
.seq RemovedBody153_529 RemovedBody153_544

def RemovedBody153_546 : StackLang.HolProg 64 :=
.seq RemovedBody153_528 RemovedBody153_545

def RemovedBody153_547 : StackLang.HolProg 64 :=
.seq RemovedBody153_499 RemovedBody153_546

def RemovedBody153_548 : StackLang.HolProg 64 :=
.seq RemovedBody153_496 RemovedBody153_547

def RemovedBody153_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_551 : StackLang.HolProg 64 :=
.seq RemovedBody153_549 RemovedBody153_550

def RemovedBody153_552 : StackLang.HolProg 64 :=
.seq RemovedBody153_548 RemovedBody153_551

def RemovedBody153_553 : StackLang.HolProg 64 :=
.seq RemovedBody153_495 RemovedBody153_552

def RemovedBody153_554 : StackLang.HolProg 64 :=
.seq RemovedBody153_494 RemovedBody153_553

def RemovedBody153_555 : StackLang.HolProg 64 :=
.seq RemovedBody153_493 RemovedBody153_554

def RemovedBody153_556 : StackLang.HolProg 64 :=
.seq RemovedBody153_492 RemovedBody153_555

def RemovedBody153_557 : StackLang.HolProg 64 :=
.seq RemovedBody153_491 RemovedBody153_556

def RemovedBody153_558 : StackLang.HolProg 64 :=
.seq RemovedBody153_490 RemovedBody153_557

def RemovedBody153_559 : StackLang.HolProg 64 :=
.seq RemovedBody153_489 RemovedBody153_558

def RemovedBody153_560 : StackLang.HolProg 64 :=
.seq RemovedBody153_488 RemovedBody153_559

def RemovedBody153_561 : StackLang.HolProg 64 :=
.seq RemovedBody153_487 RemovedBody153_560

def RemovedBody153_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody153_564 : StackLang.HolProg 64 :=
.seq RemovedBody153_562 RemovedBody153_563

def RemovedBody153_565 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody153_561 RemovedBody153_564

def RemovedBody153_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody153_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody153_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody153_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551568#64))

def RemovedBody153_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 136#64)

def RemovedBody153_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_575 : StackLang.HolProg 64 :=
.seq RemovedBody153_573 RemovedBody153_574

def RemovedBody153_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody153_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody153_579 : StackLang.HolProg 64 :=
.seq RemovedBody153_577 RemovedBody153_578

def RemovedBody153_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_581 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody153_579 RemovedBody153_580

def RemovedBody153_582 : StackLang.HolProg 64 :=
.seq RemovedBody153_576 RemovedBody153_581

def RemovedBody153_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody153_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody153_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 17

def RemovedBody153_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody153_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody153_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody153_592 : StackLang.HolProg 64 :=
.seq RemovedBody153_590 RemovedBody153_591

def RemovedBody153_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody153_594 : StackLang.HolProg 64 :=
.seq RemovedBody153_592 RemovedBody153_593

def RemovedBody153_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_596 : StackLang.HolProg 64 :=
.seq RemovedBody153_594 RemovedBody153_595

def RemovedBody153_597 : StackLang.HolProg 64 :=
.seq RemovedBody153_589 RemovedBody153_596

def RemovedBody153_598 : StackLang.HolProg 64 :=
.seq RemovedBody153_588 RemovedBody153_597

def RemovedBody153_599 : StackLang.HolProg 64 :=
.seq RemovedBody153_587 RemovedBody153_598

def RemovedBody153_600 : StackLang.HolProg 64 :=
.seq RemovedBody153_586 RemovedBody153_599

def RemovedBody153_601 : StackLang.HolProg 64 :=
.seq RemovedBody153_585 RemovedBody153_600

def RemovedBody153_602 : StackLang.HolProg 64 :=
.seq RemovedBody153_584 RemovedBody153_601

def RemovedBody153_603 : StackLang.HolProg 64 :=
.seq RemovedBody153_583 RemovedBody153_602

def RemovedBody153_604 : StackLang.HolProg 64 :=
.seq RemovedBody153_582 RemovedBody153_603

def RemovedBody153_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody153_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody153_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody153_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody153_612 : StackLang.HolProg 64 :=
.seq RemovedBody153_610 RemovedBody153_611

def RemovedBody153_613 : StackLang.HolProg 64 :=
.seq RemovedBody153_609 RemovedBody153_612

def RemovedBody153_614 : StackLang.HolProg 64 :=
.seq RemovedBody153_608 RemovedBody153_613

def RemovedBody153_615 : StackLang.HolProg 64 :=
.seq RemovedBody153_607 RemovedBody153_614

def RemovedBody153_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody153_617 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody153_618 : StackLang.HolProg 64 :=
.seq RemovedBody153_616 RemovedBody153_617

def RemovedBody153_619 : StackLang.HolProg 64 :=
.call (some (RemovedBody153_615, 0, 153, 16)) (Sum.inl 152) (some (RemovedBody153_618, 153, 17))

def RemovedBody153_620 : StackLang.HolProg 64 :=
.seq RemovedBody153_606 RemovedBody153_619

def RemovedBody153_621 : StackLang.HolProg 64 :=
.seq RemovedBody153_605 RemovedBody153_620

def RemovedBody153_622 : StackLang.HolProg 64 :=
.seq RemovedBody153_604 RemovedBody153_621

def RemovedBody153_623 : StackLang.HolProg 64 :=
.seq RemovedBody153_575 RemovedBody153_622

def RemovedBody153_624 : StackLang.HolProg 64 :=
.seq RemovedBody153_572 RemovedBody153_623

def RemovedBody153_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody153_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody153_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody153_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody153_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody153_630 : StackLang.HolProg 64 :=
.seq RemovedBody153_628 RemovedBody153_629

def RemovedBody153_631 : StackLang.HolProg 64 :=
.seq RemovedBody153_627 RemovedBody153_630

def RemovedBody153_632 : StackLang.HolProg 64 :=
.seq RemovedBody153_626 RemovedBody153_631

def RemovedBody153_633 : StackLang.HolProg 64 :=
.seq RemovedBody153_625 RemovedBody153_632

def RemovedBody153_634 : StackLang.HolProg 64 :=
.seq RemovedBody153_624 RemovedBody153_633

def RemovedBody153_635 : StackLang.HolProg 64 :=
.seq RemovedBody153_571 RemovedBody153_634

def RemovedBody153_636 : StackLang.HolProg 64 :=
.seq RemovedBody153_570 RemovedBody153_635

def RemovedBody153_637 : StackLang.HolProg 64 :=
.seq RemovedBody153_569 RemovedBody153_636

def RemovedBody153_638 : StackLang.HolProg 64 :=
.seq RemovedBody153_568 RemovedBody153_637

def RemovedBody153_639 : StackLang.HolProg 64 :=
.seq RemovedBody153_567 RemovedBody153_638

def RemovedBody153_640 : StackLang.HolProg 64 :=
.seq RemovedBody153_566 RemovedBody153_639

def RemovedBody153_641 : StackLang.HolProg 64 :=
.seq RemovedBody153_565 RemovedBody153_640

def RemovedBody153_642 : StackLang.HolProg 64 :=
.seq RemovedBody153_486 RemovedBody153_641

def RemovedBody153_643 : StackLang.HolProg 64 :=
.seq RemovedBody153_485 RemovedBody153_642

def RemovedBody153_644 : StackLang.HolProg 64 :=
.seq RemovedBody153_484 RemovedBody153_643

def RemovedBody153_645 : StackLang.HolProg 64 :=
.seq RemovedBody153_483 RemovedBody153_644

def RemovedBody153_646 : StackLang.HolProg 64 :=
.seq RemovedBody153_430 RemovedBody153_645

def RemovedBody153_647 : StackLang.HolProg 64 :=
.seq RemovedBody153_429 RemovedBody153_646

def RemovedBody153_648 : StackLang.HolProg 64 :=
.seq RemovedBody153_428 RemovedBody153_647

def RemovedBody153_649 : StackLang.HolProg 64 :=
.seq RemovedBody153_427 RemovedBody153_648

def RemovedBody153_650 : StackLang.HolProg 64 :=
.seq RemovedBody153_426 RemovedBody153_649

def RemovedBody153_651 : StackLang.HolProg 64 :=
.seq RemovedBody153_425 RemovedBody153_650

def RemovedBody153_652 : StackLang.HolProg 64 :=
.seq RemovedBody153_424 RemovedBody153_651

def RemovedBody153_653 : StackLang.HolProg 64 :=
.seq RemovedBody153_423 RemovedBody153_652

def RemovedBody153_654 : StackLang.HolProg 64 :=
.seq RemovedBody153_422 RemovedBody153_653

def RemovedBody153_655 : StackLang.HolProg 64 :=
.seq RemovedBody153_369 RemovedBody153_654

def RemovedBody153_656 : StackLang.HolProg 64 :=
.seq RemovedBody153_368 RemovedBody153_655

def RemovedBody153_657 : StackLang.HolProg 64 :=
.seq RemovedBody153_367 RemovedBody153_656

def RemovedBody153_658 : StackLang.HolProg 64 :=
.seq RemovedBody153_366 RemovedBody153_657

def RemovedBody153_659 : StackLang.HolProg 64 :=
.seq RemovedBody153_365 RemovedBody153_658

def RemovedBody153_660 : StackLang.HolProg 64 :=
.seq RemovedBody153_364 RemovedBody153_659

def RemovedBody153_661 : StackLang.HolProg 64 :=
.seq RemovedBody153_363 RemovedBody153_660

def RemovedBody153_662 : StackLang.HolProg 64 :=
.seq RemovedBody153_362 RemovedBody153_661

def RemovedBody153_663 : StackLang.HolProg 64 :=
.seq RemovedBody153_361 RemovedBody153_662

def RemovedBody153_664 : StackLang.HolProg 64 :=
.seq RemovedBody153_352 RemovedBody153_663

def RemovedBody153_665 : StackLang.HolProg 64 :=
.seq RemovedBody153_351 RemovedBody153_664

def RemovedBody153_666 : StackLang.HolProg 64 :=
.seq RemovedBody153_350 RemovedBody153_665

def RemovedBody153_667 : StackLang.HolProg 64 :=
.seq RemovedBody153_349 RemovedBody153_666

def RemovedBody153_668 : StackLang.HolProg 64 :=
.seq RemovedBody153_348 RemovedBody153_667

def RemovedBody153_669 : StackLang.HolProg 64 :=
.seq RemovedBody153_347 RemovedBody153_668

def RemovedBody153_670 : StackLang.HolProg 64 :=
.seq RemovedBody153_346 RemovedBody153_669

def RemovedBody153_671 : StackLang.HolProg 64 :=
.seq RemovedBody153_345 RemovedBody153_670

def RemovedBody153_672 : StackLang.HolProg 64 :=
.seq RemovedBody153_344 RemovedBody153_671

def RemovedBody153_673 : StackLang.HolProg 64 :=
.seq RemovedBody153_343 RemovedBody153_672

def RemovedBody153_674 : StackLang.HolProg 64 :=
.seq RemovedBody153_342 RemovedBody153_673

def RemovedBody153_675 : StackLang.HolProg 64 :=
.seq RemovedBody153_341 RemovedBody153_674

def RemovedBody153_676 : StackLang.HolProg 64 :=
.seq RemovedBody153_340 RemovedBody153_675

def RemovedBody153_677 : StackLang.HolProg 64 :=
.seq RemovedBody153_275 RemovedBody153_676

def RemovedBody153_678 : StackLang.HolProg 64 :=
.seq RemovedBody153_274 RemovedBody153_677

def RemovedBody153_679 : StackLang.HolProg 64 :=
.seq RemovedBody153_273 RemovedBody153_678

def RemovedBody153_680 : StackLang.HolProg 64 :=
.seq RemovedBody153_272 RemovedBody153_679

def RemovedBody153_681 : StackLang.HolProg 64 :=
.seq RemovedBody153_271 RemovedBody153_680

def RemovedBody153_682 : StackLang.HolProg 64 :=
.seq RemovedBody153_270 RemovedBody153_681

def RemovedBody153_683 : StackLang.HolProg 64 :=
.seq RemovedBody153_269 RemovedBody153_682

def RemovedBody153_684 : StackLang.HolProg 64 :=
.seq RemovedBody153_268 RemovedBody153_683

def RemovedBody153_685 : StackLang.HolProg 64 :=
.seq RemovedBody153_267 RemovedBody153_684

def RemovedBody153_686 : StackLang.HolProg 64 :=
.seq RemovedBody153_198 RemovedBody153_685

def RemovedBody153_687 : StackLang.HolProg 64 :=
.seq RemovedBody153_193 RemovedBody153_686

def RemovedBody153_688 : StackLang.HolProg 64 :=
.seq RemovedBody153_192 RemovedBody153_687

def RemovedBody153_689 : StackLang.HolProg 64 :=
.seq RemovedBody153_191 RemovedBody153_688

def RemovedBody153_690 : StackLang.HolProg 64 :=
.seq RemovedBody153_190 RemovedBody153_689

def RemovedBody153_691 : StackLang.HolProg 64 :=
.seq RemovedBody153_189 RemovedBody153_690

def RemovedBody153_692 : StackLang.HolProg 64 :=
.seq RemovedBody153_188 RemovedBody153_691

def RemovedBody153_693 : StackLang.HolProg 64 :=
.seq RemovedBody153_187 RemovedBody153_692

def RemovedBody153_694 : StackLang.HolProg 64 :=
.seq RemovedBody153_186 RemovedBody153_693

def RemovedBody153_695 : StackLang.HolProg 64 :=
.seq RemovedBody153_185 RemovedBody153_694

def RemovedBody153_696 : StackLang.HolProg 64 :=
.seq RemovedBody153_79 RemovedBody153_695

def RemovedBody153_697 : StackLang.HolProg 64 :=
.seq RemovedBody153_78 RemovedBody153_696

def RemovedBody153_698 : StackLang.HolProg 64 :=
.seq RemovedBody153_77 RemovedBody153_697

def RemovedBody153_699 : StackLang.HolProg 64 :=
.seq RemovedBody153_76 RemovedBody153_698

def RemovedBody153_700 : StackLang.HolProg 64 :=
.seq RemovedBody153_75 RemovedBody153_699

def RemovedBody153_701 : StackLang.HolProg 64 :=
.seq RemovedBody153_18 RemovedBody153_700

def RemovedBody153_702 : StackLang.HolProg 64 :=
.seq RemovedBody153_11 RemovedBody153_701

def RemovedBody153_703 : StackLang.HolProg 64 :=
.seq RemovedBody153_10 RemovedBody153_702

def RemovedBody153_704 : StackLang.HolProg 64 :=
.seq RemovedBody153_9 RemovedBody153_703

def RemovedBody153_705 : StackLang.HolProg 64 :=
.seq RemovedBody153_8 RemovedBody153_704

def RemovedBody153_706 : StackLang.HolProg 64 :=
.seq RemovedBody153_7 RemovedBody153_705

def RemovedBody153_707 : StackLang.HolProg 64 :=
.seq RemovedBody153_6 RemovedBody153_706

def Removed153 : Nat × StackLang.HolProg 64 := (153, RemovedBody153_707)
theorem Removed153_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc153 = Removed153 := by
  kernel_rfl
#print axioms Removed153_eq
end InitECandidate.Proofs.BackendStages
