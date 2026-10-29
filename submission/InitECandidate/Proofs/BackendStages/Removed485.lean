import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc485
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody485_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody485_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody485_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody485_3 : StackLang.HolProg 64 :=
.seq RemovedBody485_1 RemovedBody485_2

def RemovedBody485_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody485_3 RemovedBody485_4

def RemovedBody485_6 : StackLang.HolProg 64 :=
.seq RemovedBody485_0 RemovedBody485_5

def RemovedBody485_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody485_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody485_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody485_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody485_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody485_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody485_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody485_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody485_15 : StackLang.HolProg 64 :=
.seq RemovedBody485_13 RemovedBody485_14

def RemovedBody485_16 : StackLang.HolProg 64 :=
.seq RemovedBody485_12 RemovedBody485_15

def RemovedBody485_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1523#64)

def RemovedBody485_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody485_20 : StackLang.HolProg 64 :=
.seq RemovedBody485_18 RemovedBody485_19

def RemovedBody485_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody485_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody485_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody485_24 : StackLang.HolProg 64 :=
.seq RemovedBody485_22 RemovedBody485_23

def RemovedBody485_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody485_24 RemovedBody485_25

def RemovedBody485_27 : StackLang.HolProg 64 :=
.seq RemovedBody485_21 RemovedBody485_26

def RemovedBody485_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody485_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody485_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 485 3

def RemovedBody485_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody485_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody485_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody485_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody485_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody485_37 : StackLang.HolProg 64 :=
.seq RemovedBody485_35 RemovedBody485_36

def RemovedBody485_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody485_39 : StackLang.HolProg 64 :=
.seq RemovedBody485_37 RemovedBody485_38

def RemovedBody485_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody485_41 : StackLang.HolProg 64 :=
.seq RemovedBody485_39 RemovedBody485_40

def RemovedBody485_42 : StackLang.HolProg 64 :=
.seq RemovedBody485_34 RemovedBody485_41

def RemovedBody485_43 : StackLang.HolProg 64 :=
.seq RemovedBody485_33 RemovedBody485_42

def RemovedBody485_44 : StackLang.HolProg 64 :=
.seq RemovedBody485_32 RemovedBody485_43

def RemovedBody485_45 : StackLang.HolProg 64 :=
.seq RemovedBody485_31 RemovedBody485_44

def RemovedBody485_46 : StackLang.HolProg 64 :=
.seq RemovedBody485_30 RemovedBody485_45

def RemovedBody485_47 : StackLang.HolProg 64 :=
.seq RemovedBody485_29 RemovedBody485_46

def RemovedBody485_48 : StackLang.HolProg 64 :=
.seq RemovedBody485_28 RemovedBody485_47

def RemovedBody485_49 : StackLang.HolProg 64 :=
.seq RemovedBody485_27 RemovedBody485_48

def RemovedBody485_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody485_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody485_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody485_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody485_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody485_58 : StackLang.HolProg 64 :=
.seq RemovedBody485_56 RemovedBody485_57

def RemovedBody485_59 : StackLang.HolProg 64 :=
.seq RemovedBody485_55 RemovedBody485_58

def RemovedBody485_60 : StackLang.HolProg 64 :=
.seq RemovedBody485_54 RemovedBody485_59

def RemovedBody485_61 : StackLang.HolProg 64 :=
.seq RemovedBody485_53 RemovedBody485_60

def RemovedBody485_62 : StackLang.HolProg 64 :=
.seq RemovedBody485_52 RemovedBody485_61

def RemovedBody485_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody485_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody485_65 : StackLang.HolProg 64 :=
.seq RemovedBody485_63 RemovedBody485_64

def RemovedBody485_66 : StackLang.HolProg 64 :=
.call (some (RemovedBody485_62, 0, 485, 2)) (Sum.inl 74) (some (RemovedBody485_65, 485, 3))

def RemovedBody485_67 : StackLang.HolProg 64 :=
.seq RemovedBody485_51 RemovedBody485_66

def RemovedBody485_68 : StackLang.HolProg 64 :=
.seq RemovedBody485_50 RemovedBody485_67

def RemovedBody485_69 : StackLang.HolProg 64 :=
.seq RemovedBody485_49 RemovedBody485_68

def RemovedBody485_70 : StackLang.HolProg 64 :=
.seq RemovedBody485_20 RemovedBody485_69

def RemovedBody485_71 : StackLang.HolProg 64 :=
.seq RemovedBody485_17 RemovedBody485_70

def RemovedBody485_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody485_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody485_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody485_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody485_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody485_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody485_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody485_80 : StackLang.HolProg 64 :=
.seq RemovedBody485_78 RemovedBody485_79

def RemovedBody485_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1524#64)

def RemovedBody485_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody485_84 : StackLang.HolProg 64 :=
.seq RemovedBody485_82 RemovedBody485_83

def RemovedBody485_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody485_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody485_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody485_88 : StackLang.HolProg 64 :=
.seq RemovedBody485_86 RemovedBody485_87

def RemovedBody485_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody485_88 RemovedBody485_89

def RemovedBody485_91 : StackLang.HolProg 64 :=
.seq RemovedBody485_85 RemovedBody485_90

def RemovedBody485_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody485_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody485_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 485 5

def RemovedBody485_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody485_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody485_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody485_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody485_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody485_101 : StackLang.HolProg 64 :=
.seq RemovedBody485_99 RemovedBody485_100

def RemovedBody485_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody485_103 : StackLang.HolProg 64 :=
.seq RemovedBody485_101 RemovedBody485_102

def RemovedBody485_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody485_105 : StackLang.HolProg 64 :=
.seq RemovedBody485_103 RemovedBody485_104

def RemovedBody485_106 : StackLang.HolProg 64 :=
.seq RemovedBody485_98 RemovedBody485_105

def RemovedBody485_107 : StackLang.HolProg 64 :=
.seq RemovedBody485_97 RemovedBody485_106

def RemovedBody485_108 : StackLang.HolProg 64 :=
.seq RemovedBody485_96 RemovedBody485_107

def RemovedBody485_109 : StackLang.HolProg 64 :=
.seq RemovedBody485_95 RemovedBody485_108

def RemovedBody485_110 : StackLang.HolProg 64 :=
.seq RemovedBody485_94 RemovedBody485_109

def RemovedBody485_111 : StackLang.HolProg 64 :=
.seq RemovedBody485_93 RemovedBody485_110

def RemovedBody485_112 : StackLang.HolProg 64 :=
.seq RemovedBody485_92 RemovedBody485_111

def RemovedBody485_113 : StackLang.HolProg 64 :=
.seq RemovedBody485_91 RemovedBody485_112

def RemovedBody485_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody485_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody485_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody485_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody485_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody485_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody485_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody485_124 : StackLang.HolProg 64 :=
.seq RemovedBody485_122 RemovedBody485_123

def RemovedBody485_125 : StackLang.HolProg 64 :=
.seq RemovedBody485_121 RemovedBody485_124

def RemovedBody485_126 : StackLang.HolProg 64 :=
.seq RemovedBody485_120 RemovedBody485_125

def RemovedBody485_127 : StackLang.HolProg 64 :=
.seq RemovedBody485_119 RemovedBody485_126

def RemovedBody485_128 : StackLang.HolProg 64 :=
.seq RemovedBody485_118 RemovedBody485_127

def RemovedBody485_129 : StackLang.HolProg 64 :=
.seq RemovedBody485_117 RemovedBody485_128

def RemovedBody485_130 : StackLang.HolProg 64 :=
.seq RemovedBody485_116 RemovedBody485_129

def RemovedBody485_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody485_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody485_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody485_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody485_135 : StackLang.HolProg 64 :=
.seq RemovedBody485_133 RemovedBody485_134

def RemovedBody485_136 : StackLang.HolProg 64 :=
.seq RemovedBody485_132 RemovedBody485_135

def RemovedBody485_137 : StackLang.HolProg 64 :=
.seq RemovedBody485_131 RemovedBody485_136

def RemovedBody485_138 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody485_139 : StackLang.HolProg 64 :=
.seq RemovedBody485_137 RemovedBody485_138

def RemovedBody485_140 : StackLang.HolProg 64 :=
.call (some (RemovedBody485_130, 0, 485, 4)) (Sum.inl 78) (some (RemovedBody485_139, 485, 5))

def RemovedBody485_141 : StackLang.HolProg 64 :=
.seq RemovedBody485_115 RemovedBody485_140

def RemovedBody485_142 : StackLang.HolProg 64 :=
.seq RemovedBody485_114 RemovedBody485_141

def RemovedBody485_143 : StackLang.HolProg 64 :=
.seq RemovedBody485_113 RemovedBody485_142

def RemovedBody485_144 : StackLang.HolProg 64 :=
.seq RemovedBody485_84 RemovedBody485_143

def RemovedBody485_145 : StackLang.HolProg 64 :=
.seq RemovedBody485_81 RemovedBody485_144

def RemovedBody485_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody485_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody485_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody485_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def RemovedBody485_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 91#64)

def RemovedBody485_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody485_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody485_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody485_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody485_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody485_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody485_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody485_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody485_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody485_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_176 : StackLang.HolProg 64 :=
.seq RemovedBody485_174 RemovedBody485_175

def RemovedBody485_177 : StackLang.HolProg 64 :=
.seq RemovedBody485_173 RemovedBody485_176

def RemovedBody485_178 : StackLang.HolProg 64 :=
.seq RemovedBody485_172 RemovedBody485_177

def RemovedBody485_179 : StackLang.HolProg 64 :=
.seq RemovedBody485_171 RemovedBody485_178

def RemovedBody485_180 : StackLang.HolProg 64 :=
.seq RemovedBody485_170 RemovedBody485_179

def RemovedBody485_181 : StackLang.HolProg 64 :=
.seq RemovedBody485_169 RemovedBody485_180

def RemovedBody485_182 : StackLang.HolProg 64 :=
.seq RemovedBody485_168 RemovedBody485_181

def RemovedBody485_183 : StackLang.HolProg 64 :=
.seq RemovedBody485_167 RemovedBody485_182

def RemovedBody485_184 : StackLang.HolProg 64 :=
.seq RemovedBody485_166 RemovedBody485_183

def RemovedBody485_185 : StackLang.HolProg 64 :=
.seq RemovedBody485_165 RemovedBody485_184

def RemovedBody485_186 : StackLang.HolProg 64 :=
.seq RemovedBody485_164 RemovedBody485_185

def RemovedBody485_187 : StackLang.HolProg 64 :=
.seq RemovedBody485_163 RemovedBody485_186

def RemovedBody485_188 : StackLang.HolProg 64 :=
.seq RemovedBody485_162 RemovedBody485_187

def RemovedBody485_189 : StackLang.HolProg 64 :=
.seq RemovedBody485_161 RemovedBody485_188

def RemovedBody485_190 : StackLang.HolProg 64 :=
.seq RemovedBody485_160 RemovedBody485_189

def RemovedBody485_191 : StackLang.HolProg 64 :=
.seq RemovedBody485_159 RemovedBody485_190

def RemovedBody485_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 96#64)

def RemovedBody485_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def RemovedBody485_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_198 : StackLang.HolProg 64 :=
.seq RemovedBody485_196 RemovedBody485_197

def RemovedBody485_199 : StackLang.HolProg 64 :=
.seq RemovedBody485_195 RemovedBody485_198

def RemovedBody485_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def RemovedBody485_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_203 : StackLang.HolProg 64 :=
.seq RemovedBody485_201 RemovedBody485_202

def RemovedBody485_204 : StackLang.HolProg 64 :=
.seq RemovedBody485_200 RemovedBody485_203

def RemovedBody485_205 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody485_199 RemovedBody485_204

def RemovedBody485_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 127#64)

def RemovedBody485_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody485_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_212 : StackLang.HolProg 64 :=
.seq RemovedBody485_210 RemovedBody485_211

def RemovedBody485_213 : StackLang.HolProg 64 :=
.seq RemovedBody485_209 RemovedBody485_212

def RemovedBody485_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody485_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_217 : StackLang.HolProg 64 :=
.seq RemovedBody485_215 RemovedBody485_216

def RemovedBody485_218 : StackLang.HolProg 64 :=
.seq RemovedBody485_214 RemovedBody485_217

def RemovedBody485_219 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody485_213 RemovedBody485_218

def RemovedBody485_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody485_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551522#64)))

def RemovedBody485_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_226 : StackLang.HolProg 64 :=
.seq RemovedBody485_224 RemovedBody485_225

def RemovedBody485_227 : StackLang.HolProg 64 :=
.seq RemovedBody485_223 RemovedBody485_226

def RemovedBody485_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 230#64)

def RemovedBody485_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def RemovedBody485_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_232 : StackLang.HolProg 64 :=
.seq RemovedBody485_230 RemovedBody485_231

def RemovedBody485_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def RemovedBody485_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_235 : StackLang.HolProg 64 :=
.seq RemovedBody485_233 RemovedBody485_234

def RemovedBody485_236 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody485_232 RemovedBody485_235

def RemovedBody485_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 231#64)

def RemovedBody485_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody485_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_242 : StackLang.HolProg 64 :=
.seq RemovedBody485_240 RemovedBody485_241

def RemovedBody485_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody485_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_245 : StackLang.HolProg 64 :=
.seq RemovedBody485_243 RemovedBody485_244

def RemovedBody485_246 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody485_242 RemovedBody485_245

def RemovedBody485_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def RemovedBody485_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody485_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2#64)

def RemovedBody485_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody485_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody485_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody485_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody485_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 91#64)

def RemovedBody485_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def RemovedBody485_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_265 : StackLang.HolProg 64 :=
.seq RemovedBody485_263 RemovedBody485_264

def RemovedBody485_266 : StackLang.HolProg 64 :=
.seq RemovedBody485_262 RemovedBody485_265

def RemovedBody485_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def RemovedBody485_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_270 : StackLang.HolProg 64 :=
.seq RemovedBody485_268 RemovedBody485_269

def RemovedBody485_271 : StackLang.HolProg 64 :=
.seq RemovedBody485_267 RemovedBody485_270

def RemovedBody485_272 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) RemovedBody485_266 RemovedBody485_271

def RemovedBody485_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 127#64)

def RemovedBody485_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody485_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_279 : StackLang.HolProg 64 :=
.seq RemovedBody485_277 RemovedBody485_278

def RemovedBody485_280 : StackLang.HolProg 64 :=
.seq RemovedBody485_276 RemovedBody485_279

def RemovedBody485_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody485_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_284 : StackLang.HolProg 64 :=
.seq RemovedBody485_282 RemovedBody485_283

def RemovedBody485_285 : StackLang.HolProg 64 :=
.seq RemovedBody485_281 RemovedBody485_284

def RemovedBody485_286 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody485_280 RemovedBody485_285

def RemovedBody485_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody485_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def RemovedBody485_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_292 : StackLang.HolProg 64 :=
.seq RemovedBody485_290 RemovedBody485_291

def RemovedBody485_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_294 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody485_292 RemovedBody485_293

def RemovedBody485_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_297 : StackLang.HolProg 64 :=
.seq RemovedBody485_295 RemovedBody485_296

def RemovedBody485_298 : StackLang.HolProg 64 :=
.seq RemovedBody485_294 RemovedBody485_297

def RemovedBody485_299 : StackLang.HolProg 64 :=
.seq RemovedBody485_289 RemovedBody485_298

def RemovedBody485_300 : StackLang.HolProg 64 :=
.seq RemovedBody485_288 RemovedBody485_299

def RemovedBody485_301 : StackLang.HolProg 64 :=
.seq RemovedBody485_287 RemovedBody485_300

def RemovedBody485_302 : StackLang.HolProg 64 :=
.seq RemovedBody485_286 RemovedBody485_301

def RemovedBody485_303 : StackLang.HolProg 64 :=
.seq RemovedBody485_275 RemovedBody485_302

def RemovedBody485_304 : StackLang.HolProg 64 :=
.seq RemovedBody485_274 RemovedBody485_303

def RemovedBody485_305 : StackLang.HolProg 64 :=
.seq RemovedBody485_273 RemovedBody485_304

def RemovedBody485_306 : StackLang.HolProg 64 :=
.seq RemovedBody485_272 RemovedBody485_305

def RemovedBody485_307 : StackLang.HolProg 64 :=
.seq RemovedBody485_261 RemovedBody485_306

def RemovedBody485_308 : StackLang.HolProg 64 :=
.seq RemovedBody485_260 RemovedBody485_307

def RemovedBody485_309 : StackLang.HolProg 64 :=
.seq RemovedBody485_259 RemovedBody485_308

def RemovedBody485_310 : StackLang.HolProg 64 :=
.seq RemovedBody485_258 RemovedBody485_309

def RemovedBody485_311 : StackLang.HolProg 64 :=
.seq RemovedBody485_257 RemovedBody485_310

def RemovedBody485_312 : StackLang.HolProg 64 :=
.seq RemovedBody485_256 RemovedBody485_311

def RemovedBody485_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_315 : StackLang.HolProg 64 :=
.seq RemovedBody485_313 RemovedBody485_314

def RemovedBody485_316 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody485_312 RemovedBody485_315

def RemovedBody485_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_319 : StackLang.HolProg 64 :=
.seq RemovedBody485_317 RemovedBody485_318

def RemovedBody485_320 : StackLang.HolProg 64 :=
.seq RemovedBody485_316 RemovedBody485_319

def RemovedBody485_321 : StackLang.HolProg 64 :=
.seq RemovedBody485_255 RemovedBody485_320

def RemovedBody485_322 : StackLang.HolProg 64 :=
.seq RemovedBody485_254 RemovedBody485_321

def RemovedBody485_323 : StackLang.HolProg 64 :=
.seq RemovedBody485_253 RemovedBody485_322

def RemovedBody485_324 : StackLang.HolProg 64 :=
.seq RemovedBody485_252 RemovedBody485_323

def RemovedBody485_325 : StackLang.HolProg 64 :=
.seq RemovedBody485_251 RemovedBody485_324

def RemovedBody485_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_328 : StackLang.HolProg 64 :=
.seq RemovedBody485_326 RemovedBody485_327

def RemovedBody485_329 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody485_325 RemovedBody485_328

def RemovedBody485_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 232#64)

def RemovedBody485_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2#64)

def RemovedBody485_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody485_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody485_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody485_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 82#64)

def RemovedBody485_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody485_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_347 : StackLang.HolProg 64 :=
.seq RemovedBody485_345 RemovedBody485_346

def RemovedBody485_348 : StackLang.HolProg 64 :=
.seq RemovedBody485_344 RemovedBody485_347

def RemovedBody485_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody485_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_352 : StackLang.HolProg 64 :=
.seq RemovedBody485_350 RemovedBody485_351

def RemovedBody485_353 : StackLang.HolProg 64 :=
.seq RemovedBody485_349 RemovedBody485_352

def RemovedBody485_354 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody485_348 RemovedBody485_353

def RemovedBody485_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 127#64)

def RemovedBody485_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody485_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_361 : StackLang.HolProg 64 :=
.seq RemovedBody485_359 RemovedBody485_360

def RemovedBody485_362 : StackLang.HolProg 64 :=
.seq RemovedBody485_358 RemovedBody485_361

def RemovedBody485_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody485_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_366 : StackLang.HolProg 64 :=
.seq RemovedBody485_364 RemovedBody485_365

def RemovedBody485_367 : StackLang.HolProg 64 :=
.seq RemovedBody485_363 RemovedBody485_366

def RemovedBody485_368 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody485_362 RemovedBody485_367

def RemovedBody485_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody485_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def RemovedBody485_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_374 : StackLang.HolProg 64 :=
.seq RemovedBody485_372 RemovedBody485_373

def RemovedBody485_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_376 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody485_374 RemovedBody485_375

def RemovedBody485_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_379 : StackLang.HolProg 64 :=
.seq RemovedBody485_377 RemovedBody485_378

def RemovedBody485_380 : StackLang.HolProg 64 :=
.seq RemovedBody485_376 RemovedBody485_379

def RemovedBody485_381 : StackLang.HolProg 64 :=
.seq RemovedBody485_371 RemovedBody485_380

def RemovedBody485_382 : StackLang.HolProg 64 :=
.seq RemovedBody485_370 RemovedBody485_381

def RemovedBody485_383 : StackLang.HolProg 64 :=
.seq RemovedBody485_369 RemovedBody485_382

def RemovedBody485_384 : StackLang.HolProg 64 :=
.seq RemovedBody485_368 RemovedBody485_383

def RemovedBody485_385 : StackLang.HolProg 64 :=
.seq RemovedBody485_357 RemovedBody485_384

def RemovedBody485_386 : StackLang.HolProg 64 :=
.seq RemovedBody485_356 RemovedBody485_385

def RemovedBody485_387 : StackLang.HolProg 64 :=
.seq RemovedBody485_355 RemovedBody485_386

def RemovedBody485_388 : StackLang.HolProg 64 :=
.seq RemovedBody485_354 RemovedBody485_387

def RemovedBody485_389 : StackLang.HolProg 64 :=
.seq RemovedBody485_343 RemovedBody485_388

def RemovedBody485_390 : StackLang.HolProg 64 :=
.seq RemovedBody485_342 RemovedBody485_389

def RemovedBody485_391 : StackLang.HolProg 64 :=
.seq RemovedBody485_341 RemovedBody485_390

def RemovedBody485_392 : StackLang.HolProg 64 :=
.seq RemovedBody485_340 RemovedBody485_391

def RemovedBody485_393 : StackLang.HolProg 64 :=
.seq RemovedBody485_339 RemovedBody485_392

def RemovedBody485_394 : StackLang.HolProg 64 :=
.seq RemovedBody485_338 RemovedBody485_393

def RemovedBody485_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_397 : StackLang.HolProg 64 :=
.seq RemovedBody485_395 RemovedBody485_396

def RemovedBody485_398 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody485_394 RemovedBody485_397

def RemovedBody485_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_401 : StackLang.HolProg 64 :=
.seq RemovedBody485_399 RemovedBody485_400

def RemovedBody485_402 : StackLang.HolProg 64 :=
.seq RemovedBody485_398 RemovedBody485_401

def RemovedBody485_403 : StackLang.HolProg 64 :=
.seq RemovedBody485_337 RemovedBody485_402

def RemovedBody485_404 : StackLang.HolProg 64 :=
.seq RemovedBody485_336 RemovedBody485_403

def RemovedBody485_405 : StackLang.HolProg 64 :=
.seq RemovedBody485_335 RemovedBody485_404

def RemovedBody485_406 : StackLang.HolProg 64 :=
.seq RemovedBody485_334 RemovedBody485_405

def RemovedBody485_407 : StackLang.HolProg 64 :=
.seq RemovedBody485_333 RemovedBody485_406

def RemovedBody485_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_410 : StackLang.HolProg 64 :=
.seq RemovedBody485_408 RemovedBody485_409

def RemovedBody485_411 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody485_407 RemovedBody485_410

def RemovedBody485_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_414 : StackLang.HolProg 64 :=
.seq RemovedBody485_412 RemovedBody485_413

def RemovedBody485_415 : StackLang.HolProg 64 :=
.seq RemovedBody485_411 RemovedBody485_414

def RemovedBody485_416 : StackLang.HolProg 64 :=
.seq RemovedBody485_332 RemovedBody485_415

def RemovedBody485_417 : StackLang.HolProg 64 :=
.seq RemovedBody485_331 RemovedBody485_416

def RemovedBody485_418 : StackLang.HolProg 64 :=
.seq RemovedBody485_330 RemovedBody485_417

def RemovedBody485_419 : StackLang.HolProg 64 :=
.seq RemovedBody485_329 RemovedBody485_418

def RemovedBody485_420 : StackLang.HolProg 64 :=
.seq RemovedBody485_250 RemovedBody485_419

def RemovedBody485_421 : StackLang.HolProg 64 :=
.seq RemovedBody485_249 RemovedBody485_420

def RemovedBody485_422 : StackLang.HolProg 64 :=
.seq RemovedBody485_248 RemovedBody485_421

def RemovedBody485_423 : StackLang.HolProg 64 :=
.seq RemovedBody485_247 RemovedBody485_422

def RemovedBody485_424 : StackLang.HolProg 64 :=
.seq RemovedBody485_246 RemovedBody485_423

def RemovedBody485_425 : StackLang.HolProg 64 :=
.seq RemovedBody485_239 RemovedBody485_424

def RemovedBody485_426 : StackLang.HolProg 64 :=
.seq RemovedBody485_238 RemovedBody485_425

def RemovedBody485_427 : StackLang.HolProg 64 :=
.seq RemovedBody485_237 RemovedBody485_426

def RemovedBody485_428 : StackLang.HolProg 64 :=
.seq RemovedBody485_236 RemovedBody485_427

def RemovedBody485_429 : StackLang.HolProg 64 :=
.seq RemovedBody485_229 RemovedBody485_428

def RemovedBody485_430 : StackLang.HolProg 64 :=
.seq RemovedBody485_228 RemovedBody485_429

def RemovedBody485_431 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody485_227 RemovedBody485_430

def RemovedBody485_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_434 : StackLang.HolProg 64 :=
.seq RemovedBody485_432 RemovedBody485_433

def RemovedBody485_435 : StackLang.HolProg 64 :=
.seq RemovedBody485_431 RemovedBody485_434

def RemovedBody485_436 : StackLang.HolProg 64 :=
.seq RemovedBody485_222 RemovedBody485_435

def RemovedBody485_437 : StackLang.HolProg 64 :=
.seq RemovedBody485_221 RemovedBody485_436

def RemovedBody485_438 : StackLang.HolProg 64 :=
.seq RemovedBody485_220 RemovedBody485_437

def RemovedBody485_439 : StackLang.HolProg 64 :=
.seq RemovedBody485_219 RemovedBody485_438

def RemovedBody485_440 : StackLang.HolProg 64 :=
.seq RemovedBody485_208 RemovedBody485_439

def RemovedBody485_441 : StackLang.HolProg 64 :=
.seq RemovedBody485_207 RemovedBody485_440

def RemovedBody485_442 : StackLang.HolProg 64 :=
.seq RemovedBody485_206 RemovedBody485_441

def RemovedBody485_443 : StackLang.HolProg 64 :=
.seq RemovedBody485_205 RemovedBody485_442

def RemovedBody485_444 : StackLang.HolProg 64 :=
.seq RemovedBody485_194 RemovedBody485_443

def RemovedBody485_445 : StackLang.HolProg 64 :=
.seq RemovedBody485_193 RemovedBody485_444

def RemovedBody485_446 : StackLang.HolProg 64 :=
.seq RemovedBody485_192 RemovedBody485_445

def RemovedBody485_447 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody485_191 RemovedBody485_446

def RemovedBody485_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody485_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody485_453 : StackLang.HolProg 64 :=
.seq RemovedBody485_451 RemovedBody485_452

def RemovedBody485_454 : StackLang.HolProg 64 :=
.seq RemovedBody485_450 RemovedBody485_453

def RemovedBody485_455 : StackLang.HolProg 64 :=
.seq RemovedBody485_449 RemovedBody485_454

def RemovedBody485_456 : StackLang.HolProg 64 :=
.seq RemovedBody485_448 RemovedBody485_455

def RemovedBody485_457 : StackLang.HolProg 64 :=
.seq RemovedBody485_447 RemovedBody485_456

def RemovedBody485_458 : StackLang.HolProg 64 :=
.seq RemovedBody485_158 RemovedBody485_457

def RemovedBody485_459 : StackLang.HolProg 64 :=
.seq RemovedBody485_157 RemovedBody485_458

def RemovedBody485_460 : StackLang.HolProg 64 :=
.seq RemovedBody485_156 RemovedBody485_459

def RemovedBody485_461 : StackLang.HolProg 64 :=
.seq RemovedBody485_155 RemovedBody485_460

def RemovedBody485_462 : StackLang.HolProg 64 :=
.seq RemovedBody485_154 RemovedBody485_461

def RemovedBody485_463 : StackLang.HolProg 64 :=
.seq RemovedBody485_153 RemovedBody485_462

def RemovedBody485_464 : StackLang.HolProg 64 :=
.seq RemovedBody485_152 RemovedBody485_463

def RemovedBody485_465 : StackLang.HolProg 64 :=
.seq RemovedBody485_151 RemovedBody485_464

def RemovedBody485_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody485_468 : StackLang.HolProg 64 :=
.seq RemovedBody485_466 RemovedBody485_467

def RemovedBody485_469 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody485_465 RemovedBody485_468

def RemovedBody485_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody485_472 : StackLang.HolProg 64 :=
.seq RemovedBody485_470 RemovedBody485_471

def RemovedBody485_473 : StackLang.HolProg 64 :=
.seq RemovedBody485_469 RemovedBody485_472

def RemovedBody485_474 : StackLang.HolProg 64 :=
.seq RemovedBody485_150 RemovedBody485_473

def RemovedBody485_475 : StackLang.HolProg 64 :=
.loop RemovedBody485_474

def RemovedBody485_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody485_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody485_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody485_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def RemovedBody485_480 : StackLang.HolProg 64 :=
.seq RemovedBody485_478 RemovedBody485_479

def RemovedBody485_481 : StackLang.HolProg 64 :=
.seq RemovedBody485_477 RemovedBody485_480

def RemovedBody485_482 : StackLang.HolProg 64 :=
.seq RemovedBody485_476 RemovedBody485_481

def RemovedBody485_483 : StackLang.HolProg 64 :=
.seq RemovedBody485_475 RemovedBody485_482

def RemovedBody485_484 : StackLang.HolProg 64 :=
.seq RemovedBody485_149 RemovedBody485_483

def RemovedBody485_485 : StackLang.HolProg 64 :=
.seq RemovedBody485_148 RemovedBody485_484

def RemovedBody485_486 : StackLang.HolProg 64 :=
.seq RemovedBody485_147 RemovedBody485_485

def RemovedBody485_487 : StackLang.HolProg 64 :=
.seq RemovedBody485_146 RemovedBody485_486

def RemovedBody485_488 : StackLang.HolProg 64 :=
.seq RemovedBody485_145 RemovedBody485_487

def RemovedBody485_489 : StackLang.HolProg 64 :=
.seq RemovedBody485_80 RemovedBody485_488

def RemovedBody485_490 : StackLang.HolProg 64 :=
.seq RemovedBody485_77 RemovedBody485_489

def RemovedBody485_491 : StackLang.HolProg 64 :=
.seq RemovedBody485_76 RemovedBody485_490

def RemovedBody485_492 : StackLang.HolProg 64 :=
.seq RemovedBody485_75 RemovedBody485_491

def RemovedBody485_493 : StackLang.HolProg 64 :=
.seq RemovedBody485_74 RemovedBody485_492

def RemovedBody485_494 : StackLang.HolProg 64 :=
.seq RemovedBody485_73 RemovedBody485_493

def RemovedBody485_495 : StackLang.HolProg 64 :=
.seq RemovedBody485_72 RemovedBody485_494

def RemovedBody485_496 : StackLang.HolProg 64 :=
.seq RemovedBody485_71 RemovedBody485_495

def RemovedBody485_497 : StackLang.HolProg 64 :=
.seq RemovedBody485_16 RemovedBody485_496

def RemovedBody485_498 : StackLang.HolProg 64 :=
.seq RemovedBody485_11 RemovedBody485_497

def RemovedBody485_499 : StackLang.HolProg 64 :=
.seq RemovedBody485_10 RemovedBody485_498

def RemovedBody485_500 : StackLang.HolProg 64 :=
.seq RemovedBody485_9 RemovedBody485_499

def RemovedBody485_501 : StackLang.HolProg 64 :=
.seq RemovedBody485_8 RemovedBody485_500

def RemovedBody485_502 : StackLang.HolProg 64 :=
.seq RemovedBody485_7 RemovedBody485_501

def RemovedBody485_503 : StackLang.HolProg 64 :=
.seq RemovedBody485_6 RemovedBody485_502

def Removed485 : Nat × StackLang.HolProg 64 := (485, RemovedBody485_503)
theorem Removed485_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc485 = Removed485 := by
  kernel_rfl
#print axioms Removed485_eq
end InitECandidate.Proofs.BackendStages
