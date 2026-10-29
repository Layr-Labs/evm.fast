import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc684
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody684_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody684_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody684_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody684_3 : StackLang.HolProg 64 :=
.seq RemovedBody684_1 RemovedBody684_2

def RemovedBody684_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody684_3 RemovedBody684_4

def RemovedBody684_6 : StackLang.HolProg 64 :=
.seq RemovedBody684_0 RemovedBody684_5

def RemovedBody684_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody684_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody684_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody684_10 : StackLang.HolProg 64 :=
.seq RemovedBody684_8 RemovedBody684_9

def RemovedBody684_11 : StackLang.HolProg 64 :=
.seq RemovedBody684_7 RemovedBody684_10

def RemovedBody684_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody684_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 3#64)

def RemovedBody684_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody684_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody684_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody684_25 : StackLang.HolProg 64 :=
.seq RemovedBody684_23 RemovedBody684_24

def RemovedBody684_26 : StackLang.HolProg 64 :=
.seq RemovedBody684_22 RemovedBody684_25

def RemovedBody684_27 : StackLang.HolProg 64 :=
.seq RemovedBody684_21 RemovedBody684_26

def RemovedBody684_28 : StackLang.HolProg 64 :=
.seq RemovedBody684_20 RemovedBody684_27

def RemovedBody684_29 : StackLang.HolProg 64 :=
.seq RemovedBody684_19 RemovedBody684_28

def RemovedBody684_30 : StackLang.HolProg 64 :=
.seq RemovedBody684_18 RemovedBody684_29

def RemovedBody684_31 : StackLang.HolProg 64 :=
.seq RemovedBody684_17 RemovedBody684_30

def RemovedBody684_32 : StackLang.HolProg 64 :=
.seq RemovedBody684_16 RemovedBody684_31

def RemovedBody684_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2876#64)

def RemovedBody684_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_36 : StackLang.HolProg 64 :=
.seq RemovedBody684_34 RemovedBody684_35

def RemovedBody684_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody684_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody684_40 : StackLang.HolProg 64 :=
.seq RemovedBody684_38 RemovedBody684_39

def RemovedBody684_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody684_40 RemovedBody684_41

def RemovedBody684_43 : StackLang.HolProg 64 :=
.seq RemovedBody684_37 RemovedBody684_42

def RemovedBody684_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody684_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 684 3

def RemovedBody684_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody684_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody684_53 : StackLang.HolProg 64 :=
.seq RemovedBody684_51 RemovedBody684_52

def RemovedBody684_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody684_55 : StackLang.HolProg 64 :=
.seq RemovedBody684_53 RemovedBody684_54

def RemovedBody684_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_57 : StackLang.HolProg 64 :=
.seq RemovedBody684_55 RemovedBody684_56

def RemovedBody684_58 : StackLang.HolProg 64 :=
.seq RemovedBody684_50 RemovedBody684_57

def RemovedBody684_59 : StackLang.HolProg 64 :=
.seq RemovedBody684_49 RemovedBody684_58

def RemovedBody684_60 : StackLang.HolProg 64 :=
.seq RemovedBody684_48 RemovedBody684_59

def RemovedBody684_61 : StackLang.HolProg 64 :=
.seq RemovedBody684_47 RemovedBody684_60

def RemovedBody684_62 : StackLang.HolProg 64 :=
.seq RemovedBody684_46 RemovedBody684_61

def RemovedBody684_63 : StackLang.HolProg 64 :=
.seq RemovedBody684_45 RemovedBody684_62

def RemovedBody684_64 : StackLang.HolProg 64 :=
.seq RemovedBody684_44 RemovedBody684_63

def RemovedBody684_65 : StackLang.HolProg 64 :=
.seq RemovedBody684_43 RemovedBody684_64

def RemovedBody684_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody684_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_74 : StackLang.HolProg 64 :=
.seq RemovedBody684_72 RemovedBody684_73

def RemovedBody684_75 : StackLang.HolProg 64 :=
.seq RemovedBody684_71 RemovedBody684_74

def RemovedBody684_76 : StackLang.HolProg 64 :=
.seq RemovedBody684_70 RemovedBody684_75

def RemovedBody684_77 : StackLang.HolProg 64 :=
.seq RemovedBody684_69 RemovedBody684_76

def RemovedBody684_78 : StackLang.HolProg 64 :=
.seq RemovedBody684_68 RemovedBody684_77

def RemovedBody684_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_80 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody684_81 : StackLang.HolProg 64 :=
.seq RemovedBody684_79 RemovedBody684_80

def RemovedBody684_82 : StackLang.HolProg 64 :=
.call (some (RemovedBody684_78, 0, 684, 2)) (Sum.inl 69) (some (RemovedBody684_81, 684, 3))

def RemovedBody684_83 : StackLang.HolProg 64 :=
.seq RemovedBody684_67 RemovedBody684_82

def RemovedBody684_84 : StackLang.HolProg 64 :=
.seq RemovedBody684_66 RemovedBody684_83

def RemovedBody684_85 : StackLang.HolProg 64 :=
.seq RemovedBody684_65 RemovedBody684_84

def RemovedBody684_86 : StackLang.HolProg 64 :=
.seq RemovedBody684_36 RemovedBody684_85

def RemovedBody684_87 : StackLang.HolProg 64 :=
.seq RemovedBody684_33 RemovedBody684_86

def RemovedBody684_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody684_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody684_92 : StackLang.HolProg 64 :=
.seq RemovedBody684_90 RemovedBody684_91

def RemovedBody684_93 : StackLang.HolProg 64 :=
.seq RemovedBody684_89 RemovedBody684_92

def RemovedBody684_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2877#64)

def RemovedBody684_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_97 : StackLang.HolProg 64 :=
.seq RemovedBody684_95 RemovedBody684_96

def RemovedBody684_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody684_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody684_101 : StackLang.HolProg 64 :=
.seq RemovedBody684_99 RemovedBody684_100

def RemovedBody684_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody684_101 RemovedBody684_102

def RemovedBody684_104 : StackLang.HolProg 64 :=
.seq RemovedBody684_98 RemovedBody684_103

def RemovedBody684_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody684_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 684 5

def RemovedBody684_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody684_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody684_114 : StackLang.HolProg 64 :=
.seq RemovedBody684_112 RemovedBody684_113

def RemovedBody684_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody684_116 : StackLang.HolProg 64 :=
.seq RemovedBody684_114 RemovedBody684_115

def RemovedBody684_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_118 : StackLang.HolProg 64 :=
.seq RemovedBody684_116 RemovedBody684_117

def RemovedBody684_119 : StackLang.HolProg 64 :=
.seq RemovedBody684_111 RemovedBody684_118

def RemovedBody684_120 : StackLang.HolProg 64 :=
.seq RemovedBody684_110 RemovedBody684_119

def RemovedBody684_121 : StackLang.HolProg 64 :=
.seq RemovedBody684_109 RemovedBody684_120

def RemovedBody684_122 : StackLang.HolProg 64 :=
.seq RemovedBody684_108 RemovedBody684_121

def RemovedBody684_123 : StackLang.HolProg 64 :=
.seq RemovedBody684_107 RemovedBody684_122

def RemovedBody684_124 : StackLang.HolProg 64 :=
.seq RemovedBody684_106 RemovedBody684_123

def RemovedBody684_125 : StackLang.HolProg 64 :=
.seq RemovedBody684_105 RemovedBody684_124

def RemovedBody684_126 : StackLang.HolProg 64 :=
.seq RemovedBody684_104 RemovedBody684_125

def RemovedBody684_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody684_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_135 : StackLang.HolProg 64 :=
.seq RemovedBody684_133 RemovedBody684_134

def RemovedBody684_136 : StackLang.HolProg 64 :=
.seq RemovedBody684_132 RemovedBody684_135

def RemovedBody684_137 : StackLang.HolProg 64 :=
.seq RemovedBody684_131 RemovedBody684_136

def RemovedBody684_138 : StackLang.HolProg 64 :=
.seq RemovedBody684_130 RemovedBody684_137

def RemovedBody684_139 : StackLang.HolProg 64 :=
.seq RemovedBody684_129 RemovedBody684_138

def RemovedBody684_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_141 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody684_142 : StackLang.HolProg 64 :=
.seq RemovedBody684_140 RemovedBody684_141

def RemovedBody684_143 : StackLang.HolProg 64 :=
.call (some (RemovedBody684_139, 0, 684, 4)) (Sum.inl 68) (some (RemovedBody684_142, 684, 5))

def RemovedBody684_144 : StackLang.HolProg 64 :=
.seq RemovedBody684_128 RemovedBody684_143

def RemovedBody684_145 : StackLang.HolProg 64 :=
.seq RemovedBody684_127 RemovedBody684_144

def RemovedBody684_146 : StackLang.HolProg 64 :=
.seq RemovedBody684_126 RemovedBody684_145

def RemovedBody684_147 : StackLang.HolProg 64 :=
.seq RemovedBody684_97 RemovedBody684_146

def RemovedBody684_148 : StackLang.HolProg 64 :=
.seq RemovedBody684_94 RemovedBody684_147

def RemovedBody684_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody684_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody684_153 : StackLang.HolProg 64 :=
.seq RemovedBody684_151 RemovedBody684_152

def RemovedBody684_154 : StackLang.HolProg 64 :=
.seq RemovedBody684_150 RemovedBody684_153

def RemovedBody684_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2878#64)

def RemovedBody684_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_158 : StackLang.HolProg 64 :=
.seq RemovedBody684_156 RemovedBody684_157

def RemovedBody684_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody684_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody684_162 : StackLang.HolProg 64 :=
.seq RemovedBody684_160 RemovedBody684_161

def RemovedBody684_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody684_162 RemovedBody684_163

def RemovedBody684_165 : StackLang.HolProg 64 :=
.seq RemovedBody684_159 RemovedBody684_164

def RemovedBody684_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody684_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 684 7

def RemovedBody684_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody684_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody684_175 : StackLang.HolProg 64 :=
.seq RemovedBody684_173 RemovedBody684_174

def RemovedBody684_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody684_177 : StackLang.HolProg 64 :=
.seq RemovedBody684_175 RemovedBody684_176

def RemovedBody684_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_179 : StackLang.HolProg 64 :=
.seq RemovedBody684_177 RemovedBody684_178

def RemovedBody684_180 : StackLang.HolProg 64 :=
.seq RemovedBody684_172 RemovedBody684_179

def RemovedBody684_181 : StackLang.HolProg 64 :=
.seq RemovedBody684_171 RemovedBody684_180

def RemovedBody684_182 : StackLang.HolProg 64 :=
.seq RemovedBody684_170 RemovedBody684_181

def RemovedBody684_183 : StackLang.HolProg 64 :=
.seq RemovedBody684_169 RemovedBody684_182

def RemovedBody684_184 : StackLang.HolProg 64 :=
.seq RemovedBody684_168 RemovedBody684_183

def RemovedBody684_185 : StackLang.HolProg 64 :=
.seq RemovedBody684_167 RemovedBody684_184

def RemovedBody684_186 : StackLang.HolProg 64 :=
.seq RemovedBody684_166 RemovedBody684_185

def RemovedBody684_187 : StackLang.HolProg 64 :=
.seq RemovedBody684_165 RemovedBody684_186

def RemovedBody684_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody684_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_198 : StackLang.HolProg 64 :=
.seq RemovedBody684_196 RemovedBody684_197

def RemovedBody684_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody684_200 : StackLang.HolProg 64 :=
.seq RemovedBody684_198 RemovedBody684_199

def RemovedBody684_201 : StackLang.HolProg 64 :=
.seq RemovedBody684_195 RemovedBody684_200

def RemovedBody684_202 : StackLang.HolProg 64 :=
.seq RemovedBody684_194 RemovedBody684_201

def RemovedBody684_203 : StackLang.HolProg 64 :=
.seq RemovedBody684_193 RemovedBody684_202

def RemovedBody684_204 : StackLang.HolProg 64 :=
.seq RemovedBody684_192 RemovedBody684_203

def RemovedBody684_205 : StackLang.HolProg 64 :=
.seq RemovedBody684_191 RemovedBody684_204

def RemovedBody684_206 : StackLang.HolProg 64 :=
.seq RemovedBody684_190 RemovedBody684_205

def RemovedBody684_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_210 : StackLang.HolProg 64 :=
.seq RemovedBody684_208 RemovedBody684_209

def RemovedBody684_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody684_212 : StackLang.HolProg 64 :=
.seq RemovedBody684_210 RemovedBody684_211

def RemovedBody684_213 : StackLang.HolProg 64 :=
.seq RemovedBody684_207 RemovedBody684_212

def RemovedBody684_214 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody684_215 : StackLang.HolProg 64 :=
.seq RemovedBody684_213 RemovedBody684_214

def RemovedBody684_216 : StackLang.HolProg 64 :=
.call (some (RemovedBody684_206, 0, 684, 6)) (Sum.inl 68) (some (RemovedBody684_215, 684, 7))

def RemovedBody684_217 : StackLang.HolProg 64 :=
.seq RemovedBody684_189 RemovedBody684_216

def RemovedBody684_218 : StackLang.HolProg 64 :=
.seq RemovedBody684_188 RemovedBody684_217

def RemovedBody684_219 : StackLang.HolProg 64 :=
.seq RemovedBody684_187 RemovedBody684_218

def RemovedBody684_220 : StackLang.HolProg 64 :=
.seq RemovedBody684_158 RemovedBody684_219

def RemovedBody684_221 : StackLang.HolProg 64 :=
.seq RemovedBody684_155 RemovedBody684_220

def RemovedBody684_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody684_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody684_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody684_227 : StackLang.HolProg 64 :=
.seq RemovedBody684_225 RemovedBody684_226

def RemovedBody684_228 : StackLang.HolProg 64 :=
.seq RemovedBody684_224 RemovedBody684_227

def RemovedBody684_229 : StackLang.HolProg 64 :=
.seq RemovedBody684_223 RemovedBody684_228

def RemovedBody684_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2879#64)

def RemovedBody684_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_233 : StackLang.HolProg 64 :=
.seq RemovedBody684_231 RemovedBody684_232

def RemovedBody684_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody684_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody684_237 : StackLang.HolProg 64 :=
.seq RemovedBody684_235 RemovedBody684_236

def RemovedBody684_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody684_237 RemovedBody684_238

def RemovedBody684_240 : StackLang.HolProg 64 :=
.seq RemovedBody684_234 RemovedBody684_239

def RemovedBody684_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody684_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 684 9

def RemovedBody684_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody684_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody684_250 : StackLang.HolProg 64 :=
.seq RemovedBody684_248 RemovedBody684_249

def RemovedBody684_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody684_252 : StackLang.HolProg 64 :=
.seq RemovedBody684_250 RemovedBody684_251

def RemovedBody684_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_254 : StackLang.HolProg 64 :=
.seq RemovedBody684_252 RemovedBody684_253

def RemovedBody684_255 : StackLang.HolProg 64 :=
.seq RemovedBody684_247 RemovedBody684_254

def RemovedBody684_256 : StackLang.HolProg 64 :=
.seq RemovedBody684_246 RemovedBody684_255

def RemovedBody684_257 : StackLang.HolProg 64 :=
.seq RemovedBody684_245 RemovedBody684_256

def RemovedBody684_258 : StackLang.HolProg 64 :=
.seq RemovedBody684_244 RemovedBody684_257

def RemovedBody684_259 : StackLang.HolProg 64 :=
.seq RemovedBody684_243 RemovedBody684_258

def RemovedBody684_260 : StackLang.HolProg 64 :=
.seq RemovedBody684_242 RemovedBody684_259

def RemovedBody684_261 : StackLang.HolProg 64 :=
.seq RemovedBody684_241 RemovedBody684_260

def RemovedBody684_262 : StackLang.HolProg 64 :=
.seq RemovedBody684_240 RemovedBody684_261

def RemovedBody684_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody684_272 : StackLang.HolProg 64 :=
.seq RemovedBody684_270 RemovedBody684_271

def RemovedBody684_273 : StackLang.HolProg 64 :=
.seq RemovedBody684_269 RemovedBody684_272

def RemovedBody684_274 : StackLang.HolProg 64 :=
.seq RemovedBody684_268 RemovedBody684_273

def RemovedBody684_275 : StackLang.HolProg 64 :=
.seq RemovedBody684_267 RemovedBody684_274

def RemovedBody684_276 : StackLang.HolProg 64 :=
.seq RemovedBody684_266 RemovedBody684_275

def RemovedBody684_277 : StackLang.HolProg 64 :=
.seq RemovedBody684_265 RemovedBody684_276

def RemovedBody684_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody684_281 : StackLang.HolProg 64 :=
.seq RemovedBody684_279 RemovedBody684_280

def RemovedBody684_282 : StackLang.HolProg 64 :=
.seq RemovedBody684_278 RemovedBody684_281

def RemovedBody684_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody684_284 : StackLang.HolProg 64 :=
.seq RemovedBody684_282 RemovedBody684_283

def RemovedBody684_285 : StackLang.HolProg 64 :=
.call (some (RemovedBody684_277, 0, 684, 8)) (Sum.inl 680) (some (RemovedBody684_284, 684, 9))

def RemovedBody684_286 : StackLang.HolProg 64 :=
.seq RemovedBody684_264 RemovedBody684_285

def RemovedBody684_287 : StackLang.HolProg 64 :=
.seq RemovedBody684_263 RemovedBody684_286

def RemovedBody684_288 : StackLang.HolProg 64 :=
.seq RemovedBody684_262 RemovedBody684_287

def RemovedBody684_289 : StackLang.HolProg 64 :=
.seq RemovedBody684_233 RemovedBody684_288

def RemovedBody684_290 : StackLang.HolProg 64 :=
.seq RemovedBody684_230 RemovedBody684_289

def RemovedBody684_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody684_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody684_296 : StackLang.HolProg 64 :=
.seq RemovedBody684_294 RemovedBody684_295

def RemovedBody684_297 : StackLang.HolProg 64 :=
.seq RemovedBody684_293 RemovedBody684_296

def RemovedBody684_298 : StackLang.HolProg 64 :=
.seq RemovedBody684_292 RemovedBody684_297

def RemovedBody684_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2880#64)

def RemovedBody684_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_302 : StackLang.HolProg 64 :=
.seq RemovedBody684_300 RemovedBody684_301

def RemovedBody684_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody684_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody684_306 : StackLang.HolProg 64 :=
.seq RemovedBody684_304 RemovedBody684_305

def RemovedBody684_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_308 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody684_306 RemovedBody684_307

def RemovedBody684_309 : StackLang.HolProg 64 :=
.seq RemovedBody684_303 RemovedBody684_308

def RemovedBody684_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody684_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 684 11

def RemovedBody684_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody684_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody684_319 : StackLang.HolProg 64 :=
.seq RemovedBody684_317 RemovedBody684_318

def RemovedBody684_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody684_321 : StackLang.HolProg 64 :=
.seq RemovedBody684_319 RemovedBody684_320

def RemovedBody684_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_323 : StackLang.HolProg 64 :=
.seq RemovedBody684_321 RemovedBody684_322

def RemovedBody684_324 : StackLang.HolProg 64 :=
.seq RemovedBody684_316 RemovedBody684_323

def RemovedBody684_325 : StackLang.HolProg 64 :=
.seq RemovedBody684_315 RemovedBody684_324

def RemovedBody684_326 : StackLang.HolProg 64 :=
.seq RemovedBody684_314 RemovedBody684_325

def RemovedBody684_327 : StackLang.HolProg 64 :=
.seq RemovedBody684_313 RemovedBody684_326

def RemovedBody684_328 : StackLang.HolProg 64 :=
.seq RemovedBody684_312 RemovedBody684_327

def RemovedBody684_329 : StackLang.HolProg 64 :=
.seq RemovedBody684_311 RemovedBody684_328

def RemovedBody684_330 : StackLang.HolProg 64 :=
.seq RemovedBody684_310 RemovedBody684_329

def RemovedBody684_331 : StackLang.HolProg 64 :=
.seq RemovedBody684_309 RemovedBody684_330

def RemovedBody684_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody684_342 : StackLang.HolProg 64 :=
.seq RemovedBody684_340 RemovedBody684_341

def RemovedBody684_343 : StackLang.HolProg 64 :=
.seq RemovedBody684_339 RemovedBody684_342

def RemovedBody684_344 : StackLang.HolProg 64 :=
.seq RemovedBody684_338 RemovedBody684_343

def RemovedBody684_345 : StackLang.HolProg 64 :=
.seq RemovedBody684_337 RemovedBody684_344

def RemovedBody684_346 : StackLang.HolProg 64 :=
.seq RemovedBody684_336 RemovedBody684_345

def RemovedBody684_347 : StackLang.HolProg 64 :=
.seq RemovedBody684_335 RemovedBody684_346

def RemovedBody684_348 : StackLang.HolProg 64 :=
.seq RemovedBody684_334 RemovedBody684_347

def RemovedBody684_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody684_353 : StackLang.HolProg 64 :=
.seq RemovedBody684_351 RemovedBody684_352

def RemovedBody684_354 : StackLang.HolProg 64 :=
.seq RemovedBody684_350 RemovedBody684_353

def RemovedBody684_355 : StackLang.HolProg 64 :=
.seq RemovedBody684_349 RemovedBody684_354

def RemovedBody684_356 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody684_357 : StackLang.HolProg 64 :=
.seq RemovedBody684_355 RemovedBody684_356

def RemovedBody684_358 : StackLang.HolProg 64 :=
.call (some (RemovedBody684_348, 0, 684, 10)) (Sum.inl 77) (some (RemovedBody684_357, 684, 11))

def RemovedBody684_359 : StackLang.HolProg 64 :=
.seq RemovedBody684_333 RemovedBody684_358

def RemovedBody684_360 : StackLang.HolProg 64 :=
.seq RemovedBody684_332 RemovedBody684_359

def RemovedBody684_361 : StackLang.HolProg 64 :=
.seq RemovedBody684_331 RemovedBody684_360

def RemovedBody684_362 : StackLang.HolProg 64 :=
.seq RemovedBody684_302 RemovedBody684_361

def RemovedBody684_363 : StackLang.HolProg 64 :=
.seq RemovedBody684_299 RemovedBody684_362

def RemovedBody684_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody684_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody684_370 : StackLang.HolProg 64 :=
.seq RemovedBody684_368 RemovedBody684_369

def RemovedBody684_371 : StackLang.HolProg 64 :=
.seq RemovedBody684_367 RemovedBody684_370

def RemovedBody684_372 : StackLang.HolProg 64 :=
.seq RemovedBody684_366 RemovedBody684_371

def RemovedBody684_373 : StackLang.HolProg 64 :=
.seq RemovedBody684_365 RemovedBody684_372

def RemovedBody684_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2881#64)

def RemovedBody684_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_377 : StackLang.HolProg 64 :=
.seq RemovedBody684_375 RemovedBody684_376

def RemovedBody684_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody684_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody684_381 : StackLang.HolProg 64 :=
.seq RemovedBody684_379 RemovedBody684_380

def RemovedBody684_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_383 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody684_381 RemovedBody684_382

def RemovedBody684_384 : StackLang.HolProg 64 :=
.seq RemovedBody684_378 RemovedBody684_383

def RemovedBody684_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody684_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 684 13

def RemovedBody684_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody684_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody684_394 : StackLang.HolProg 64 :=
.seq RemovedBody684_392 RemovedBody684_393

def RemovedBody684_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody684_396 : StackLang.HolProg 64 :=
.seq RemovedBody684_394 RemovedBody684_395

def RemovedBody684_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_398 : StackLang.HolProg 64 :=
.seq RemovedBody684_396 RemovedBody684_397

def RemovedBody684_399 : StackLang.HolProg 64 :=
.seq RemovedBody684_391 RemovedBody684_398

def RemovedBody684_400 : StackLang.HolProg 64 :=
.seq RemovedBody684_390 RemovedBody684_399

def RemovedBody684_401 : StackLang.HolProg 64 :=
.seq RemovedBody684_389 RemovedBody684_400

def RemovedBody684_402 : StackLang.HolProg 64 :=
.seq RemovedBody684_388 RemovedBody684_401

def RemovedBody684_403 : StackLang.HolProg 64 :=
.seq RemovedBody684_387 RemovedBody684_402

def RemovedBody684_404 : StackLang.HolProg 64 :=
.seq RemovedBody684_386 RemovedBody684_403

def RemovedBody684_405 : StackLang.HolProg 64 :=
.seq RemovedBody684_385 RemovedBody684_404

def RemovedBody684_406 : StackLang.HolProg 64 :=
.seq RemovedBody684_384 RemovedBody684_405

def RemovedBody684_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody684_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_417 : StackLang.HolProg 64 :=
.seq RemovedBody684_415 RemovedBody684_416

def RemovedBody684_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_422 : StackLang.HolProg 64 :=
.seq RemovedBody684_420 RemovedBody684_421

def RemovedBody684_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_425 : StackLang.HolProg 64 :=
.seq RemovedBody684_423 RemovedBody684_424

def RemovedBody684_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody684_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_428 : StackLang.HolProg 64 :=
.seq RemovedBody684_426 RemovedBody684_427

def RemovedBody684_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody684_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_431 : StackLang.HolProg 64 :=
.seq RemovedBody684_429 RemovedBody684_430

def RemovedBody684_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody684_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody684_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_435 : StackLang.HolProg 64 :=
.seq RemovedBody684_433 RemovedBody684_434

def RemovedBody684_436 : StackLang.HolProg 64 :=
.seq RemovedBody684_432 RemovedBody684_435

def RemovedBody684_437 : StackLang.HolProg 64 :=
.seq RemovedBody684_431 RemovedBody684_436

def RemovedBody684_438 : StackLang.HolProg 64 :=
.seq RemovedBody684_428 RemovedBody684_437

def RemovedBody684_439 : StackLang.HolProg 64 :=
.seq RemovedBody684_425 RemovedBody684_438

def RemovedBody684_440 : StackLang.HolProg 64 :=
.seq RemovedBody684_422 RemovedBody684_439

def RemovedBody684_441 : StackLang.HolProg 64 :=
.seq RemovedBody684_419 RemovedBody684_440

def RemovedBody684_442 : StackLang.HolProg 64 :=
.seq RemovedBody684_418 RemovedBody684_441

def RemovedBody684_443 : StackLang.HolProg 64 :=
.seq RemovedBody684_417 RemovedBody684_442

def RemovedBody684_444 : StackLang.HolProg 64 :=
.seq RemovedBody684_414 RemovedBody684_443

def RemovedBody684_445 : StackLang.HolProg 64 :=
.seq RemovedBody684_413 RemovedBody684_444

def RemovedBody684_446 : StackLang.HolProg 64 :=
.seq RemovedBody684_412 RemovedBody684_445

def RemovedBody684_447 : StackLang.HolProg 64 :=
.seq RemovedBody684_411 RemovedBody684_446

def RemovedBody684_448 : StackLang.HolProg 64 :=
.seq RemovedBody684_410 RemovedBody684_447

def RemovedBody684_449 : StackLang.HolProg 64 :=
.seq RemovedBody684_409 RemovedBody684_448

def RemovedBody684_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_453 : StackLang.HolProg 64 :=
.seq RemovedBody684_451 RemovedBody684_452

def RemovedBody684_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_458 : StackLang.HolProg 64 :=
.seq RemovedBody684_456 RemovedBody684_457

def RemovedBody684_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_461 : StackLang.HolProg 64 :=
.seq RemovedBody684_459 RemovedBody684_460

def RemovedBody684_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody684_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_464 : StackLang.HolProg 64 :=
.seq RemovedBody684_462 RemovedBody684_463

def RemovedBody684_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody684_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_467 : StackLang.HolProg 64 :=
.seq RemovedBody684_465 RemovedBody684_466

def RemovedBody684_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody684_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody684_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_471 : StackLang.HolProg 64 :=
.seq RemovedBody684_469 RemovedBody684_470

def RemovedBody684_472 : StackLang.HolProg 64 :=
.seq RemovedBody684_468 RemovedBody684_471

def RemovedBody684_473 : StackLang.HolProg 64 :=
.seq RemovedBody684_467 RemovedBody684_472

def RemovedBody684_474 : StackLang.HolProg 64 :=
.seq RemovedBody684_464 RemovedBody684_473

def RemovedBody684_475 : StackLang.HolProg 64 :=
.seq RemovedBody684_461 RemovedBody684_474

def RemovedBody684_476 : StackLang.HolProg 64 :=
.seq RemovedBody684_458 RemovedBody684_475

def RemovedBody684_477 : StackLang.HolProg 64 :=
.seq RemovedBody684_455 RemovedBody684_476

def RemovedBody684_478 : StackLang.HolProg 64 :=
.seq RemovedBody684_454 RemovedBody684_477

def RemovedBody684_479 : StackLang.HolProg 64 :=
.seq RemovedBody684_453 RemovedBody684_478

def RemovedBody684_480 : StackLang.HolProg 64 :=
.seq RemovedBody684_450 RemovedBody684_479

def RemovedBody684_481 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody684_482 : StackLang.HolProg 64 :=
.seq RemovedBody684_480 RemovedBody684_481

def RemovedBody684_483 : StackLang.HolProg 64 :=
.call (some (RemovedBody684_449, 0, 684, 12)) (Sum.inl 138) (some (RemovedBody684_482, 684, 13))

def RemovedBody684_484 : StackLang.HolProg 64 :=
.seq RemovedBody684_408 RemovedBody684_483

def RemovedBody684_485 : StackLang.HolProg 64 :=
.seq RemovedBody684_407 RemovedBody684_484

def RemovedBody684_486 : StackLang.HolProg 64 :=
.seq RemovedBody684_406 RemovedBody684_485

def RemovedBody684_487 : StackLang.HolProg 64 :=
.seq RemovedBody684_377 RemovedBody684_486

def RemovedBody684_488 : StackLang.HolProg 64 :=
.seq RemovedBody684_374 RemovedBody684_487

def RemovedBody684_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody684_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody684_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody684_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody684_499 : StackLang.HolProg 64 :=
.seq RemovedBody684_497 RemovedBody684_498

def RemovedBody684_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_502 : StackLang.HolProg 64 :=
.seq RemovedBody684_500 RemovedBody684_501

def RemovedBody684_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody684_506 : StackLang.HolProg 64 :=
.seq RemovedBody684_504 RemovedBody684_505

def RemovedBody684_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody684_510 : StackLang.HolProg 64 :=
.seq RemovedBody684_508 RemovedBody684_509

def RemovedBody684_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody684_514 : StackLang.HolProg 64 :=
.seq RemovedBody684_512 RemovedBody684_513

def RemovedBody684_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_517 : StackLang.HolProg 64 :=
.seq RemovedBody684_515 RemovedBody684_516

def RemovedBody684_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_521 : StackLang.HolProg 64 :=
.seq RemovedBody684_519 RemovedBody684_520

def RemovedBody684_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_524 : StackLang.HolProg 64 :=
.seq RemovedBody684_522 RemovedBody684_523

def RemovedBody684_525 : StackLang.HolProg 64 :=
.seq RemovedBody684_521 RemovedBody684_524

def RemovedBody684_526 : StackLang.HolProg 64 :=
.seq RemovedBody684_518 RemovedBody684_525

def RemovedBody684_527 : StackLang.HolProg 64 :=
.seq RemovedBody684_517 RemovedBody684_526

def RemovedBody684_528 : StackLang.HolProg 64 :=
.seq RemovedBody684_514 RemovedBody684_527

def RemovedBody684_529 : StackLang.HolProg 64 :=
.seq RemovedBody684_511 RemovedBody684_528

def RemovedBody684_530 : StackLang.HolProg 64 :=
.seq RemovedBody684_510 RemovedBody684_529

def RemovedBody684_531 : StackLang.HolProg 64 :=
.seq RemovedBody684_507 RemovedBody684_530

def RemovedBody684_532 : StackLang.HolProg 64 :=
.seq RemovedBody684_506 RemovedBody684_531

def RemovedBody684_533 : StackLang.HolProg 64 :=
.seq RemovedBody684_503 RemovedBody684_532

def RemovedBody684_534 : StackLang.HolProg 64 :=
.seq RemovedBody684_502 RemovedBody684_533

def RemovedBody684_535 : StackLang.HolProg 64 :=
.seq RemovedBody684_499 RemovedBody684_534

def RemovedBody684_536 : StackLang.HolProg 64 :=
.seq RemovedBody684_496 RemovedBody684_535

def RemovedBody684_537 : StackLang.HolProg 64 :=
.seq RemovedBody684_495 RemovedBody684_536

def RemovedBody684_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2882#64)

def RemovedBody684_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_541 : StackLang.HolProg 64 :=
.seq RemovedBody684_539 RemovedBody684_540

def RemovedBody684_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody684_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody684_545 : StackLang.HolProg 64 :=
.seq RemovedBody684_543 RemovedBody684_544

def RemovedBody684_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_547 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody684_545 RemovedBody684_546

def RemovedBody684_548 : StackLang.HolProg 64 :=
.seq RemovedBody684_542 RemovedBody684_547

def RemovedBody684_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody684_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 684 15

def RemovedBody684_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody684_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody684_558 : StackLang.HolProg 64 :=
.seq RemovedBody684_556 RemovedBody684_557

def RemovedBody684_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody684_560 : StackLang.HolProg 64 :=
.seq RemovedBody684_558 RemovedBody684_559

def RemovedBody684_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_562 : StackLang.HolProg 64 :=
.seq RemovedBody684_560 RemovedBody684_561

def RemovedBody684_563 : StackLang.HolProg 64 :=
.seq RemovedBody684_555 RemovedBody684_562

def RemovedBody684_564 : StackLang.HolProg 64 :=
.seq RemovedBody684_554 RemovedBody684_563

def RemovedBody684_565 : StackLang.HolProg 64 :=
.seq RemovedBody684_553 RemovedBody684_564

def RemovedBody684_566 : StackLang.HolProg 64 :=
.seq RemovedBody684_552 RemovedBody684_565

def RemovedBody684_567 : StackLang.HolProg 64 :=
.seq RemovedBody684_551 RemovedBody684_566

def RemovedBody684_568 : StackLang.HolProg 64 :=
.seq RemovedBody684_550 RemovedBody684_567

def RemovedBody684_569 : StackLang.HolProg 64 :=
.seq RemovedBody684_549 RemovedBody684_568

def RemovedBody684_570 : StackLang.HolProg 64 :=
.seq RemovedBody684_548 RemovedBody684_569

def RemovedBody684_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody684_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_580 : StackLang.HolProg 64 :=
.seq RemovedBody684_578 RemovedBody684_579

def RemovedBody684_581 : StackLang.HolProg 64 :=
.seq RemovedBody684_577 RemovedBody684_580

def RemovedBody684_582 : StackLang.HolProg 64 :=
.seq RemovedBody684_576 RemovedBody684_581

def RemovedBody684_583 : StackLang.HolProg 64 :=
.seq RemovedBody684_575 RemovedBody684_582

def RemovedBody684_584 : StackLang.HolProg 64 :=
.seq RemovedBody684_574 RemovedBody684_583

def RemovedBody684_585 : StackLang.HolProg 64 :=
.seq RemovedBody684_573 RemovedBody684_584

def RemovedBody684_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_588 : StackLang.HolProg 64 :=
.seq RemovedBody684_586 RemovedBody684_587

def RemovedBody684_589 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody684_590 : StackLang.HolProg 64 :=
.seq RemovedBody684_588 RemovedBody684_589

def RemovedBody684_591 : StackLang.HolProg 64 :=
.call (some (RemovedBody684_585, 0, 684, 14)) (Sum.inl 104) (some (RemovedBody684_590, 684, 15))

def RemovedBody684_592 : StackLang.HolProg 64 :=
.seq RemovedBody684_572 RemovedBody684_591

def RemovedBody684_593 : StackLang.HolProg 64 :=
.seq RemovedBody684_571 RemovedBody684_592

def RemovedBody684_594 : StackLang.HolProg 64 :=
.seq RemovedBody684_570 RemovedBody684_593

def RemovedBody684_595 : StackLang.HolProg 64 :=
.seq RemovedBody684_541 RemovedBody684_594

def RemovedBody684_596 : StackLang.HolProg 64 :=
.seq RemovedBody684_538 RemovedBody684_595

def RemovedBody684_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody684_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody684_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody684_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody684_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_606 : StackLang.HolProg 64 :=
.seq RemovedBody684_604 RemovedBody684_605

def RemovedBody684_607 : StackLang.HolProg 64 :=
.seq RemovedBody684_603 RemovedBody684_606

def RemovedBody684_608 : StackLang.HolProg 64 :=
.seq RemovedBody684_602 RemovedBody684_607

def RemovedBody684_609 : StackLang.HolProg 64 :=
.seq RemovedBody684_601 RemovedBody684_608

def RemovedBody684_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2883#64)

def RemovedBody684_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_613 : StackLang.HolProg 64 :=
.seq RemovedBody684_611 RemovedBody684_612

def RemovedBody684_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody684_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody684_617 : StackLang.HolProg 64 :=
.seq RemovedBody684_615 RemovedBody684_616

def RemovedBody684_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_619 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody684_617 RemovedBody684_618

def RemovedBody684_620 : StackLang.HolProg 64 :=
.seq RemovedBody684_614 RemovedBody684_619

def RemovedBody684_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody684_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 684 17

def RemovedBody684_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody684_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody684_630 : StackLang.HolProg 64 :=
.seq RemovedBody684_628 RemovedBody684_629

def RemovedBody684_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody684_632 : StackLang.HolProg 64 :=
.seq RemovedBody684_630 RemovedBody684_631

def RemovedBody684_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_634 : StackLang.HolProg 64 :=
.seq RemovedBody684_632 RemovedBody684_633

def RemovedBody684_635 : StackLang.HolProg 64 :=
.seq RemovedBody684_627 RemovedBody684_634

def RemovedBody684_636 : StackLang.HolProg 64 :=
.seq RemovedBody684_626 RemovedBody684_635

def RemovedBody684_637 : StackLang.HolProg 64 :=
.seq RemovedBody684_625 RemovedBody684_636

def RemovedBody684_638 : StackLang.HolProg 64 :=
.seq RemovedBody684_624 RemovedBody684_637

def RemovedBody684_639 : StackLang.HolProg 64 :=
.seq RemovedBody684_623 RemovedBody684_638

def RemovedBody684_640 : StackLang.HolProg 64 :=
.seq RemovedBody684_622 RemovedBody684_639

def RemovedBody684_641 : StackLang.HolProg 64 :=
.seq RemovedBody684_621 RemovedBody684_640

def RemovedBody684_642 : StackLang.HolProg 64 :=
.seq RemovedBody684_620 RemovedBody684_641

def RemovedBody684_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_653 : StackLang.HolProg 64 :=
.seq RemovedBody684_651 RemovedBody684_652

def RemovedBody684_654 : StackLang.HolProg 64 :=
.seq RemovedBody684_650 RemovedBody684_653

def RemovedBody684_655 : StackLang.HolProg 64 :=
.seq RemovedBody684_649 RemovedBody684_654

def RemovedBody684_656 : StackLang.HolProg 64 :=
.seq RemovedBody684_648 RemovedBody684_655

def RemovedBody684_657 : StackLang.HolProg 64 :=
.seq RemovedBody684_647 RemovedBody684_656

def RemovedBody684_658 : StackLang.HolProg 64 :=
.seq RemovedBody684_646 RemovedBody684_657

def RemovedBody684_659 : StackLang.HolProg 64 :=
.seq RemovedBody684_645 RemovedBody684_658

def RemovedBody684_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_664 : StackLang.HolProg 64 :=
.seq RemovedBody684_662 RemovedBody684_663

def RemovedBody684_665 : StackLang.HolProg 64 :=
.seq RemovedBody684_661 RemovedBody684_664

def RemovedBody684_666 : StackLang.HolProg 64 :=
.seq RemovedBody684_660 RemovedBody684_665

def RemovedBody684_667 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody684_668 : StackLang.HolProg 64 :=
.seq RemovedBody684_666 RemovedBody684_667

def RemovedBody684_669 : StackLang.HolProg 64 :=
.call (some (RemovedBody684_659, 0, 684, 16)) (Sum.inl 683) (some (RemovedBody684_668, 684, 17))

def RemovedBody684_670 : StackLang.HolProg 64 :=
.seq RemovedBody684_644 RemovedBody684_669

def RemovedBody684_671 : StackLang.HolProg 64 :=
.seq RemovedBody684_643 RemovedBody684_670

def RemovedBody684_672 : StackLang.HolProg 64 :=
.seq RemovedBody684_642 RemovedBody684_671

def RemovedBody684_673 : StackLang.HolProg 64 :=
.seq RemovedBody684_613 RemovedBody684_672

def RemovedBody684_674 : StackLang.HolProg 64 :=
.seq RemovedBody684_610 RemovedBody684_673

def RemovedBody684_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_677 : StackLang.HolProg 64 :=
.seq RemovedBody684_675 RemovedBody684_676

def RemovedBody684_678 : StackLang.HolProg 64 :=
.seq RemovedBody684_674 RemovedBody684_677

def RemovedBody684_679 : StackLang.HolProg 64 :=
.seq RemovedBody684_609 RemovedBody684_678

def RemovedBody684_680 : StackLang.HolProg 64 :=
.seq RemovedBody684_600 RemovedBody684_679

def RemovedBody684_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_684 : StackLang.HolProg 64 :=
.seq RemovedBody684_682 RemovedBody684_683

def RemovedBody684_685 : StackLang.HolProg 64 :=
.seq RemovedBody684_681 RemovedBody684_684

def RemovedBody684_686 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody684_680 RemovedBody684_685

def RemovedBody684_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody684_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody684_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody684_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody684_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_699 : StackLang.HolProg 64 :=
.seq RemovedBody684_697 RemovedBody684_698

def RemovedBody684_700 : StackLang.HolProg 64 :=
.seq RemovedBody684_696 RemovedBody684_699

def RemovedBody684_701 : StackLang.HolProg 64 :=
.seq RemovedBody684_695 RemovedBody684_700

def RemovedBody684_702 : StackLang.HolProg 64 :=
.seq RemovedBody684_694 RemovedBody684_701

def RemovedBody684_703 : StackLang.HolProg 64 :=
.seq RemovedBody684_693 RemovedBody684_702

def RemovedBody684_704 : StackLang.HolProg 64 :=
.seq RemovedBody684_692 RemovedBody684_703

def RemovedBody684_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2884#64)

def RemovedBody684_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_708 : StackLang.HolProg 64 :=
.seq RemovedBody684_706 RemovedBody684_707

def RemovedBody684_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody684_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody684_712 : StackLang.HolProg 64 :=
.seq RemovedBody684_710 RemovedBody684_711

def RemovedBody684_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_714 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody684_712 RemovedBody684_713

def RemovedBody684_715 : StackLang.HolProg 64 :=
.seq RemovedBody684_709 RemovedBody684_714

def RemovedBody684_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody684_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 684 19

def RemovedBody684_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody684_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody684_725 : StackLang.HolProg 64 :=
.seq RemovedBody684_723 RemovedBody684_724

def RemovedBody684_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody684_727 : StackLang.HolProg 64 :=
.seq RemovedBody684_725 RemovedBody684_726

def RemovedBody684_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_729 : StackLang.HolProg 64 :=
.seq RemovedBody684_727 RemovedBody684_728

def RemovedBody684_730 : StackLang.HolProg 64 :=
.seq RemovedBody684_722 RemovedBody684_729

def RemovedBody684_731 : StackLang.HolProg 64 :=
.seq RemovedBody684_721 RemovedBody684_730

def RemovedBody684_732 : StackLang.HolProg 64 :=
.seq RemovedBody684_720 RemovedBody684_731

def RemovedBody684_733 : StackLang.HolProg 64 :=
.seq RemovedBody684_719 RemovedBody684_732

def RemovedBody684_734 : StackLang.HolProg 64 :=
.seq RemovedBody684_718 RemovedBody684_733

def RemovedBody684_735 : StackLang.HolProg 64 :=
.seq RemovedBody684_717 RemovedBody684_734

def RemovedBody684_736 : StackLang.HolProg 64 :=
.seq RemovedBody684_716 RemovedBody684_735

def RemovedBody684_737 : StackLang.HolProg 64 :=
.seq RemovedBody684_715 RemovedBody684_736

def RemovedBody684_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody684_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody684_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody684_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody684_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_756 : StackLang.HolProg 64 :=
.seq RemovedBody684_754 RemovedBody684_755

def RemovedBody684_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_759 : StackLang.HolProg 64 :=
.seq RemovedBody684_757 RemovedBody684_758

def RemovedBody684_760 : StackLang.HolProg 64 :=
.seq RemovedBody684_756 RemovedBody684_759

def RemovedBody684_761 : StackLang.HolProg 64 :=
.seq RemovedBody684_753 RemovedBody684_760

def RemovedBody684_762 : StackLang.HolProg 64 :=
.seq RemovedBody684_752 RemovedBody684_761

def RemovedBody684_763 : StackLang.HolProg 64 :=
.seq RemovedBody684_751 RemovedBody684_762

def RemovedBody684_764 : StackLang.HolProg 64 :=
.seq RemovedBody684_750 RemovedBody684_763

def RemovedBody684_765 : StackLang.HolProg 64 :=
.seq RemovedBody684_749 RemovedBody684_764

def RemovedBody684_766 : StackLang.HolProg 64 :=
.seq RemovedBody684_748 RemovedBody684_765

def RemovedBody684_767 : StackLang.HolProg 64 :=
.seq RemovedBody684_747 RemovedBody684_766

def RemovedBody684_768 : StackLang.HolProg 64 :=
.seq RemovedBody684_746 RemovedBody684_767

def RemovedBody684_769 : StackLang.HolProg 64 :=
.seq RemovedBody684_745 RemovedBody684_768

def RemovedBody684_770 : StackLang.HolProg 64 :=
.seq RemovedBody684_744 RemovedBody684_769

def RemovedBody684_771 : StackLang.HolProg 64 :=
.seq RemovedBody684_743 RemovedBody684_770

def RemovedBody684_772 : StackLang.HolProg 64 :=
.seq RemovedBody684_742 RemovedBody684_771

def RemovedBody684_773 : StackLang.HolProg 64 :=
.seq RemovedBody684_741 RemovedBody684_772

def RemovedBody684_774 : StackLang.HolProg 64 :=
.seq RemovedBody684_740 RemovedBody684_773

def RemovedBody684_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody684_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody684_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody684_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody684_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_787 : StackLang.HolProg 64 :=
.seq RemovedBody684_785 RemovedBody684_786

def RemovedBody684_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_790 : StackLang.HolProg 64 :=
.seq RemovedBody684_788 RemovedBody684_789

def RemovedBody684_791 : StackLang.HolProg 64 :=
.seq RemovedBody684_787 RemovedBody684_790

def RemovedBody684_792 : StackLang.HolProg 64 :=
.seq RemovedBody684_784 RemovedBody684_791

def RemovedBody684_793 : StackLang.HolProg 64 :=
.seq RemovedBody684_783 RemovedBody684_792

def RemovedBody684_794 : StackLang.HolProg 64 :=
.seq RemovedBody684_782 RemovedBody684_793

def RemovedBody684_795 : StackLang.HolProg 64 :=
.seq RemovedBody684_781 RemovedBody684_794

def RemovedBody684_796 : StackLang.HolProg 64 :=
.seq RemovedBody684_780 RemovedBody684_795

def RemovedBody684_797 : StackLang.HolProg 64 :=
.seq RemovedBody684_779 RemovedBody684_796

def RemovedBody684_798 : StackLang.HolProg 64 :=
.seq RemovedBody684_778 RemovedBody684_797

def RemovedBody684_799 : StackLang.HolProg 64 :=
.seq RemovedBody684_777 RemovedBody684_798

def RemovedBody684_800 : StackLang.HolProg 64 :=
.seq RemovedBody684_776 RemovedBody684_799

def RemovedBody684_801 : StackLang.HolProg 64 :=
.seq RemovedBody684_775 RemovedBody684_800

def RemovedBody684_802 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody684_803 : StackLang.HolProg 64 :=
.seq RemovedBody684_801 RemovedBody684_802

def RemovedBody684_804 : StackLang.HolProg 64 :=
.call (some (RemovedBody684_774, 0, 684, 18)) (Sum.inl 682) (some (RemovedBody684_803, 684, 19))

def RemovedBody684_805 : StackLang.HolProg 64 :=
.seq RemovedBody684_739 RemovedBody684_804

def RemovedBody684_806 : StackLang.HolProg 64 :=
.seq RemovedBody684_738 RemovedBody684_805

def RemovedBody684_807 : StackLang.HolProg 64 :=
.seq RemovedBody684_737 RemovedBody684_806

def RemovedBody684_808 : StackLang.HolProg 64 :=
.seq RemovedBody684_708 RemovedBody684_807

def RemovedBody684_809 : StackLang.HolProg 64 :=
.seq RemovedBody684_705 RemovedBody684_808

def RemovedBody684_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_812 : StackLang.HolProg 64 :=
.seq RemovedBody684_810 RemovedBody684_811

def RemovedBody684_813 : StackLang.HolProg 64 :=
.seq RemovedBody684_809 RemovedBody684_812

def RemovedBody684_814 : StackLang.HolProg 64 :=
.seq RemovedBody684_704 RemovedBody684_813

def RemovedBody684_815 : StackLang.HolProg 64 :=
.seq RemovedBody684_691 RemovedBody684_814

def RemovedBody684_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody684_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody684_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody684_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody684_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_826 : StackLang.HolProg 64 :=
.seq RemovedBody684_824 RemovedBody684_825

def RemovedBody684_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_828 : StackLang.HolProg 64 :=
.seq RemovedBody684_826 RemovedBody684_827

def RemovedBody684_829 : StackLang.HolProg 64 :=
.seq RemovedBody684_823 RemovedBody684_828

def RemovedBody684_830 : StackLang.HolProg 64 :=
.seq RemovedBody684_822 RemovedBody684_829

def RemovedBody684_831 : StackLang.HolProg 64 :=
.seq RemovedBody684_821 RemovedBody684_830

def RemovedBody684_832 : StackLang.HolProg 64 :=
.seq RemovedBody684_820 RemovedBody684_831

def RemovedBody684_833 : StackLang.HolProg 64 :=
.seq RemovedBody684_819 RemovedBody684_832

def RemovedBody684_834 : StackLang.HolProg 64 :=
.seq RemovedBody684_818 RemovedBody684_833

def RemovedBody684_835 : StackLang.HolProg 64 :=
.seq RemovedBody684_817 RemovedBody684_834

def RemovedBody684_836 : StackLang.HolProg 64 :=
.seq RemovedBody684_816 RemovedBody684_835

def RemovedBody684_837 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody684_815 RemovedBody684_836

def RemovedBody684_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_845 : StackLang.HolProg 64 :=
.seq RemovedBody684_843 RemovedBody684_844

def RemovedBody684_846 : StackLang.HolProg 64 :=
.seq RemovedBody684_842 RemovedBody684_845

def RemovedBody684_847 : StackLang.HolProg 64 :=
.seq RemovedBody684_841 RemovedBody684_846

def RemovedBody684_848 : StackLang.HolProg 64 :=
.seq RemovedBody684_840 RemovedBody684_847

def RemovedBody684_849 : StackLang.HolProg 64 :=
.seq RemovedBody684_839 RemovedBody684_848

def RemovedBody684_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody684_851 : StackLang.HolProg 64 :=
.seq RemovedBody684_849 RemovedBody684_850

def RemovedBody684_852 : StackLang.HolProg 64 :=
.seq RemovedBody684_838 RemovedBody684_851

def RemovedBody684_853 : StackLang.HolProg 64 :=
.seq RemovedBody684_837 RemovedBody684_852

def RemovedBody684_854 : StackLang.HolProg 64 :=
.seq RemovedBody684_690 RemovedBody684_853

def RemovedBody684_855 : StackLang.HolProg 64 :=
.seq RemovedBody684_689 RemovedBody684_854

def RemovedBody684_856 : StackLang.HolProg 64 :=
.seq RemovedBody684_688 RemovedBody684_855

def RemovedBody684_857 : StackLang.HolProg 64 :=
.seq RemovedBody684_687 RemovedBody684_856

def RemovedBody684_858 : StackLang.HolProg 64 :=
.seq RemovedBody684_686 RemovedBody684_857

def RemovedBody684_859 : StackLang.HolProg 64 :=
.seq RemovedBody684_599 RemovedBody684_858

def RemovedBody684_860 : StackLang.HolProg 64 :=
.seq RemovedBody684_598 RemovedBody684_859

def RemovedBody684_861 : StackLang.HolProg 64 :=
.seq RemovedBody684_597 RemovedBody684_860

def RemovedBody684_862 : StackLang.HolProg 64 :=
.seq RemovedBody684_596 RemovedBody684_861

def RemovedBody684_863 : StackLang.HolProg 64 :=
.seq RemovedBody684_537 RemovedBody684_862

def RemovedBody684_864 : StackLang.HolProg 64 :=
.seq RemovedBody684_494 RemovedBody684_863

def RemovedBody684_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody684_867 : StackLang.HolProg 64 :=
.seq RemovedBody684_865 RemovedBody684_866

def RemovedBody684_868 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody684_864 RemovedBody684_867

def RemovedBody684_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody684_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody684_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody684_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody684_878 : StackLang.HolProg 64 :=
.seq RemovedBody684_876 RemovedBody684_877

def RemovedBody684_879 : StackLang.HolProg 64 :=
.seq RemovedBody684_875 RemovedBody684_878

def RemovedBody684_880 : StackLang.HolProg 64 :=
.seq RemovedBody684_874 RemovedBody684_879

def RemovedBody684_881 : StackLang.HolProg 64 :=
.seq RemovedBody684_873 RemovedBody684_880

def RemovedBody684_882 : StackLang.HolProg 64 :=
.seq RemovedBody684_872 RemovedBody684_881

def RemovedBody684_883 : StackLang.HolProg 64 :=
.seq RemovedBody684_871 RemovedBody684_882

def RemovedBody684_884 : StackLang.HolProg 64 :=
.seq RemovedBody684_870 RemovedBody684_883

def RemovedBody684_885 : StackLang.HolProg 64 :=
.seq RemovedBody684_869 RemovedBody684_884

def RemovedBody684_886 : StackLang.HolProg 64 :=
.seq RemovedBody684_868 RemovedBody684_885

def RemovedBody684_887 : StackLang.HolProg 64 :=
.seq RemovedBody684_493 RemovedBody684_886

def RemovedBody684_888 : StackLang.HolProg 64 :=
.loop RemovedBody684_887

def RemovedBody684_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody684_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody684_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_895 : StackLang.HolProg 64 :=
.seq RemovedBody684_893 RemovedBody684_894

def RemovedBody684_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody684_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_898 : StackLang.HolProg 64 :=
.seq RemovedBody684_896 RemovedBody684_897

def RemovedBody684_899 : StackLang.HolProg 64 :=
.seq RemovedBody684_895 RemovedBody684_898

def RemovedBody684_900 : StackLang.HolProg 64 :=
.seq RemovedBody684_892 RemovedBody684_899

def RemovedBody684_901 : StackLang.HolProg 64 :=
.seq RemovedBody684_891 RemovedBody684_900

def RemovedBody684_902 : StackLang.HolProg 64 :=
.seq RemovedBody684_890 RemovedBody684_901

def RemovedBody684_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2885#64)

def RemovedBody684_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_906 : StackLang.HolProg 64 :=
.seq RemovedBody684_904 RemovedBody684_905

def RemovedBody684_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody684_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody684_910 : StackLang.HolProg 64 :=
.seq RemovedBody684_908 RemovedBody684_909

def RemovedBody684_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_912 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody684_910 RemovedBody684_911

def RemovedBody684_913 : StackLang.HolProg 64 :=
.seq RemovedBody684_907 RemovedBody684_912

def RemovedBody684_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody684_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 684 21

def RemovedBody684_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody684_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody684_923 : StackLang.HolProg 64 :=
.seq RemovedBody684_921 RemovedBody684_922

def RemovedBody684_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody684_925 : StackLang.HolProg 64 :=
.seq RemovedBody684_923 RemovedBody684_924

def RemovedBody684_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_927 : StackLang.HolProg 64 :=
.seq RemovedBody684_925 RemovedBody684_926

def RemovedBody684_928 : StackLang.HolProg 64 :=
.seq RemovedBody684_920 RemovedBody684_927

def RemovedBody684_929 : StackLang.HolProg 64 :=
.seq RemovedBody684_919 RemovedBody684_928

def RemovedBody684_930 : StackLang.HolProg 64 :=
.seq RemovedBody684_918 RemovedBody684_929

def RemovedBody684_931 : StackLang.HolProg 64 :=
.seq RemovedBody684_917 RemovedBody684_930

def RemovedBody684_932 : StackLang.HolProg 64 :=
.seq RemovedBody684_916 RemovedBody684_931

def RemovedBody684_933 : StackLang.HolProg 64 :=
.seq RemovedBody684_915 RemovedBody684_932

def RemovedBody684_934 : StackLang.HolProg 64 :=
.seq RemovedBody684_914 RemovedBody684_933

def RemovedBody684_935 : StackLang.HolProg 64 :=
.seq RemovedBody684_913 RemovedBody684_934

def RemovedBody684_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_943 : StackLang.HolProg 64 :=
.seq RemovedBody684_941 RemovedBody684_942

def RemovedBody684_944 : StackLang.HolProg 64 :=
.seq RemovedBody684_940 RemovedBody684_943

def RemovedBody684_945 : StackLang.HolProg 64 :=
.seq RemovedBody684_939 RemovedBody684_944

def RemovedBody684_946 : StackLang.HolProg 64 :=
.seq RemovedBody684_938 RemovedBody684_945

def RemovedBody684_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody684_948 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody684_949 : StackLang.HolProg 64 :=
.seq RemovedBody684_947 RemovedBody684_948

def RemovedBody684_950 : StackLang.HolProg 64 :=
.call (some (RemovedBody684_946, 0, 684, 20)) (Sum.inl 77) (some (RemovedBody684_949, 684, 21))

def RemovedBody684_951 : StackLang.HolProg 64 :=
.seq RemovedBody684_937 RemovedBody684_950

def RemovedBody684_952 : StackLang.HolProg 64 :=
.seq RemovedBody684_936 RemovedBody684_951

def RemovedBody684_953 : StackLang.HolProg 64 :=
.seq RemovedBody684_935 RemovedBody684_952

def RemovedBody684_954 : StackLang.HolProg 64 :=
.seq RemovedBody684_906 RemovedBody684_953

def RemovedBody684_955 : StackLang.HolProg 64 :=
.seq RemovedBody684_903 RemovedBody684_954

def RemovedBody684_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody684_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2886#64)

def RemovedBody684_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_961 : StackLang.HolProg 64 :=
.seq RemovedBody684_959 RemovedBody684_960

def RemovedBody684_962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody684_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody684_965 : StackLang.HolProg 64 :=
.seq RemovedBody684_963 RemovedBody684_964

def RemovedBody684_966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_967 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody684_965 RemovedBody684_966

def RemovedBody684_968 : StackLang.HolProg 64 :=
.seq RemovedBody684_962 RemovedBody684_967

def RemovedBody684_969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody684_970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody684_971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 684 23

def RemovedBody684_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody684_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody684_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody684_978 : StackLang.HolProg 64 :=
.seq RemovedBody684_976 RemovedBody684_977

def RemovedBody684_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody684_980 : StackLang.HolProg 64 :=
.seq RemovedBody684_978 RemovedBody684_979

def RemovedBody684_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_982 : StackLang.HolProg 64 :=
.seq RemovedBody684_980 RemovedBody684_981

def RemovedBody684_983 : StackLang.HolProg 64 :=
.seq RemovedBody684_975 RemovedBody684_982

def RemovedBody684_984 : StackLang.HolProg 64 :=
.seq RemovedBody684_974 RemovedBody684_983

def RemovedBody684_985 : StackLang.HolProg 64 :=
.seq RemovedBody684_973 RemovedBody684_984

def RemovedBody684_986 : StackLang.HolProg 64 :=
.seq RemovedBody684_972 RemovedBody684_985

def RemovedBody684_987 : StackLang.HolProg 64 :=
.seq RemovedBody684_971 RemovedBody684_986

def RemovedBody684_988 : StackLang.HolProg 64 :=
.seq RemovedBody684_970 RemovedBody684_987

def RemovedBody684_989 : StackLang.HolProg 64 :=
.seq RemovedBody684_969 RemovedBody684_988

def RemovedBody684_990 : StackLang.HolProg 64 :=
.seq RemovedBody684_968 RemovedBody684_989

def RemovedBody684_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody684_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody684_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody684_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_998 : StackLang.HolProg 64 :=
.seq RemovedBody684_996 RemovedBody684_997

def RemovedBody684_999 : StackLang.HolProg 64 :=
.seq RemovedBody684_995 RemovedBody684_998

def RemovedBody684_1000 : StackLang.HolProg 64 :=
.seq RemovedBody684_994 RemovedBody684_999

def RemovedBody684_1001 : StackLang.HolProg 64 :=
.seq RemovedBody684_993 RemovedBody684_1000

def RemovedBody684_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody684_1003 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody684_1004 : StackLang.HolProg 64 :=
.seq RemovedBody684_1002 RemovedBody684_1003

def RemovedBody684_1005 : StackLang.HolProg 64 :=
.call (some (RemovedBody684_1001, 0, 684, 22)) (Sum.inl 70) (some (RemovedBody684_1004, 684, 23))

def RemovedBody684_1006 : StackLang.HolProg 64 :=
.seq RemovedBody684_992 RemovedBody684_1005

def RemovedBody684_1007 : StackLang.HolProg 64 :=
.seq RemovedBody684_991 RemovedBody684_1006

def RemovedBody684_1008 : StackLang.HolProg 64 :=
.seq RemovedBody684_990 RemovedBody684_1007

def RemovedBody684_1009 : StackLang.HolProg 64 :=
.seq RemovedBody684_961 RemovedBody684_1008

def RemovedBody684_1010 : StackLang.HolProg 64 :=
.seq RemovedBody684_958 RemovedBody684_1009

def RemovedBody684_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody684_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody684_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody684_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody684_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody684_1016 : StackLang.HolProg 64 :=
.seq RemovedBody684_1014 RemovedBody684_1015

def RemovedBody684_1017 : StackLang.HolProg 64 :=
.seq RemovedBody684_1013 RemovedBody684_1016

def RemovedBody684_1018 : StackLang.HolProg 64 :=
.seq RemovedBody684_1012 RemovedBody684_1017

def RemovedBody684_1019 : StackLang.HolProg 64 :=
.seq RemovedBody684_1011 RemovedBody684_1018

def RemovedBody684_1020 : StackLang.HolProg 64 :=
.seq RemovedBody684_1010 RemovedBody684_1019

def RemovedBody684_1021 : StackLang.HolProg 64 :=
.seq RemovedBody684_957 RemovedBody684_1020

def RemovedBody684_1022 : StackLang.HolProg 64 :=
.seq RemovedBody684_956 RemovedBody684_1021

def RemovedBody684_1023 : StackLang.HolProg 64 :=
.seq RemovedBody684_955 RemovedBody684_1022

def RemovedBody684_1024 : StackLang.HolProg 64 :=
.seq RemovedBody684_902 RemovedBody684_1023

def RemovedBody684_1025 : StackLang.HolProg 64 :=
.seq RemovedBody684_889 RemovedBody684_1024

def RemovedBody684_1026 : StackLang.HolProg 64 :=
.seq RemovedBody684_888 RemovedBody684_1025

def RemovedBody684_1027 : StackLang.HolProg 64 :=
.seq RemovedBody684_492 RemovedBody684_1026

def RemovedBody684_1028 : StackLang.HolProg 64 :=
.seq RemovedBody684_491 RemovedBody684_1027

def RemovedBody684_1029 : StackLang.HolProg 64 :=
.seq RemovedBody684_490 RemovedBody684_1028

def RemovedBody684_1030 : StackLang.HolProg 64 :=
.seq RemovedBody684_489 RemovedBody684_1029

def RemovedBody684_1031 : StackLang.HolProg 64 :=
.seq RemovedBody684_488 RemovedBody684_1030

def RemovedBody684_1032 : StackLang.HolProg 64 :=
.seq RemovedBody684_373 RemovedBody684_1031

def RemovedBody684_1033 : StackLang.HolProg 64 :=
.seq RemovedBody684_364 RemovedBody684_1032

def RemovedBody684_1034 : StackLang.HolProg 64 :=
.seq RemovedBody684_363 RemovedBody684_1033

def RemovedBody684_1035 : StackLang.HolProg 64 :=
.seq RemovedBody684_298 RemovedBody684_1034

def RemovedBody684_1036 : StackLang.HolProg 64 :=
.seq RemovedBody684_291 RemovedBody684_1035

def RemovedBody684_1037 : StackLang.HolProg 64 :=
.seq RemovedBody684_290 RemovedBody684_1036

def RemovedBody684_1038 : StackLang.HolProg 64 :=
.seq RemovedBody684_229 RemovedBody684_1037

def RemovedBody684_1039 : StackLang.HolProg 64 :=
.seq RemovedBody684_222 RemovedBody684_1038

def RemovedBody684_1040 : StackLang.HolProg 64 :=
.seq RemovedBody684_221 RemovedBody684_1039

def RemovedBody684_1041 : StackLang.HolProg 64 :=
.seq RemovedBody684_154 RemovedBody684_1040

def RemovedBody684_1042 : StackLang.HolProg 64 :=
.seq RemovedBody684_149 RemovedBody684_1041

def RemovedBody684_1043 : StackLang.HolProg 64 :=
.seq RemovedBody684_148 RemovedBody684_1042

def RemovedBody684_1044 : StackLang.HolProg 64 :=
.seq RemovedBody684_93 RemovedBody684_1043

def RemovedBody684_1045 : StackLang.HolProg 64 :=
.seq RemovedBody684_88 RemovedBody684_1044

def RemovedBody684_1046 : StackLang.HolProg 64 :=
.seq RemovedBody684_87 RemovedBody684_1045

def RemovedBody684_1047 : StackLang.HolProg 64 :=
.seq RemovedBody684_32 RemovedBody684_1046

def RemovedBody684_1048 : StackLang.HolProg 64 :=
.seq RemovedBody684_15 RemovedBody684_1047

def RemovedBody684_1049 : StackLang.HolProg 64 :=
.seq RemovedBody684_14 RemovedBody684_1048

def RemovedBody684_1050 : StackLang.HolProg 64 :=
.seq RemovedBody684_13 RemovedBody684_1049

def RemovedBody684_1051 : StackLang.HolProg 64 :=
.seq RemovedBody684_12 RemovedBody684_1050

def RemovedBody684_1052 : StackLang.HolProg 64 :=
.seq RemovedBody684_11 RemovedBody684_1051

def RemovedBody684_1053 : StackLang.HolProg 64 :=
.seq RemovedBody684_6 RemovedBody684_1052

def Removed684 : Nat × StackLang.HolProg 64 := (684, RemovedBody684_1053)
theorem Removed684_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc684 = Removed684 := by
  kernel_rfl
#print axioms Removed684_eq
end InitECandidate.Proofs.BackendStages
