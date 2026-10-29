import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc392
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody392_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody392_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody392_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody392_3 : StackLang.HolProg 64 :=
.seq RemovedBody392_1 RemovedBody392_2

def RemovedBody392_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody392_3 RemovedBody392_4

def RemovedBody392_6 : StackLang.HolProg 64 :=
.seq RemovedBody392_0 RemovedBody392_5

def RemovedBody392_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody392_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody392_9 : StackLang.HolProg 64 :=
.seq RemovedBody392_7 RemovedBody392_8

def RemovedBody392_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody392_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody392_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody392_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551424#64))

def RemovedBody392_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def RemovedBody392_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody392_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody392_18 : StackLang.HolProg 64 :=
.seq RemovedBody392_16 RemovedBody392_17

def RemovedBody392_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1169#64)

def RemovedBody392_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody392_22 : StackLang.HolProg 64 :=
.seq RemovedBody392_20 RemovedBody392_21

def RemovedBody392_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody392_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody392_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody392_26 : StackLang.HolProg 64 :=
.seq RemovedBody392_24 RemovedBody392_25

def RemovedBody392_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody392_26 RemovedBody392_27

def RemovedBody392_29 : StackLang.HolProg 64 :=
.seq RemovedBody392_23 RemovedBody392_28

def RemovedBody392_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody392_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody392_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 392 3

def RemovedBody392_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody392_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody392_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody392_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody392_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody392_39 : StackLang.HolProg 64 :=
.seq RemovedBody392_37 RemovedBody392_38

def RemovedBody392_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody392_41 : StackLang.HolProg 64 :=
.seq RemovedBody392_39 RemovedBody392_40

def RemovedBody392_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody392_43 : StackLang.HolProg 64 :=
.seq RemovedBody392_41 RemovedBody392_42

def RemovedBody392_44 : StackLang.HolProg 64 :=
.seq RemovedBody392_36 RemovedBody392_43

def RemovedBody392_45 : StackLang.HolProg 64 :=
.seq RemovedBody392_35 RemovedBody392_44

def RemovedBody392_46 : StackLang.HolProg 64 :=
.seq RemovedBody392_34 RemovedBody392_45

def RemovedBody392_47 : StackLang.HolProg 64 :=
.seq RemovedBody392_33 RemovedBody392_46

def RemovedBody392_48 : StackLang.HolProg 64 :=
.seq RemovedBody392_32 RemovedBody392_47

def RemovedBody392_49 : StackLang.HolProg 64 :=
.seq RemovedBody392_31 RemovedBody392_48

def RemovedBody392_50 : StackLang.HolProg 64 :=
.seq RemovedBody392_30 RemovedBody392_49

def RemovedBody392_51 : StackLang.HolProg 64 :=
.seq RemovedBody392_29 RemovedBody392_50

def RemovedBody392_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody392_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody392_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody392_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody392_59 : StackLang.HolProg 64 :=
.seq RemovedBody392_57 RemovedBody392_58

def RemovedBody392_60 : StackLang.HolProg 64 :=
.seq RemovedBody392_56 RemovedBody392_59

def RemovedBody392_61 : StackLang.HolProg 64 :=
.seq RemovedBody392_55 RemovedBody392_60

def RemovedBody392_62 : StackLang.HolProg 64 :=
.seq RemovedBody392_54 RemovedBody392_61

def RemovedBody392_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody392_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody392_65 : StackLang.HolProg 64 :=
.seq RemovedBody392_63 RemovedBody392_64

def RemovedBody392_66 : StackLang.HolProg 64 :=
.call (some (RemovedBody392_62, 0, 392, 2)) (Sum.inl 77) (some (RemovedBody392_65, 392, 3))

def RemovedBody392_67 : StackLang.HolProg 64 :=
.seq RemovedBody392_53 RemovedBody392_66

def RemovedBody392_68 : StackLang.HolProg 64 :=
.seq RemovedBody392_52 RemovedBody392_67

def RemovedBody392_69 : StackLang.HolProg 64 :=
.seq RemovedBody392_51 RemovedBody392_68

def RemovedBody392_70 : StackLang.HolProg 64 :=
.seq RemovedBody392_22 RemovedBody392_69

def RemovedBody392_71 : StackLang.HolProg 64 :=
.seq RemovedBody392_19 RemovedBody392_70

def RemovedBody392_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody392_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody392_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody392_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody392_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551424#64))

def RemovedBody392_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 20#64)))

def RemovedBody392_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody392_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1170#64)

def RemovedBody392_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody392_84 : StackLang.HolProg 64 :=
.seq RemovedBody392_82 RemovedBody392_83

def RemovedBody392_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody392_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody392_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody392_88 : StackLang.HolProg 64 :=
.seq RemovedBody392_86 RemovedBody392_87

def RemovedBody392_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody392_88 RemovedBody392_89

def RemovedBody392_91 : StackLang.HolProg 64 :=
.seq RemovedBody392_85 RemovedBody392_90

def RemovedBody392_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody392_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody392_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 392 5

def RemovedBody392_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody392_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody392_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody392_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody392_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody392_101 : StackLang.HolProg 64 :=
.seq RemovedBody392_99 RemovedBody392_100

def RemovedBody392_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody392_103 : StackLang.HolProg 64 :=
.seq RemovedBody392_101 RemovedBody392_102

def RemovedBody392_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody392_105 : StackLang.HolProg 64 :=
.seq RemovedBody392_103 RemovedBody392_104

def RemovedBody392_106 : StackLang.HolProg 64 :=
.seq RemovedBody392_98 RemovedBody392_105

def RemovedBody392_107 : StackLang.HolProg 64 :=
.seq RemovedBody392_97 RemovedBody392_106

def RemovedBody392_108 : StackLang.HolProg 64 :=
.seq RemovedBody392_96 RemovedBody392_107

def RemovedBody392_109 : StackLang.HolProg 64 :=
.seq RemovedBody392_95 RemovedBody392_108

def RemovedBody392_110 : StackLang.HolProg 64 :=
.seq RemovedBody392_94 RemovedBody392_109

def RemovedBody392_111 : StackLang.HolProg 64 :=
.seq RemovedBody392_93 RemovedBody392_110

def RemovedBody392_112 : StackLang.HolProg 64 :=
.seq RemovedBody392_92 RemovedBody392_111

def RemovedBody392_113 : StackLang.HolProg 64 :=
.seq RemovedBody392_91 RemovedBody392_112

def RemovedBody392_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody392_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody392_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody392_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody392_121 : StackLang.HolProg 64 :=
.seq RemovedBody392_119 RemovedBody392_120

def RemovedBody392_122 : StackLang.HolProg 64 :=
.seq RemovedBody392_118 RemovedBody392_121

def RemovedBody392_123 : StackLang.HolProg 64 :=
.seq RemovedBody392_117 RemovedBody392_122

def RemovedBody392_124 : StackLang.HolProg 64 :=
.seq RemovedBody392_116 RemovedBody392_123

def RemovedBody392_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody392_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody392_127 : StackLang.HolProg 64 :=
.seq RemovedBody392_125 RemovedBody392_126

def RemovedBody392_128 : StackLang.HolProg 64 :=
.call (some (RemovedBody392_124, 0, 392, 4)) (Sum.inl 77) (some (RemovedBody392_127, 392, 5))

def RemovedBody392_129 : StackLang.HolProg 64 :=
.seq RemovedBody392_115 RemovedBody392_128

def RemovedBody392_130 : StackLang.HolProg 64 :=
.seq RemovedBody392_114 RemovedBody392_129

def RemovedBody392_131 : StackLang.HolProg 64 :=
.seq RemovedBody392_113 RemovedBody392_130

def RemovedBody392_132 : StackLang.HolProg 64 :=
.seq RemovedBody392_84 RemovedBody392_131

def RemovedBody392_133 : StackLang.HolProg 64 :=
.seq RemovedBody392_81 RemovedBody392_132

def RemovedBody392_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody392_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody392_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody392_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody392_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551424#64))

def RemovedBody392_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody392_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody392_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody392_142 : StackLang.HolProg 64 :=
.seq RemovedBody392_140 RemovedBody392_141

def RemovedBody392_143 : StackLang.HolProg 64 :=
.seq RemovedBody392_139 RemovedBody392_142

def RemovedBody392_144 : StackLang.HolProg 64 :=
.seq RemovedBody392_138 RemovedBody392_143

def RemovedBody392_145 : StackLang.HolProg 64 :=
.seq RemovedBody392_137 RemovedBody392_144

def RemovedBody392_146 : StackLang.HolProg 64 :=
.seq RemovedBody392_136 RemovedBody392_145

def RemovedBody392_147 : StackLang.HolProg 64 :=
.seq RemovedBody392_135 RemovedBody392_146

def RemovedBody392_148 : StackLang.HolProg 64 :=
.seq RemovedBody392_134 RemovedBody392_147

def RemovedBody392_149 : StackLang.HolProg 64 :=
.seq RemovedBody392_133 RemovedBody392_148

def RemovedBody392_150 : StackLang.HolProg 64 :=
.seq RemovedBody392_80 RemovedBody392_149

def RemovedBody392_151 : StackLang.HolProg 64 :=
.seq RemovedBody392_79 RemovedBody392_150

def RemovedBody392_152 : StackLang.HolProg 64 :=
.seq RemovedBody392_78 RemovedBody392_151

def RemovedBody392_153 : StackLang.HolProg 64 :=
.seq RemovedBody392_77 RemovedBody392_152

def RemovedBody392_154 : StackLang.HolProg 64 :=
.seq RemovedBody392_76 RemovedBody392_153

def RemovedBody392_155 : StackLang.HolProg 64 :=
.seq RemovedBody392_75 RemovedBody392_154

def RemovedBody392_156 : StackLang.HolProg 64 :=
.seq RemovedBody392_74 RemovedBody392_155

def RemovedBody392_157 : StackLang.HolProg 64 :=
.seq RemovedBody392_73 RemovedBody392_156

def RemovedBody392_158 : StackLang.HolProg 64 :=
.seq RemovedBody392_72 RemovedBody392_157

def RemovedBody392_159 : StackLang.HolProg 64 :=
.seq RemovedBody392_71 RemovedBody392_158

def RemovedBody392_160 : StackLang.HolProg 64 :=
.seq RemovedBody392_18 RemovedBody392_159

def RemovedBody392_161 : StackLang.HolProg 64 :=
.seq RemovedBody392_15 RemovedBody392_160

def RemovedBody392_162 : StackLang.HolProg 64 :=
.seq RemovedBody392_14 RemovedBody392_161

def RemovedBody392_163 : StackLang.HolProg 64 :=
.seq RemovedBody392_13 RemovedBody392_162

def RemovedBody392_164 : StackLang.HolProg 64 :=
.seq RemovedBody392_12 RemovedBody392_163

def RemovedBody392_165 : StackLang.HolProg 64 :=
.seq RemovedBody392_11 RemovedBody392_164

def RemovedBody392_166 : StackLang.HolProg 64 :=
.seq RemovedBody392_10 RemovedBody392_165

def RemovedBody392_167 : StackLang.HolProg 64 :=
.seq RemovedBody392_9 RemovedBody392_166

def RemovedBody392_168 : StackLang.HolProg 64 :=
.seq RemovedBody392_6 RemovedBody392_167

def Removed392 : Nat × StackLang.HolProg 64 := (392, RemovedBody392_168)
theorem Removed392_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc392 = Removed392 := by
  kernel_rfl
#print axioms Removed392_eq
end InitECandidate.Proofs.BackendStages
