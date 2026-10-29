import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc189
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody189_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody189_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody189_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody189_3 : StackLang.HolProg 64 :=
.seq RemovedBody189_1 RemovedBody189_2

def RemovedBody189_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody189_3 RemovedBody189_4

def RemovedBody189_6 : StackLang.HolProg 64 :=
.seq RemovedBody189_0 RemovedBody189_5

def RemovedBody189_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody189_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody189_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody189_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody189_11 : StackLang.HolProg 64 :=
.seq RemovedBody189_9 RemovedBody189_10

def RemovedBody189_12 : StackLang.HolProg 64 :=
.seq RemovedBody189_8 RemovedBody189_11

def RemovedBody189_13 : StackLang.HolProg 64 :=
.seq RemovedBody189_7 RemovedBody189_12

def RemovedBody189_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 216#64)

def RemovedBody189_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody189_17 : StackLang.HolProg 64 :=
.seq RemovedBody189_15 RemovedBody189_16

def RemovedBody189_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody189_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody189_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody189_21 : StackLang.HolProg 64 :=
.seq RemovedBody189_19 RemovedBody189_20

def RemovedBody189_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody189_21 RemovedBody189_22

def RemovedBody189_24 : StackLang.HolProg 64 :=
.seq RemovedBody189_18 RemovedBody189_23

def RemovedBody189_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody189_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody189_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 189 3

def RemovedBody189_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody189_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody189_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody189_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody189_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody189_34 : StackLang.HolProg 64 :=
.seq RemovedBody189_32 RemovedBody189_33

def RemovedBody189_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody189_36 : StackLang.HolProg 64 :=
.seq RemovedBody189_34 RemovedBody189_35

def RemovedBody189_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody189_38 : StackLang.HolProg 64 :=
.seq RemovedBody189_36 RemovedBody189_37

def RemovedBody189_39 : StackLang.HolProg 64 :=
.seq RemovedBody189_31 RemovedBody189_38

def RemovedBody189_40 : StackLang.HolProg 64 :=
.seq RemovedBody189_30 RemovedBody189_39

def RemovedBody189_41 : StackLang.HolProg 64 :=
.seq RemovedBody189_29 RemovedBody189_40

def RemovedBody189_42 : StackLang.HolProg 64 :=
.seq RemovedBody189_28 RemovedBody189_41

def RemovedBody189_43 : StackLang.HolProg 64 :=
.seq RemovedBody189_27 RemovedBody189_42

def RemovedBody189_44 : StackLang.HolProg 64 :=
.seq RemovedBody189_26 RemovedBody189_43

def RemovedBody189_45 : StackLang.HolProg 64 :=
.seq RemovedBody189_25 RemovedBody189_44

def RemovedBody189_46 : StackLang.HolProg 64 :=
.seq RemovedBody189_24 RemovedBody189_45

def RemovedBody189_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody189_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody189_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody189_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody189_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody189_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody189_56 : StackLang.HolProg 64 :=
.seq RemovedBody189_54 RemovedBody189_55

def RemovedBody189_57 : StackLang.HolProg 64 :=
.seq RemovedBody189_53 RemovedBody189_56

def RemovedBody189_58 : StackLang.HolProg 64 :=
.seq RemovedBody189_52 RemovedBody189_57

def RemovedBody189_59 : StackLang.HolProg 64 :=
.seq RemovedBody189_51 RemovedBody189_58

def RemovedBody189_60 : StackLang.HolProg 64 :=
.seq RemovedBody189_50 RemovedBody189_59

def RemovedBody189_61 : StackLang.HolProg 64 :=
.seq RemovedBody189_49 RemovedBody189_60

def RemovedBody189_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody189_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody189_64 : StackLang.HolProg 64 :=
.seq RemovedBody189_62 RemovedBody189_63

def RemovedBody189_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody189_66 : StackLang.HolProg 64 :=
.seq RemovedBody189_64 RemovedBody189_65

def RemovedBody189_67 : StackLang.HolProg 64 :=
.call (some (RemovedBody189_61, 0, 189, 2)) (Sum.inl 188) (some (RemovedBody189_66, 189, 3))

def RemovedBody189_68 : StackLang.HolProg 64 :=
.seq RemovedBody189_48 RemovedBody189_67

def RemovedBody189_69 : StackLang.HolProg 64 :=
.seq RemovedBody189_47 RemovedBody189_68

def RemovedBody189_70 : StackLang.HolProg 64 :=
.seq RemovedBody189_46 RemovedBody189_69

def RemovedBody189_71 : StackLang.HolProg 64 :=
.seq RemovedBody189_17 RemovedBody189_70

def RemovedBody189_72 : StackLang.HolProg 64 :=
.seq RemovedBody189_14 RemovedBody189_71

def RemovedBody189_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody189_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody189_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody189_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody189_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody189_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 32#64))

def RemovedBody189_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody189_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody189_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody189_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody189_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody189_87 : StackLang.HolProg 64 :=
.seq RemovedBody189_85 RemovedBody189_86

def RemovedBody189_88 : StackLang.HolProg 64 :=
.seq RemovedBody189_84 RemovedBody189_87

def RemovedBody189_89 : StackLang.HolProg 64 :=
.seq RemovedBody189_83 RemovedBody189_88

def RemovedBody189_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 217#64)

def RemovedBody189_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody189_93 : StackLang.HolProg 64 :=
.seq RemovedBody189_91 RemovedBody189_92

def RemovedBody189_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody189_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody189_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody189_97 : StackLang.HolProg 64 :=
.seq RemovedBody189_95 RemovedBody189_96

def RemovedBody189_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_99 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody189_97 RemovedBody189_98

def RemovedBody189_100 : StackLang.HolProg 64 :=
.seq RemovedBody189_94 RemovedBody189_99

def RemovedBody189_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody189_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody189_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 189 5

def RemovedBody189_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody189_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody189_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody189_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody189_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody189_110 : StackLang.HolProg 64 :=
.seq RemovedBody189_108 RemovedBody189_109

def RemovedBody189_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody189_112 : StackLang.HolProg 64 :=
.seq RemovedBody189_110 RemovedBody189_111

def RemovedBody189_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody189_114 : StackLang.HolProg 64 :=
.seq RemovedBody189_112 RemovedBody189_113

def RemovedBody189_115 : StackLang.HolProg 64 :=
.seq RemovedBody189_107 RemovedBody189_114

def RemovedBody189_116 : StackLang.HolProg 64 :=
.seq RemovedBody189_106 RemovedBody189_115

def RemovedBody189_117 : StackLang.HolProg 64 :=
.seq RemovedBody189_105 RemovedBody189_116

def RemovedBody189_118 : StackLang.HolProg 64 :=
.seq RemovedBody189_104 RemovedBody189_117

def RemovedBody189_119 : StackLang.HolProg 64 :=
.seq RemovedBody189_103 RemovedBody189_118

def RemovedBody189_120 : StackLang.HolProg 64 :=
.seq RemovedBody189_102 RemovedBody189_119

def RemovedBody189_121 : StackLang.HolProg 64 :=
.seq RemovedBody189_101 RemovedBody189_120

def RemovedBody189_122 : StackLang.HolProg 64 :=
.seq RemovedBody189_100 RemovedBody189_121

def RemovedBody189_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody189_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody189_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody189_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody189_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody189_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody189_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody189_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody189_134 : StackLang.HolProg 64 :=
.seq RemovedBody189_132 RemovedBody189_133

def RemovedBody189_135 : StackLang.HolProg 64 :=
.seq RemovedBody189_131 RemovedBody189_134

def RemovedBody189_136 : StackLang.HolProg 64 :=
.seq RemovedBody189_130 RemovedBody189_135

def RemovedBody189_137 : StackLang.HolProg 64 :=
.seq RemovedBody189_129 RemovedBody189_136

def RemovedBody189_138 : StackLang.HolProg 64 :=
.seq RemovedBody189_128 RemovedBody189_137

def RemovedBody189_139 : StackLang.HolProg 64 :=
.seq RemovedBody189_127 RemovedBody189_138

def RemovedBody189_140 : StackLang.HolProg 64 :=
.seq RemovedBody189_126 RemovedBody189_139

def RemovedBody189_141 : StackLang.HolProg 64 :=
.seq RemovedBody189_125 RemovedBody189_140

def RemovedBody189_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody189_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody189_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody189_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody189_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody189_147 : StackLang.HolProg 64 :=
.seq RemovedBody189_145 RemovedBody189_146

def RemovedBody189_148 : StackLang.HolProg 64 :=
.seq RemovedBody189_144 RemovedBody189_147

def RemovedBody189_149 : StackLang.HolProg 64 :=
.seq RemovedBody189_143 RemovedBody189_148

def RemovedBody189_150 : StackLang.HolProg 64 :=
.seq RemovedBody189_142 RemovedBody189_149

def RemovedBody189_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody189_152 : StackLang.HolProg 64 :=
.seq RemovedBody189_150 RemovedBody189_151

def RemovedBody189_153 : StackLang.HolProg 64 :=
.call (some (RemovedBody189_141, 0, 189, 4)) (Sum.inl 77) (some (RemovedBody189_152, 189, 5))

def RemovedBody189_154 : StackLang.HolProg 64 :=
.seq RemovedBody189_124 RemovedBody189_153

def RemovedBody189_155 : StackLang.HolProg 64 :=
.seq RemovedBody189_123 RemovedBody189_154

def RemovedBody189_156 : StackLang.HolProg 64 :=
.seq RemovedBody189_122 RemovedBody189_155

def RemovedBody189_157 : StackLang.HolProg 64 :=
.seq RemovedBody189_93 RemovedBody189_156

def RemovedBody189_158 : StackLang.HolProg 64 :=
.seq RemovedBody189_90 RemovedBody189_157

def RemovedBody189_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody189_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 40#64))

def RemovedBody189_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody189_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody189_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody189_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody189_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody189_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody189_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def RemovedBody189_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody189_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody189_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody189_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody189_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody189_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody189_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def RemovedBody189_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody189_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody189_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody189_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody189_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody189_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody189_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody189_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody189_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody189_201 : StackLang.HolProg 64 :=
.seq RemovedBody189_199 RemovedBody189_200

def RemovedBody189_202 : StackLang.HolProg 64 :=
.seq RemovedBody189_198 RemovedBody189_201

def RemovedBody189_203 : StackLang.HolProg 64 :=
.seq RemovedBody189_197 RemovedBody189_202

def RemovedBody189_204 : StackLang.HolProg 64 :=
.seq RemovedBody189_196 RemovedBody189_203

def RemovedBody189_205 : StackLang.HolProg 64 :=
.seq RemovedBody189_195 RemovedBody189_204

def RemovedBody189_206 : StackLang.HolProg 64 :=
.seq RemovedBody189_194 RemovedBody189_205

def RemovedBody189_207 : StackLang.HolProg 64 :=
.seq RemovedBody189_193 RemovedBody189_206

def RemovedBody189_208 : StackLang.HolProg 64 :=
.seq RemovedBody189_192 RemovedBody189_207

def RemovedBody189_209 : StackLang.HolProg 64 :=
.seq RemovedBody189_191 RemovedBody189_208

def RemovedBody189_210 : StackLang.HolProg 64 :=
.seq RemovedBody189_190 RemovedBody189_209

def RemovedBody189_211 : StackLang.HolProg 64 :=
.seq RemovedBody189_189 RemovedBody189_210

def RemovedBody189_212 : StackLang.HolProg 64 :=
.seq RemovedBody189_188 RemovedBody189_211

def RemovedBody189_213 : StackLang.HolProg 64 :=
.seq RemovedBody189_187 RemovedBody189_212

def RemovedBody189_214 : StackLang.HolProg 64 :=
.seq RemovedBody189_186 RemovedBody189_213

def RemovedBody189_215 : StackLang.HolProg 64 :=
.seq RemovedBody189_185 RemovedBody189_214

def RemovedBody189_216 : StackLang.HolProg 64 :=
.seq RemovedBody189_184 RemovedBody189_215

def RemovedBody189_217 : StackLang.HolProg 64 :=
.seq RemovedBody189_183 RemovedBody189_216

def RemovedBody189_218 : StackLang.HolProg 64 :=
.seq RemovedBody189_182 RemovedBody189_217

def RemovedBody189_219 : StackLang.HolProg 64 :=
.seq RemovedBody189_181 RemovedBody189_218

def RemovedBody189_220 : StackLang.HolProg 64 :=
.seq RemovedBody189_180 RemovedBody189_219

def RemovedBody189_221 : StackLang.HolProg 64 :=
.seq RemovedBody189_179 RemovedBody189_220

def RemovedBody189_222 : StackLang.HolProg 64 :=
.seq RemovedBody189_178 RemovedBody189_221

def RemovedBody189_223 : StackLang.HolProg 64 :=
.seq RemovedBody189_177 RemovedBody189_222

def RemovedBody189_224 : StackLang.HolProg 64 :=
.seq RemovedBody189_176 RemovedBody189_223

def RemovedBody189_225 : StackLang.HolProg 64 :=
.seq RemovedBody189_175 RemovedBody189_224

def RemovedBody189_226 : StackLang.HolProg 64 :=
.seq RemovedBody189_174 RemovedBody189_225

def RemovedBody189_227 : StackLang.HolProg 64 :=
.seq RemovedBody189_173 RemovedBody189_226

def RemovedBody189_228 : StackLang.HolProg 64 :=
.seq RemovedBody189_172 RemovedBody189_227

def RemovedBody189_229 : StackLang.HolProg 64 :=
.seq RemovedBody189_171 RemovedBody189_228

def RemovedBody189_230 : StackLang.HolProg 64 :=
.seq RemovedBody189_170 RemovedBody189_229

def RemovedBody189_231 : StackLang.HolProg 64 :=
.seq RemovedBody189_169 RemovedBody189_230

def RemovedBody189_232 : StackLang.HolProg 64 :=
.seq RemovedBody189_168 RemovedBody189_231

def RemovedBody189_233 : StackLang.HolProg 64 :=
.seq RemovedBody189_167 RemovedBody189_232

def RemovedBody189_234 : StackLang.HolProg 64 :=
.seq RemovedBody189_166 RemovedBody189_233

def RemovedBody189_235 : StackLang.HolProg 64 :=
.seq RemovedBody189_165 RemovedBody189_234

def RemovedBody189_236 : StackLang.HolProg 64 :=
.seq RemovedBody189_164 RemovedBody189_235

def RemovedBody189_237 : StackLang.HolProg 64 :=
.seq RemovedBody189_163 RemovedBody189_236

def RemovedBody189_238 : StackLang.HolProg 64 :=
.seq RemovedBody189_162 RemovedBody189_237

def RemovedBody189_239 : StackLang.HolProg 64 :=
.seq RemovedBody189_161 RemovedBody189_238

def RemovedBody189_240 : StackLang.HolProg 64 :=
.seq RemovedBody189_160 RemovedBody189_239

def RemovedBody189_241 : StackLang.HolProg 64 :=
.seq RemovedBody189_159 RemovedBody189_240

def RemovedBody189_242 : StackLang.HolProg 64 :=
.seq RemovedBody189_158 RemovedBody189_241

def RemovedBody189_243 : StackLang.HolProg 64 :=
.seq RemovedBody189_89 RemovedBody189_242

def RemovedBody189_244 : StackLang.HolProg 64 :=
.seq RemovedBody189_82 RemovedBody189_243

def RemovedBody189_245 : StackLang.HolProg 64 :=
.seq RemovedBody189_81 RemovedBody189_244

def RemovedBody189_246 : StackLang.HolProg 64 :=
.seq RemovedBody189_80 RemovedBody189_245

def RemovedBody189_247 : StackLang.HolProg 64 :=
.seq RemovedBody189_79 RemovedBody189_246

def RemovedBody189_248 : StackLang.HolProg 64 :=
.seq RemovedBody189_78 RemovedBody189_247

def RemovedBody189_249 : StackLang.HolProg 64 :=
.seq RemovedBody189_77 RemovedBody189_248

def RemovedBody189_250 : StackLang.HolProg 64 :=
.seq RemovedBody189_76 RemovedBody189_249

def RemovedBody189_251 : StackLang.HolProg 64 :=
.seq RemovedBody189_75 RemovedBody189_250

def RemovedBody189_252 : StackLang.HolProg 64 :=
.seq RemovedBody189_74 RemovedBody189_251

def RemovedBody189_253 : StackLang.HolProg 64 :=
.seq RemovedBody189_73 RemovedBody189_252

def RemovedBody189_254 : StackLang.HolProg 64 :=
.seq RemovedBody189_72 RemovedBody189_253

def RemovedBody189_255 : StackLang.HolProg 64 :=
.seq RemovedBody189_13 RemovedBody189_254

def RemovedBody189_256 : StackLang.HolProg 64 :=
.seq RemovedBody189_6 RemovedBody189_255

def Removed189 : Nat × StackLang.HolProg 64 := (189, RemovedBody189_256)
theorem Removed189_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc189 = Removed189 := by
  kernel_rfl
#print axioms Removed189_eq
end InitECandidate.Proofs.BackendStages
