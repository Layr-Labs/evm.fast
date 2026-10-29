import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc436
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody436_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody436_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody436_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody436_3 : StackLang.HolProg 64 :=
.seq RemovedBody436_1 RemovedBody436_2

def RemovedBody436_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody436_3 RemovedBody436_4

def RemovedBody436_6 : StackLang.HolProg 64 :=
.seq RemovedBody436_0 RemovedBody436_5

def RemovedBody436_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody436_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def RemovedBody436_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody436_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody436_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody436_12 : StackLang.HolProg 64 :=
.seq RemovedBody436_10 RemovedBody436_11

def RemovedBody436_13 : StackLang.HolProg 64 :=
.seq RemovedBody436_9 RemovedBody436_12

def RemovedBody436_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1315#64)

def RemovedBody436_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody436_17 : StackLang.HolProg 64 :=
.seq RemovedBody436_15 RemovedBody436_16

def RemovedBody436_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody436_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody436_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody436_21 : StackLang.HolProg 64 :=
.seq RemovedBody436_19 RemovedBody436_20

def RemovedBody436_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody436_21 RemovedBody436_22

def RemovedBody436_24 : StackLang.HolProg 64 :=
.seq RemovedBody436_18 RemovedBody436_23

def RemovedBody436_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody436_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody436_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 436 3

def RemovedBody436_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody436_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody436_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody436_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody436_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody436_34 : StackLang.HolProg 64 :=
.seq RemovedBody436_32 RemovedBody436_33

def RemovedBody436_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody436_36 : StackLang.HolProg 64 :=
.seq RemovedBody436_34 RemovedBody436_35

def RemovedBody436_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody436_38 : StackLang.HolProg 64 :=
.seq RemovedBody436_36 RemovedBody436_37

def RemovedBody436_39 : StackLang.HolProg 64 :=
.seq RemovedBody436_31 RemovedBody436_38

def RemovedBody436_40 : StackLang.HolProg 64 :=
.seq RemovedBody436_30 RemovedBody436_39

def RemovedBody436_41 : StackLang.HolProg 64 :=
.seq RemovedBody436_29 RemovedBody436_40

def RemovedBody436_42 : StackLang.HolProg 64 :=
.seq RemovedBody436_28 RemovedBody436_41

def RemovedBody436_43 : StackLang.HolProg 64 :=
.seq RemovedBody436_27 RemovedBody436_42

def RemovedBody436_44 : StackLang.HolProg 64 :=
.seq RemovedBody436_26 RemovedBody436_43

def RemovedBody436_45 : StackLang.HolProg 64 :=
.seq RemovedBody436_25 RemovedBody436_44

def RemovedBody436_46 : StackLang.HolProg 64 :=
.seq RemovedBody436_24 RemovedBody436_45

def RemovedBody436_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody436_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody436_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody436_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody436_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody436_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody436_56 : StackLang.HolProg 64 :=
.seq RemovedBody436_54 RemovedBody436_55

def RemovedBody436_57 : StackLang.HolProg 64 :=
.seq RemovedBody436_53 RemovedBody436_56

def RemovedBody436_58 : StackLang.HolProg 64 :=
.seq RemovedBody436_52 RemovedBody436_57

def RemovedBody436_59 : StackLang.HolProg 64 :=
.seq RemovedBody436_51 RemovedBody436_58

def RemovedBody436_60 : StackLang.HolProg 64 :=
.seq RemovedBody436_50 RemovedBody436_59

def RemovedBody436_61 : StackLang.HolProg 64 :=
.seq RemovedBody436_49 RemovedBody436_60

def RemovedBody436_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody436_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody436_64 : StackLang.HolProg 64 :=
.seq RemovedBody436_62 RemovedBody436_63

def RemovedBody436_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody436_66 : StackLang.HolProg 64 :=
.seq RemovedBody436_64 RemovedBody436_65

def RemovedBody436_67 : StackLang.HolProg 64 :=
.call (some (RemovedBody436_61, 0, 436, 2)) (Sum.inl 74) (some (RemovedBody436_66, 436, 3))

def RemovedBody436_68 : StackLang.HolProg 64 :=
.seq RemovedBody436_48 RemovedBody436_67

def RemovedBody436_69 : StackLang.HolProg 64 :=
.seq RemovedBody436_47 RemovedBody436_68

def RemovedBody436_70 : StackLang.HolProg 64 :=
.seq RemovedBody436_46 RemovedBody436_69

def RemovedBody436_71 : StackLang.HolProg 64 :=
.seq RemovedBody436_17 RemovedBody436_70

def RemovedBody436_72 : StackLang.HolProg 64 :=
.seq RemovedBody436_14 RemovedBody436_71

def RemovedBody436_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody436_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody436_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody436_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody436_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody436_78 : StackLang.HolProg 64 :=
.seq RemovedBody436_76 RemovedBody436_77

def RemovedBody436_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1316#64)

def RemovedBody436_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody436_82 : StackLang.HolProg 64 :=
.seq RemovedBody436_80 RemovedBody436_81

def RemovedBody436_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody436_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody436_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody436_86 : StackLang.HolProg 64 :=
.seq RemovedBody436_84 RemovedBody436_85

def RemovedBody436_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody436_86 RemovedBody436_87

def RemovedBody436_89 : StackLang.HolProg 64 :=
.seq RemovedBody436_83 RemovedBody436_88

def RemovedBody436_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody436_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody436_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 436 5

def RemovedBody436_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody436_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody436_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody436_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody436_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody436_99 : StackLang.HolProg 64 :=
.seq RemovedBody436_97 RemovedBody436_98

def RemovedBody436_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody436_101 : StackLang.HolProg 64 :=
.seq RemovedBody436_99 RemovedBody436_100

def RemovedBody436_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody436_103 : StackLang.HolProg 64 :=
.seq RemovedBody436_101 RemovedBody436_102

def RemovedBody436_104 : StackLang.HolProg 64 :=
.seq RemovedBody436_96 RemovedBody436_103

def RemovedBody436_105 : StackLang.HolProg 64 :=
.seq RemovedBody436_95 RemovedBody436_104

def RemovedBody436_106 : StackLang.HolProg 64 :=
.seq RemovedBody436_94 RemovedBody436_105

def RemovedBody436_107 : StackLang.HolProg 64 :=
.seq RemovedBody436_93 RemovedBody436_106

def RemovedBody436_108 : StackLang.HolProg 64 :=
.seq RemovedBody436_92 RemovedBody436_107

def RemovedBody436_109 : StackLang.HolProg 64 :=
.seq RemovedBody436_91 RemovedBody436_108

def RemovedBody436_110 : StackLang.HolProg 64 :=
.seq RemovedBody436_90 RemovedBody436_109

def RemovedBody436_111 : StackLang.HolProg 64 :=
.seq RemovedBody436_89 RemovedBody436_110

def RemovedBody436_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody436_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody436_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody436_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody436_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody436_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody436_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody436_122 : StackLang.HolProg 64 :=
.seq RemovedBody436_120 RemovedBody436_121

def RemovedBody436_123 : StackLang.HolProg 64 :=
.seq RemovedBody436_119 RemovedBody436_122

def RemovedBody436_124 : StackLang.HolProg 64 :=
.seq RemovedBody436_118 RemovedBody436_123

def RemovedBody436_125 : StackLang.HolProg 64 :=
.seq RemovedBody436_117 RemovedBody436_124

def RemovedBody436_126 : StackLang.HolProg 64 :=
.seq RemovedBody436_116 RemovedBody436_125

def RemovedBody436_127 : StackLang.HolProg 64 :=
.seq RemovedBody436_115 RemovedBody436_126

def RemovedBody436_128 : StackLang.HolProg 64 :=
.seq RemovedBody436_114 RemovedBody436_127

def RemovedBody436_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody436_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody436_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody436_132 : StackLang.HolProg 64 :=
.seq RemovedBody436_130 RemovedBody436_131

def RemovedBody436_133 : StackLang.HolProg 64 :=
.seq RemovedBody436_129 RemovedBody436_132

def RemovedBody436_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody436_135 : StackLang.HolProg 64 :=
.seq RemovedBody436_133 RemovedBody436_134

def RemovedBody436_136 : StackLang.HolProg 64 :=
.call (some (RemovedBody436_128, 0, 436, 4)) (Sum.inl 74) (some (RemovedBody436_135, 436, 5))

def RemovedBody436_137 : StackLang.HolProg 64 :=
.seq RemovedBody436_113 RemovedBody436_136

def RemovedBody436_138 : StackLang.HolProg 64 :=
.seq RemovedBody436_112 RemovedBody436_137

def RemovedBody436_139 : StackLang.HolProg 64 :=
.seq RemovedBody436_111 RemovedBody436_138

def RemovedBody436_140 : StackLang.HolProg 64 :=
.seq RemovedBody436_82 RemovedBody436_139

def RemovedBody436_141 : StackLang.HolProg 64 :=
.seq RemovedBody436_79 RemovedBody436_140

def RemovedBody436_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody436_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody436_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody436_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody436_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody436_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody436_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody436_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody436_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody436_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody436_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody436_157 : StackLang.HolProg 64 :=
.seq RemovedBody436_155 RemovedBody436_156

def RemovedBody436_158 : StackLang.HolProg 64 :=
.seq RemovedBody436_154 RemovedBody436_157

def RemovedBody436_159 : StackLang.HolProg 64 :=
.seq RemovedBody436_153 RemovedBody436_158

def RemovedBody436_160 : StackLang.HolProg 64 :=
.seq RemovedBody436_152 RemovedBody436_159

def RemovedBody436_161 : StackLang.HolProg 64 :=
.seq RemovedBody436_151 RemovedBody436_160

def RemovedBody436_162 : StackLang.HolProg 64 :=
.seq RemovedBody436_150 RemovedBody436_161

def RemovedBody436_163 : StackLang.HolProg 64 :=
.seq RemovedBody436_149 RemovedBody436_162

def RemovedBody436_164 : StackLang.HolProg 64 :=
.seq RemovedBody436_148 RemovedBody436_163

def RemovedBody436_165 : StackLang.HolProg 64 :=
.seq RemovedBody436_147 RemovedBody436_164

def RemovedBody436_166 : StackLang.HolProg 64 :=
.seq RemovedBody436_146 RemovedBody436_165

def RemovedBody436_167 : StackLang.HolProg 64 :=
.seq RemovedBody436_145 RemovedBody436_166

def RemovedBody436_168 : StackLang.HolProg 64 :=
.seq RemovedBody436_144 RemovedBody436_167

def RemovedBody436_169 : StackLang.HolProg 64 :=
.seq RemovedBody436_143 RemovedBody436_168

def RemovedBody436_170 : StackLang.HolProg 64 :=
.seq RemovedBody436_142 RemovedBody436_169

def RemovedBody436_171 : StackLang.HolProg 64 :=
.seq RemovedBody436_141 RemovedBody436_170

def RemovedBody436_172 : StackLang.HolProg 64 :=
.seq RemovedBody436_78 RemovedBody436_171

def RemovedBody436_173 : StackLang.HolProg 64 :=
.seq RemovedBody436_75 RemovedBody436_172

def RemovedBody436_174 : StackLang.HolProg 64 :=
.seq RemovedBody436_74 RemovedBody436_173

def RemovedBody436_175 : StackLang.HolProg 64 :=
.seq RemovedBody436_73 RemovedBody436_174

def RemovedBody436_176 : StackLang.HolProg 64 :=
.seq RemovedBody436_72 RemovedBody436_175

def RemovedBody436_177 : StackLang.HolProg 64 :=
.seq RemovedBody436_13 RemovedBody436_176

def RemovedBody436_178 : StackLang.HolProg 64 :=
.seq RemovedBody436_8 RemovedBody436_177

def RemovedBody436_179 : StackLang.HolProg 64 :=
.seq RemovedBody436_7 RemovedBody436_178

def RemovedBody436_180 : StackLang.HolProg 64 :=
.seq RemovedBody436_6 RemovedBody436_179

def Removed436 : Nat × StackLang.HolProg 64 := (436, RemovedBody436_180)
theorem Removed436_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc436 = Removed436 := by
  kernel_rfl
#print axioms Removed436_eq
end InitECandidate.Proofs.BackendStages
