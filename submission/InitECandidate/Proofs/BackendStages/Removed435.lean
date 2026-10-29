import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc435
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody435_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody435_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody435_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody435_3 : StackLang.HolProg 64 :=
.seq RemovedBody435_1 RemovedBody435_2

def RemovedBody435_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody435_3 RemovedBody435_4

def RemovedBody435_6 : StackLang.HolProg 64 :=
.seq RemovedBody435_0 RemovedBody435_5

def RemovedBody435_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody435_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def RemovedBody435_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody435_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody435_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody435_12 : StackLang.HolProg 64 :=
.seq RemovedBody435_10 RemovedBody435_11

def RemovedBody435_13 : StackLang.HolProg 64 :=
.seq RemovedBody435_9 RemovedBody435_12

def RemovedBody435_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1313#64)

def RemovedBody435_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody435_17 : StackLang.HolProg 64 :=
.seq RemovedBody435_15 RemovedBody435_16

def RemovedBody435_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody435_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody435_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody435_21 : StackLang.HolProg 64 :=
.seq RemovedBody435_19 RemovedBody435_20

def RemovedBody435_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody435_21 RemovedBody435_22

def RemovedBody435_24 : StackLang.HolProg 64 :=
.seq RemovedBody435_18 RemovedBody435_23

def RemovedBody435_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody435_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody435_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 435 3

def RemovedBody435_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody435_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody435_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody435_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody435_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody435_34 : StackLang.HolProg 64 :=
.seq RemovedBody435_32 RemovedBody435_33

def RemovedBody435_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody435_36 : StackLang.HolProg 64 :=
.seq RemovedBody435_34 RemovedBody435_35

def RemovedBody435_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody435_38 : StackLang.HolProg 64 :=
.seq RemovedBody435_36 RemovedBody435_37

def RemovedBody435_39 : StackLang.HolProg 64 :=
.seq RemovedBody435_31 RemovedBody435_38

def RemovedBody435_40 : StackLang.HolProg 64 :=
.seq RemovedBody435_30 RemovedBody435_39

def RemovedBody435_41 : StackLang.HolProg 64 :=
.seq RemovedBody435_29 RemovedBody435_40

def RemovedBody435_42 : StackLang.HolProg 64 :=
.seq RemovedBody435_28 RemovedBody435_41

def RemovedBody435_43 : StackLang.HolProg 64 :=
.seq RemovedBody435_27 RemovedBody435_42

def RemovedBody435_44 : StackLang.HolProg 64 :=
.seq RemovedBody435_26 RemovedBody435_43

def RemovedBody435_45 : StackLang.HolProg 64 :=
.seq RemovedBody435_25 RemovedBody435_44

def RemovedBody435_46 : StackLang.HolProg 64 :=
.seq RemovedBody435_24 RemovedBody435_45

def RemovedBody435_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody435_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody435_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody435_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody435_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody435_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody435_56 : StackLang.HolProg 64 :=
.seq RemovedBody435_54 RemovedBody435_55

def RemovedBody435_57 : StackLang.HolProg 64 :=
.seq RemovedBody435_53 RemovedBody435_56

def RemovedBody435_58 : StackLang.HolProg 64 :=
.seq RemovedBody435_52 RemovedBody435_57

def RemovedBody435_59 : StackLang.HolProg 64 :=
.seq RemovedBody435_51 RemovedBody435_58

def RemovedBody435_60 : StackLang.HolProg 64 :=
.seq RemovedBody435_50 RemovedBody435_59

def RemovedBody435_61 : StackLang.HolProg 64 :=
.seq RemovedBody435_49 RemovedBody435_60

def RemovedBody435_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody435_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody435_64 : StackLang.HolProg 64 :=
.seq RemovedBody435_62 RemovedBody435_63

def RemovedBody435_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody435_66 : StackLang.HolProg 64 :=
.seq RemovedBody435_64 RemovedBody435_65

def RemovedBody435_67 : StackLang.HolProg 64 :=
.call (some (RemovedBody435_61, 0, 435, 2)) (Sum.inl 68) (some (RemovedBody435_66, 435, 3))

def RemovedBody435_68 : StackLang.HolProg 64 :=
.seq RemovedBody435_48 RemovedBody435_67

def RemovedBody435_69 : StackLang.HolProg 64 :=
.seq RemovedBody435_47 RemovedBody435_68

def RemovedBody435_70 : StackLang.HolProg 64 :=
.seq RemovedBody435_46 RemovedBody435_69

def RemovedBody435_71 : StackLang.HolProg 64 :=
.seq RemovedBody435_17 RemovedBody435_70

def RemovedBody435_72 : StackLang.HolProg 64 :=
.seq RemovedBody435_14 RemovedBody435_71

def RemovedBody435_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody435_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody435_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody435_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody435_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody435_78 : StackLang.HolProg 64 :=
.seq RemovedBody435_76 RemovedBody435_77

def RemovedBody435_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1314#64)

def RemovedBody435_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody435_82 : StackLang.HolProg 64 :=
.seq RemovedBody435_80 RemovedBody435_81

def RemovedBody435_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody435_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody435_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody435_86 : StackLang.HolProg 64 :=
.seq RemovedBody435_84 RemovedBody435_85

def RemovedBody435_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody435_86 RemovedBody435_87

def RemovedBody435_89 : StackLang.HolProg 64 :=
.seq RemovedBody435_83 RemovedBody435_88

def RemovedBody435_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody435_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody435_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 435 5

def RemovedBody435_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody435_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody435_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody435_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody435_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody435_99 : StackLang.HolProg 64 :=
.seq RemovedBody435_97 RemovedBody435_98

def RemovedBody435_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody435_101 : StackLang.HolProg 64 :=
.seq RemovedBody435_99 RemovedBody435_100

def RemovedBody435_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody435_103 : StackLang.HolProg 64 :=
.seq RemovedBody435_101 RemovedBody435_102

def RemovedBody435_104 : StackLang.HolProg 64 :=
.seq RemovedBody435_96 RemovedBody435_103

def RemovedBody435_105 : StackLang.HolProg 64 :=
.seq RemovedBody435_95 RemovedBody435_104

def RemovedBody435_106 : StackLang.HolProg 64 :=
.seq RemovedBody435_94 RemovedBody435_105

def RemovedBody435_107 : StackLang.HolProg 64 :=
.seq RemovedBody435_93 RemovedBody435_106

def RemovedBody435_108 : StackLang.HolProg 64 :=
.seq RemovedBody435_92 RemovedBody435_107

def RemovedBody435_109 : StackLang.HolProg 64 :=
.seq RemovedBody435_91 RemovedBody435_108

def RemovedBody435_110 : StackLang.HolProg 64 :=
.seq RemovedBody435_90 RemovedBody435_109

def RemovedBody435_111 : StackLang.HolProg 64 :=
.seq RemovedBody435_89 RemovedBody435_110

def RemovedBody435_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody435_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody435_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody435_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody435_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody435_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody435_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody435_122 : StackLang.HolProg 64 :=
.seq RemovedBody435_120 RemovedBody435_121

def RemovedBody435_123 : StackLang.HolProg 64 :=
.seq RemovedBody435_119 RemovedBody435_122

def RemovedBody435_124 : StackLang.HolProg 64 :=
.seq RemovedBody435_118 RemovedBody435_123

def RemovedBody435_125 : StackLang.HolProg 64 :=
.seq RemovedBody435_117 RemovedBody435_124

def RemovedBody435_126 : StackLang.HolProg 64 :=
.seq RemovedBody435_116 RemovedBody435_125

def RemovedBody435_127 : StackLang.HolProg 64 :=
.seq RemovedBody435_115 RemovedBody435_126

def RemovedBody435_128 : StackLang.HolProg 64 :=
.seq RemovedBody435_114 RemovedBody435_127

def RemovedBody435_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody435_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody435_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody435_132 : StackLang.HolProg 64 :=
.seq RemovedBody435_130 RemovedBody435_131

def RemovedBody435_133 : StackLang.HolProg 64 :=
.seq RemovedBody435_129 RemovedBody435_132

def RemovedBody435_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody435_135 : StackLang.HolProg 64 :=
.seq RemovedBody435_133 RemovedBody435_134

def RemovedBody435_136 : StackLang.HolProg 64 :=
.call (some (RemovedBody435_128, 0, 435, 4)) (Sum.inl 68) (some (RemovedBody435_135, 435, 5))

def RemovedBody435_137 : StackLang.HolProg 64 :=
.seq RemovedBody435_113 RemovedBody435_136

def RemovedBody435_138 : StackLang.HolProg 64 :=
.seq RemovedBody435_112 RemovedBody435_137

def RemovedBody435_139 : StackLang.HolProg 64 :=
.seq RemovedBody435_111 RemovedBody435_138

def RemovedBody435_140 : StackLang.HolProg 64 :=
.seq RemovedBody435_82 RemovedBody435_139

def RemovedBody435_141 : StackLang.HolProg 64 :=
.seq RemovedBody435_79 RemovedBody435_140

def RemovedBody435_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody435_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody435_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody435_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody435_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody435_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody435_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody435_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody435_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody435_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody435_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody435_157 : StackLang.HolProg 64 :=
.seq RemovedBody435_155 RemovedBody435_156

def RemovedBody435_158 : StackLang.HolProg 64 :=
.seq RemovedBody435_154 RemovedBody435_157

def RemovedBody435_159 : StackLang.HolProg 64 :=
.seq RemovedBody435_153 RemovedBody435_158

def RemovedBody435_160 : StackLang.HolProg 64 :=
.seq RemovedBody435_152 RemovedBody435_159

def RemovedBody435_161 : StackLang.HolProg 64 :=
.seq RemovedBody435_151 RemovedBody435_160

def RemovedBody435_162 : StackLang.HolProg 64 :=
.seq RemovedBody435_150 RemovedBody435_161

def RemovedBody435_163 : StackLang.HolProg 64 :=
.seq RemovedBody435_149 RemovedBody435_162

def RemovedBody435_164 : StackLang.HolProg 64 :=
.seq RemovedBody435_148 RemovedBody435_163

def RemovedBody435_165 : StackLang.HolProg 64 :=
.seq RemovedBody435_147 RemovedBody435_164

def RemovedBody435_166 : StackLang.HolProg 64 :=
.seq RemovedBody435_146 RemovedBody435_165

def RemovedBody435_167 : StackLang.HolProg 64 :=
.seq RemovedBody435_145 RemovedBody435_166

def RemovedBody435_168 : StackLang.HolProg 64 :=
.seq RemovedBody435_144 RemovedBody435_167

def RemovedBody435_169 : StackLang.HolProg 64 :=
.seq RemovedBody435_143 RemovedBody435_168

def RemovedBody435_170 : StackLang.HolProg 64 :=
.seq RemovedBody435_142 RemovedBody435_169

def RemovedBody435_171 : StackLang.HolProg 64 :=
.seq RemovedBody435_141 RemovedBody435_170

def RemovedBody435_172 : StackLang.HolProg 64 :=
.seq RemovedBody435_78 RemovedBody435_171

def RemovedBody435_173 : StackLang.HolProg 64 :=
.seq RemovedBody435_75 RemovedBody435_172

def RemovedBody435_174 : StackLang.HolProg 64 :=
.seq RemovedBody435_74 RemovedBody435_173

def RemovedBody435_175 : StackLang.HolProg 64 :=
.seq RemovedBody435_73 RemovedBody435_174

def RemovedBody435_176 : StackLang.HolProg 64 :=
.seq RemovedBody435_72 RemovedBody435_175

def RemovedBody435_177 : StackLang.HolProg 64 :=
.seq RemovedBody435_13 RemovedBody435_176

def RemovedBody435_178 : StackLang.HolProg 64 :=
.seq RemovedBody435_8 RemovedBody435_177

def RemovedBody435_179 : StackLang.HolProg 64 :=
.seq RemovedBody435_7 RemovedBody435_178

def RemovedBody435_180 : StackLang.HolProg 64 :=
.seq RemovedBody435_6 RemovedBody435_179

def Removed435 : Nat × StackLang.HolProg 64 := (435, RemovedBody435_180)
theorem Removed435_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc435 = Removed435 := by
  kernel_rfl
#print axioms Removed435_eq
end InitECandidate.Proofs.BackendStages
