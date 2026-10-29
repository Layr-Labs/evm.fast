import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc304
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody304_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody304_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody304_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody304_3 : StackLang.HolProg 64 :=
.seq RemovedBody304_1 RemovedBody304_2

def RemovedBody304_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody304_3 RemovedBody304_4

def RemovedBody304_6 : StackLang.HolProg 64 :=
.seq RemovedBody304_0 RemovedBody304_5

def RemovedBody304_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody304_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody304_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody304_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody304_11 : StackLang.HolProg 64 :=
.seq RemovedBody304_9 RemovedBody304_10

def RemovedBody304_12 : StackLang.HolProg 64 :=
.seq RemovedBody304_8 RemovedBody304_11

def RemovedBody304_13 : StackLang.HolProg 64 :=
.seq RemovedBody304_7 RemovedBody304_12

def RemovedBody304_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 835#64)

def RemovedBody304_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody304_17 : StackLang.HolProg 64 :=
.seq RemovedBody304_15 RemovedBody304_16

def RemovedBody304_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody304_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody304_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody304_21 : StackLang.HolProg 64 :=
.seq RemovedBody304_19 RemovedBody304_20

def RemovedBody304_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody304_21 RemovedBody304_22

def RemovedBody304_24 : StackLang.HolProg 64 :=
.seq RemovedBody304_18 RemovedBody304_23

def RemovedBody304_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody304_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody304_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 3

def RemovedBody304_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody304_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody304_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody304_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody304_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody304_34 : StackLang.HolProg 64 :=
.seq RemovedBody304_32 RemovedBody304_33

def RemovedBody304_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody304_36 : StackLang.HolProg 64 :=
.seq RemovedBody304_34 RemovedBody304_35

def RemovedBody304_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody304_38 : StackLang.HolProg 64 :=
.seq RemovedBody304_36 RemovedBody304_37

def RemovedBody304_39 : StackLang.HolProg 64 :=
.seq RemovedBody304_31 RemovedBody304_38

def RemovedBody304_40 : StackLang.HolProg 64 :=
.seq RemovedBody304_30 RemovedBody304_39

def RemovedBody304_41 : StackLang.HolProg 64 :=
.seq RemovedBody304_29 RemovedBody304_40

def RemovedBody304_42 : StackLang.HolProg 64 :=
.seq RemovedBody304_28 RemovedBody304_41

def RemovedBody304_43 : StackLang.HolProg 64 :=
.seq RemovedBody304_27 RemovedBody304_42

def RemovedBody304_44 : StackLang.HolProg 64 :=
.seq RemovedBody304_26 RemovedBody304_43

def RemovedBody304_45 : StackLang.HolProg 64 :=
.seq RemovedBody304_25 RemovedBody304_44

def RemovedBody304_46 : StackLang.HolProg 64 :=
.seq RemovedBody304_24 RemovedBody304_45

def RemovedBody304_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody304_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody304_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody304_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody304_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody304_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody304_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody304_57 : StackLang.HolProg 64 :=
.seq RemovedBody304_55 RemovedBody304_56

def RemovedBody304_58 : StackLang.HolProg 64 :=
.seq RemovedBody304_54 RemovedBody304_57

def RemovedBody304_59 : StackLang.HolProg 64 :=
.seq RemovedBody304_53 RemovedBody304_58

def RemovedBody304_60 : StackLang.HolProg 64 :=
.seq RemovedBody304_52 RemovedBody304_59

def RemovedBody304_61 : StackLang.HolProg 64 :=
.seq RemovedBody304_51 RemovedBody304_60

def RemovedBody304_62 : StackLang.HolProg 64 :=
.seq RemovedBody304_50 RemovedBody304_61

def RemovedBody304_63 : StackLang.HolProg 64 :=
.seq RemovedBody304_49 RemovedBody304_62

def RemovedBody304_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody304_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody304_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody304_67 : StackLang.HolProg 64 :=
.seq RemovedBody304_65 RemovedBody304_66

def RemovedBody304_68 : StackLang.HolProg 64 :=
.seq RemovedBody304_64 RemovedBody304_67

def RemovedBody304_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody304_70 : StackLang.HolProg 64 :=
.seq RemovedBody304_68 RemovedBody304_69

def RemovedBody304_71 : StackLang.HolProg 64 :=
.call (some (RemovedBody304_63, 0, 304, 2)) (Sum.inl 75) (some (RemovedBody304_70, 304, 3))

def RemovedBody304_72 : StackLang.HolProg 64 :=
.seq RemovedBody304_48 RemovedBody304_71

def RemovedBody304_73 : StackLang.HolProg 64 :=
.seq RemovedBody304_47 RemovedBody304_72

def RemovedBody304_74 : StackLang.HolProg 64 :=
.seq RemovedBody304_46 RemovedBody304_73

def RemovedBody304_75 : StackLang.HolProg 64 :=
.seq RemovedBody304_17 RemovedBody304_74

def RemovedBody304_76 : StackLang.HolProg 64 :=
.seq RemovedBody304_14 RemovedBody304_75

def RemovedBody304_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody304_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody304_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody304_80 : StackLang.HolProg 64 :=
.seq RemovedBody304_78 RemovedBody304_79

def RemovedBody304_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 836#64)

def RemovedBody304_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody304_84 : StackLang.HolProg 64 :=
.seq RemovedBody304_82 RemovedBody304_83

def RemovedBody304_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody304_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody304_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody304_88 : StackLang.HolProg 64 :=
.seq RemovedBody304_86 RemovedBody304_87

def RemovedBody304_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody304_88 RemovedBody304_89

def RemovedBody304_91 : StackLang.HolProg 64 :=
.seq RemovedBody304_85 RemovedBody304_90

def RemovedBody304_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody304_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody304_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 7

def RemovedBody304_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody304_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody304_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody304_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody304_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody304_101 : StackLang.HolProg 64 :=
.seq RemovedBody304_99 RemovedBody304_100

def RemovedBody304_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody304_103 : StackLang.HolProg 64 :=
.seq RemovedBody304_101 RemovedBody304_102

def RemovedBody304_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody304_105 : StackLang.HolProg 64 :=
.seq RemovedBody304_103 RemovedBody304_104

def RemovedBody304_106 : StackLang.HolProg 64 :=
.seq RemovedBody304_98 RemovedBody304_105

def RemovedBody304_107 : StackLang.HolProg 64 :=
.seq RemovedBody304_97 RemovedBody304_106

def RemovedBody304_108 : StackLang.HolProg 64 :=
.seq RemovedBody304_96 RemovedBody304_107

def RemovedBody304_109 : StackLang.HolProg 64 :=
.seq RemovedBody304_95 RemovedBody304_108

def RemovedBody304_110 : StackLang.HolProg 64 :=
.seq RemovedBody304_94 RemovedBody304_109

def RemovedBody304_111 : StackLang.HolProg 64 :=
.seq RemovedBody304_93 RemovedBody304_110

def RemovedBody304_112 : StackLang.HolProg 64 :=
.seq RemovedBody304_92 RemovedBody304_111

def RemovedBody304_113 : StackLang.HolProg 64 :=
.seq RemovedBody304_91 RemovedBody304_112

def RemovedBody304_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody304_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody304_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody304_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody304_121 : StackLang.HolProg 64 :=
.seq RemovedBody304_119 RemovedBody304_120

def RemovedBody304_122 : StackLang.HolProg 64 :=
.seq RemovedBody304_118 RemovedBody304_121

def RemovedBody304_123 : StackLang.HolProg 64 :=
.seq RemovedBody304_117 RemovedBody304_122

def RemovedBody304_124 : StackLang.HolProg 64 :=
.seq RemovedBody304_116 RemovedBody304_123

def RemovedBody304_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody304_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody304_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody304_128 : StackLang.HolProg 64 :=
.seq RemovedBody304_126 RemovedBody304_127

def RemovedBody304_129 : StackLang.HolProg 64 :=
.seq RemovedBody304_125 RemovedBody304_128

def RemovedBody304_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_131 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody304_132 : StackLang.HolProg 64 :=
.seq RemovedBody304_130 RemovedBody304_131

def RemovedBody304_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody304_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody304_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody304_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody304_137 : StackLang.HolProg 64 :=
.seq RemovedBody304_135 RemovedBody304_136

def RemovedBody304_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 837#64)

def RemovedBody304_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody304_141 : StackLang.HolProg 64 :=
.seq RemovedBody304_139 RemovedBody304_140

def RemovedBody304_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody304_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody304_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody304_145 : StackLang.HolProg 64 :=
.seq RemovedBody304_143 RemovedBody304_144

def RemovedBody304_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_147 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody304_145 RemovedBody304_146

def RemovedBody304_148 : StackLang.HolProg 64 :=
.seq RemovedBody304_142 RemovedBody304_147

def RemovedBody304_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody304_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody304_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 6

def RemovedBody304_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody304_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody304_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody304_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody304_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody304_158 : StackLang.HolProg 64 :=
.seq RemovedBody304_156 RemovedBody304_157

def RemovedBody304_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody304_160 : StackLang.HolProg 64 :=
.seq RemovedBody304_158 RemovedBody304_159

def RemovedBody304_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody304_162 : StackLang.HolProg 64 :=
.seq RemovedBody304_160 RemovedBody304_161

def RemovedBody304_163 : StackLang.HolProg 64 :=
.seq RemovedBody304_155 RemovedBody304_162

def RemovedBody304_164 : StackLang.HolProg 64 :=
.seq RemovedBody304_154 RemovedBody304_163

def RemovedBody304_165 : StackLang.HolProg 64 :=
.seq RemovedBody304_153 RemovedBody304_164

def RemovedBody304_166 : StackLang.HolProg 64 :=
.seq RemovedBody304_152 RemovedBody304_165

def RemovedBody304_167 : StackLang.HolProg 64 :=
.seq RemovedBody304_151 RemovedBody304_166

def RemovedBody304_168 : StackLang.HolProg 64 :=
.seq RemovedBody304_150 RemovedBody304_167

def RemovedBody304_169 : StackLang.HolProg 64 :=
.seq RemovedBody304_149 RemovedBody304_168

def RemovedBody304_170 : StackLang.HolProg 64 :=
.seq RemovedBody304_148 RemovedBody304_169

def RemovedBody304_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody304_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody304_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody304_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody304_178 : StackLang.HolProg 64 :=
.seq RemovedBody304_176 RemovedBody304_177

def RemovedBody304_179 : StackLang.HolProg 64 :=
.seq RemovedBody304_175 RemovedBody304_178

def RemovedBody304_180 : StackLang.HolProg 64 :=
.seq RemovedBody304_174 RemovedBody304_179

def RemovedBody304_181 : StackLang.HolProg 64 :=
.seq RemovedBody304_173 RemovedBody304_180

def RemovedBody304_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody304_183 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody304_184 : StackLang.HolProg 64 :=
.seq RemovedBody304_182 RemovedBody304_183

def RemovedBody304_185 : StackLang.HolProg 64 :=
.call (some (RemovedBody304_181, 0, 304, 5)) (Sum.inl 76) (some (RemovedBody304_184, 304, 6))

def RemovedBody304_186 : StackLang.HolProg 64 :=
.seq RemovedBody304_172 RemovedBody304_185

def RemovedBody304_187 : StackLang.HolProg 64 :=
.seq RemovedBody304_171 RemovedBody304_186

def RemovedBody304_188 : StackLang.HolProg 64 :=
.seq RemovedBody304_170 RemovedBody304_187

def RemovedBody304_189 : StackLang.HolProg 64 :=
.seq RemovedBody304_141 RemovedBody304_188

def RemovedBody304_190 : StackLang.HolProg 64 :=
.seq RemovedBody304_138 RemovedBody304_189

def RemovedBody304_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody304_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody304_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody304_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody304_197 : StackLang.HolProg 64 :=
.seq RemovedBody304_195 RemovedBody304_196

def RemovedBody304_198 : StackLang.HolProg 64 :=
.seq RemovedBody304_194 RemovedBody304_197

def RemovedBody304_199 : StackLang.HolProg 64 :=
.seq RemovedBody304_193 RemovedBody304_198

def RemovedBody304_200 : StackLang.HolProg 64 :=
.seq RemovedBody304_192 RemovedBody304_199

def RemovedBody304_201 : StackLang.HolProg 64 :=
.seq RemovedBody304_191 RemovedBody304_200

def RemovedBody304_202 : StackLang.HolProg 64 :=
.seq RemovedBody304_190 RemovedBody304_201

def RemovedBody304_203 : StackLang.HolProg 64 :=
.seq RemovedBody304_137 RemovedBody304_202

def RemovedBody304_204 : StackLang.HolProg 64 :=
.seq RemovedBody304_134 RemovedBody304_203

def RemovedBody304_205 : StackLang.HolProg 64 :=
.seq RemovedBody304_133 RemovedBody304_204

def RemovedBody304_206 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) RemovedBody304_132 RemovedBody304_205

def RemovedBody304_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody304_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody304_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody304_210 : StackLang.HolProg 64 :=
.seq RemovedBody304_208 RemovedBody304_209

def RemovedBody304_211 : StackLang.HolProg 64 :=
.seq RemovedBody304_207 RemovedBody304_210

def RemovedBody304_212 : StackLang.HolProg 64 :=
.seq RemovedBody304_206 RemovedBody304_211

def RemovedBody304_213 : StackLang.HolProg 64 :=
.seq RemovedBody304_129 RemovedBody304_212

def RemovedBody304_214 : StackLang.HolProg 64 :=
.call (some (RemovedBody304_124, 0, 304, 4)) (Sum.inl 303) (some (RemovedBody304_213, 304, 7))

def RemovedBody304_215 : StackLang.HolProg 64 :=
.seq RemovedBody304_115 RemovedBody304_214

def RemovedBody304_216 : StackLang.HolProg 64 :=
.seq RemovedBody304_114 RemovedBody304_215

def RemovedBody304_217 : StackLang.HolProg 64 :=
.seq RemovedBody304_113 RemovedBody304_216

def RemovedBody304_218 : StackLang.HolProg 64 :=
.seq RemovedBody304_84 RemovedBody304_217

def RemovedBody304_219 : StackLang.HolProg 64 :=
.seq RemovedBody304_81 RemovedBody304_218

def RemovedBody304_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody304_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody304_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody304_223 : StackLang.HolProg 64 :=
.seq RemovedBody304_221 RemovedBody304_222

def RemovedBody304_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 838#64)

def RemovedBody304_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody304_227 : StackLang.HolProg 64 :=
.seq RemovedBody304_225 RemovedBody304_226

def RemovedBody304_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody304_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody304_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody304_231 : StackLang.HolProg 64 :=
.seq RemovedBody304_229 RemovedBody304_230

def RemovedBody304_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_233 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody304_231 RemovedBody304_232

def RemovedBody304_234 : StackLang.HolProg 64 :=
.seq RemovedBody304_228 RemovedBody304_233

def RemovedBody304_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody304_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody304_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 9

def RemovedBody304_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody304_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody304_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody304_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody304_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody304_244 : StackLang.HolProg 64 :=
.seq RemovedBody304_242 RemovedBody304_243

def RemovedBody304_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody304_246 : StackLang.HolProg 64 :=
.seq RemovedBody304_244 RemovedBody304_245

def RemovedBody304_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody304_248 : StackLang.HolProg 64 :=
.seq RemovedBody304_246 RemovedBody304_247

def RemovedBody304_249 : StackLang.HolProg 64 :=
.seq RemovedBody304_241 RemovedBody304_248

def RemovedBody304_250 : StackLang.HolProg 64 :=
.seq RemovedBody304_240 RemovedBody304_249

def RemovedBody304_251 : StackLang.HolProg 64 :=
.seq RemovedBody304_239 RemovedBody304_250

def RemovedBody304_252 : StackLang.HolProg 64 :=
.seq RemovedBody304_238 RemovedBody304_251

def RemovedBody304_253 : StackLang.HolProg 64 :=
.seq RemovedBody304_237 RemovedBody304_252

def RemovedBody304_254 : StackLang.HolProg 64 :=
.seq RemovedBody304_236 RemovedBody304_253

def RemovedBody304_255 : StackLang.HolProg 64 :=
.seq RemovedBody304_235 RemovedBody304_254

def RemovedBody304_256 : StackLang.HolProg 64 :=
.seq RemovedBody304_234 RemovedBody304_255

def RemovedBody304_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody304_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody304_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody304_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody304_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody304_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody304_265 : StackLang.HolProg 64 :=
.seq RemovedBody304_263 RemovedBody304_264

def RemovedBody304_266 : StackLang.HolProg 64 :=
.seq RemovedBody304_262 RemovedBody304_265

def RemovedBody304_267 : StackLang.HolProg 64 :=
.seq RemovedBody304_261 RemovedBody304_266

def RemovedBody304_268 : StackLang.HolProg 64 :=
.seq RemovedBody304_260 RemovedBody304_267

def RemovedBody304_269 : StackLang.HolProg 64 :=
.seq RemovedBody304_259 RemovedBody304_268

def RemovedBody304_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody304_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody304_272 : StackLang.HolProg 64 :=
.seq RemovedBody304_270 RemovedBody304_271

def RemovedBody304_273 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody304_274 : StackLang.HolProg 64 :=
.seq RemovedBody304_272 RemovedBody304_273

def RemovedBody304_275 : StackLang.HolProg 64 :=
.call (some (RemovedBody304_269, 0, 304, 8)) (Sum.inl 76) (some (RemovedBody304_274, 304, 9))

def RemovedBody304_276 : StackLang.HolProg 64 :=
.seq RemovedBody304_258 RemovedBody304_275

def RemovedBody304_277 : StackLang.HolProg 64 :=
.seq RemovedBody304_257 RemovedBody304_276

def RemovedBody304_278 : StackLang.HolProg 64 :=
.seq RemovedBody304_256 RemovedBody304_277

def RemovedBody304_279 : StackLang.HolProg 64 :=
.seq RemovedBody304_227 RemovedBody304_278

def RemovedBody304_280 : StackLang.HolProg 64 :=
.seq RemovedBody304_224 RemovedBody304_279

def RemovedBody304_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody304_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody304_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody304_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody304_285 : StackLang.HolProg 64 :=
.seq RemovedBody304_283 RemovedBody304_284

def RemovedBody304_286 : StackLang.HolProg 64 :=
.seq RemovedBody304_282 RemovedBody304_285

def RemovedBody304_287 : StackLang.HolProg 64 :=
.seq RemovedBody304_281 RemovedBody304_286

def RemovedBody304_288 : StackLang.HolProg 64 :=
.seq RemovedBody304_280 RemovedBody304_287

def RemovedBody304_289 : StackLang.HolProg 64 :=
.seq RemovedBody304_223 RemovedBody304_288

def RemovedBody304_290 : StackLang.HolProg 64 :=
.seq RemovedBody304_220 RemovedBody304_289

def RemovedBody304_291 : StackLang.HolProg 64 :=
.seq RemovedBody304_219 RemovedBody304_290

def RemovedBody304_292 : StackLang.HolProg 64 :=
.seq RemovedBody304_80 RemovedBody304_291

def RemovedBody304_293 : StackLang.HolProg 64 :=
.seq RemovedBody304_77 RemovedBody304_292

def RemovedBody304_294 : StackLang.HolProg 64 :=
.seq RemovedBody304_76 RemovedBody304_293

def RemovedBody304_295 : StackLang.HolProg 64 :=
.seq RemovedBody304_13 RemovedBody304_294

def RemovedBody304_296 : StackLang.HolProg 64 :=
.seq RemovedBody304_6 RemovedBody304_295

def Removed304 : Nat × StackLang.HolProg 64 := (304, RemovedBody304_296)
theorem Removed304_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc304 = Removed304 := by
  kernel_rfl
#print axioms Removed304_eq
end InitECandidate.Proofs.BackendStages
