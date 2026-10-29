import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc807
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody807_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody807_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody807_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody807_3 : StackLang.HolProg 64 :=
.seq RemovedBody807_1 RemovedBody807_2

def RemovedBody807_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody807_3 RemovedBody807_4

def RemovedBody807_6 : StackLang.HolProg 64 :=
.seq RemovedBody807_0 RemovedBody807_5

def RemovedBody807_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody807_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody807_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody807_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody807_11 : StackLang.HolProg 64 :=
.seq RemovedBody807_9 RemovedBody807_10

def RemovedBody807_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3954#64)

def RemovedBody807_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody807_15 : StackLang.HolProg 64 :=
.seq RemovedBody807_13 RemovedBody807_14

def RemovedBody807_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody807_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody807_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody807_19 : StackLang.HolProg 64 :=
.seq RemovedBody807_17 RemovedBody807_18

def RemovedBody807_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody807_19 RemovedBody807_20

def RemovedBody807_22 : StackLang.HolProg 64 :=
.seq RemovedBody807_16 RemovedBody807_21

def RemovedBody807_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody807_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody807_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 807 3

def RemovedBody807_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody807_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody807_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody807_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody807_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody807_32 : StackLang.HolProg 64 :=
.seq RemovedBody807_30 RemovedBody807_31

def RemovedBody807_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody807_34 : StackLang.HolProg 64 :=
.seq RemovedBody807_32 RemovedBody807_33

def RemovedBody807_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody807_36 : StackLang.HolProg 64 :=
.seq RemovedBody807_34 RemovedBody807_35

def RemovedBody807_37 : StackLang.HolProg 64 :=
.seq RemovedBody807_29 RemovedBody807_36

def RemovedBody807_38 : StackLang.HolProg 64 :=
.seq RemovedBody807_28 RemovedBody807_37

def RemovedBody807_39 : StackLang.HolProg 64 :=
.seq RemovedBody807_27 RemovedBody807_38

def RemovedBody807_40 : StackLang.HolProg 64 :=
.seq RemovedBody807_26 RemovedBody807_39

def RemovedBody807_41 : StackLang.HolProg 64 :=
.seq RemovedBody807_25 RemovedBody807_40

def RemovedBody807_42 : StackLang.HolProg 64 :=
.seq RemovedBody807_24 RemovedBody807_41

def RemovedBody807_43 : StackLang.HolProg 64 :=
.seq RemovedBody807_23 RemovedBody807_42

def RemovedBody807_44 : StackLang.HolProg 64 :=
.seq RemovedBody807_22 RemovedBody807_43

def RemovedBody807_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody807_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody807_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody807_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody807_52 : StackLang.HolProg 64 :=
.seq RemovedBody807_50 RemovedBody807_51

def RemovedBody807_53 : StackLang.HolProg 64 :=
.seq RemovedBody807_49 RemovedBody807_52

def RemovedBody807_54 : StackLang.HolProg 64 :=
.seq RemovedBody807_48 RemovedBody807_53

def RemovedBody807_55 : StackLang.HolProg 64 :=
.seq RemovedBody807_47 RemovedBody807_54

def RemovedBody807_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody807_58 : StackLang.HolProg 64 :=
.seq RemovedBody807_56 RemovedBody807_57

def RemovedBody807_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody807_55, 0, 807, 2)) (Sum.inl 146) (some (RemovedBody807_58, 807, 3))

def RemovedBody807_60 : StackLang.HolProg 64 :=
.seq RemovedBody807_46 RemovedBody807_59

def RemovedBody807_61 : StackLang.HolProg 64 :=
.seq RemovedBody807_45 RemovedBody807_60

def RemovedBody807_62 : StackLang.HolProg 64 :=
.seq RemovedBody807_44 RemovedBody807_61

def RemovedBody807_63 : StackLang.HolProg 64 :=
.seq RemovedBody807_15 RemovedBody807_62

def RemovedBody807_64 : StackLang.HolProg 64 :=
.seq RemovedBody807_12 RemovedBody807_63

def RemovedBody807_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody807_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody807_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody807_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody807_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def RemovedBody807_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 1344#64))

def RemovedBody807_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 1352#64))

def RemovedBody807_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 1360#64))

def RemovedBody807_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 1368#64))

def RemovedBody807_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody807_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody807_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody807_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody807_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody807_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody807_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody807_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody807_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody807_86 : StackLang.HolProg 64 :=
.seq RemovedBody807_84 RemovedBody807_85

def RemovedBody807_87 : StackLang.HolProg 64 :=
.seq RemovedBody807_83 RemovedBody807_86

def RemovedBody807_88 : StackLang.HolProg 64 :=
.seq RemovedBody807_82 RemovedBody807_87

def RemovedBody807_89 : StackLang.HolProg 64 :=
.seq RemovedBody807_81 RemovedBody807_88

def RemovedBody807_90 : StackLang.HolProg 64 :=
.seq RemovedBody807_80 RemovedBody807_89

def RemovedBody807_91 : StackLang.HolProg 64 :=
.seq RemovedBody807_79 RemovedBody807_90

def RemovedBody807_92 : StackLang.HolProg 64 :=
.seq RemovedBody807_78 RemovedBody807_91

def RemovedBody807_93 : StackLang.HolProg 64 :=
.seq RemovedBody807_77 RemovedBody807_92

def RemovedBody807_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3955#64)

def RemovedBody807_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody807_97 : StackLang.HolProg 64 :=
.seq RemovedBody807_95 RemovedBody807_96

def RemovedBody807_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody807_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody807_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody807_101 : StackLang.HolProg 64 :=
.seq RemovedBody807_99 RemovedBody807_100

def RemovedBody807_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody807_101 RemovedBody807_102

def RemovedBody807_104 : StackLang.HolProg 64 :=
.seq RemovedBody807_98 RemovedBody807_103

def RemovedBody807_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody807_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody807_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 807 5

def RemovedBody807_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody807_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody807_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody807_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody807_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody807_114 : StackLang.HolProg 64 :=
.seq RemovedBody807_112 RemovedBody807_113

def RemovedBody807_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody807_116 : StackLang.HolProg 64 :=
.seq RemovedBody807_114 RemovedBody807_115

def RemovedBody807_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody807_118 : StackLang.HolProg 64 :=
.seq RemovedBody807_116 RemovedBody807_117

def RemovedBody807_119 : StackLang.HolProg 64 :=
.seq RemovedBody807_111 RemovedBody807_118

def RemovedBody807_120 : StackLang.HolProg 64 :=
.seq RemovedBody807_110 RemovedBody807_119

def RemovedBody807_121 : StackLang.HolProg 64 :=
.seq RemovedBody807_109 RemovedBody807_120

def RemovedBody807_122 : StackLang.HolProg 64 :=
.seq RemovedBody807_108 RemovedBody807_121

def RemovedBody807_123 : StackLang.HolProg 64 :=
.seq RemovedBody807_107 RemovedBody807_122

def RemovedBody807_124 : StackLang.HolProg 64 :=
.seq RemovedBody807_106 RemovedBody807_123

def RemovedBody807_125 : StackLang.HolProg 64 :=
.seq RemovedBody807_105 RemovedBody807_124

def RemovedBody807_126 : StackLang.HolProg 64 :=
.seq RemovedBody807_104 RemovedBody807_125

def RemovedBody807_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody807_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody807_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody807_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody807_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody807_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody807_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody807_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody807_138 : StackLang.HolProg 64 :=
.seq RemovedBody807_136 RemovedBody807_137

def RemovedBody807_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody807_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody807_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody807_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody807_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody807_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody807_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody807_146 : StackLang.HolProg 64 :=
.seq RemovedBody807_144 RemovedBody807_145

def RemovedBody807_147 : StackLang.HolProg 64 :=
.seq RemovedBody807_143 RemovedBody807_146

def RemovedBody807_148 : StackLang.HolProg 64 :=
.seq RemovedBody807_142 RemovedBody807_147

def RemovedBody807_149 : StackLang.HolProg 64 :=
.seq RemovedBody807_141 RemovedBody807_148

def RemovedBody807_150 : StackLang.HolProg 64 :=
.seq RemovedBody807_140 RemovedBody807_149

def RemovedBody807_151 : StackLang.HolProg 64 :=
.seq RemovedBody807_139 RemovedBody807_150

def RemovedBody807_152 : StackLang.HolProg 64 :=
.seq RemovedBody807_138 RemovedBody807_151

def RemovedBody807_153 : StackLang.HolProg 64 :=
.seq RemovedBody807_135 RemovedBody807_152

def RemovedBody807_154 : StackLang.HolProg 64 :=
.seq RemovedBody807_134 RemovedBody807_153

def RemovedBody807_155 : StackLang.HolProg 64 :=
.seq RemovedBody807_133 RemovedBody807_154

def RemovedBody807_156 : StackLang.HolProg 64 :=
.seq RemovedBody807_132 RemovedBody807_155

def RemovedBody807_157 : StackLang.HolProg 64 :=
.seq RemovedBody807_131 RemovedBody807_156

def RemovedBody807_158 : StackLang.HolProg 64 :=
.seq RemovedBody807_130 RemovedBody807_157

def RemovedBody807_159 : StackLang.HolProg 64 :=
.seq RemovedBody807_129 RemovedBody807_158

def RemovedBody807_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody807_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody807_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody807_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody807_164 : StackLang.HolProg 64 :=
.seq RemovedBody807_162 RemovedBody807_163

def RemovedBody807_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody807_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody807_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody807_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody807_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody807_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody807_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody807_172 : StackLang.HolProg 64 :=
.seq RemovedBody807_170 RemovedBody807_171

def RemovedBody807_173 : StackLang.HolProg 64 :=
.seq RemovedBody807_169 RemovedBody807_172

def RemovedBody807_174 : StackLang.HolProg 64 :=
.seq RemovedBody807_168 RemovedBody807_173

def RemovedBody807_175 : StackLang.HolProg 64 :=
.seq RemovedBody807_167 RemovedBody807_174

def RemovedBody807_176 : StackLang.HolProg 64 :=
.seq RemovedBody807_166 RemovedBody807_175

def RemovedBody807_177 : StackLang.HolProg 64 :=
.seq RemovedBody807_165 RemovedBody807_176

def RemovedBody807_178 : StackLang.HolProg 64 :=
.seq RemovedBody807_164 RemovedBody807_177

def RemovedBody807_179 : StackLang.HolProg 64 :=
.seq RemovedBody807_161 RemovedBody807_178

def RemovedBody807_180 : StackLang.HolProg 64 :=
.seq RemovedBody807_160 RemovedBody807_179

def RemovedBody807_181 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody807_182 : StackLang.HolProg 64 :=
.seq RemovedBody807_180 RemovedBody807_181

def RemovedBody807_183 : StackLang.HolProg 64 :=
.call (some (RemovedBody807_159, 0, 807, 4)) (Sum.inl 102) (some (RemovedBody807_182, 807, 5))

def RemovedBody807_184 : StackLang.HolProg 64 :=
.seq RemovedBody807_128 RemovedBody807_183

def RemovedBody807_185 : StackLang.HolProg 64 :=
.seq RemovedBody807_127 RemovedBody807_184

def RemovedBody807_186 : StackLang.HolProg 64 :=
.seq RemovedBody807_126 RemovedBody807_185

def RemovedBody807_187 : StackLang.HolProg 64 :=
.seq RemovedBody807_97 RemovedBody807_186

def RemovedBody807_188 : StackLang.HolProg 64 :=
.seq RemovedBody807_94 RemovedBody807_187

def RemovedBody807_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody807_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody807_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody807_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody807_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody807_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody807_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody807_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody807_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody807_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody807_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody807_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody807_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody807_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody807_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def RemovedBody807_210 : StackLang.HolProg 64 :=
.seq RemovedBody807_208 RemovedBody807_209

def RemovedBody807_211 : StackLang.HolProg 64 :=
.seq RemovedBody807_207 RemovedBody807_210

def RemovedBody807_212 : StackLang.HolProg 64 :=
.seq RemovedBody807_206 RemovedBody807_211

def RemovedBody807_213 : StackLang.HolProg 64 :=
.seq RemovedBody807_205 RemovedBody807_212

def RemovedBody807_214 : StackLang.HolProg 64 :=
.seq RemovedBody807_204 RemovedBody807_213

def RemovedBody807_215 : StackLang.HolProg 64 :=
.seq RemovedBody807_203 RemovedBody807_214

def RemovedBody807_216 : StackLang.HolProg 64 :=
.seq RemovedBody807_202 RemovedBody807_215

def RemovedBody807_217 : StackLang.HolProg 64 :=
.seq RemovedBody807_201 RemovedBody807_216

def RemovedBody807_218 : StackLang.HolProg 64 :=
.seq RemovedBody807_200 RemovedBody807_217

def RemovedBody807_219 : StackLang.HolProg 64 :=
.seq RemovedBody807_199 RemovedBody807_218

def RemovedBody807_220 : StackLang.HolProg 64 :=
.seq RemovedBody807_198 RemovedBody807_219

def RemovedBody807_221 : StackLang.HolProg 64 :=
.seq RemovedBody807_197 RemovedBody807_220

def RemovedBody807_222 : StackLang.HolProg 64 :=
.seq RemovedBody807_196 RemovedBody807_221

def RemovedBody807_223 : StackLang.HolProg 64 :=
.seq RemovedBody807_195 RemovedBody807_222

def RemovedBody807_224 : StackLang.HolProg 64 :=
.seq RemovedBody807_194 RemovedBody807_223

def RemovedBody807_225 : StackLang.HolProg 64 :=
.seq RemovedBody807_193 RemovedBody807_224

def RemovedBody807_226 : StackLang.HolProg 64 :=
.seq RemovedBody807_192 RemovedBody807_225

def RemovedBody807_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody807_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody807_229 : StackLang.HolProg 64 :=
.seq RemovedBody807_227 RemovedBody807_228

def RemovedBody807_230 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody807_226 RemovedBody807_229

def RemovedBody807_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody807_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody807_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody807_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody807_235 : StackLang.HolProg 64 :=
.seq RemovedBody807_233 RemovedBody807_234

def RemovedBody807_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3956#64)

def RemovedBody807_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody807_239 : StackLang.HolProg 64 :=
.seq RemovedBody807_237 RemovedBody807_238

def RemovedBody807_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody807_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody807_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody807_243 : StackLang.HolProg 64 :=
.seq RemovedBody807_241 RemovedBody807_242

def RemovedBody807_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_245 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody807_243 RemovedBody807_244

def RemovedBody807_246 : StackLang.HolProg 64 :=
.seq RemovedBody807_240 RemovedBody807_245

def RemovedBody807_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody807_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody807_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 807 7

def RemovedBody807_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody807_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody807_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody807_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody807_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody807_256 : StackLang.HolProg 64 :=
.seq RemovedBody807_254 RemovedBody807_255

def RemovedBody807_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody807_258 : StackLang.HolProg 64 :=
.seq RemovedBody807_256 RemovedBody807_257

def RemovedBody807_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody807_260 : StackLang.HolProg 64 :=
.seq RemovedBody807_258 RemovedBody807_259

def RemovedBody807_261 : StackLang.HolProg 64 :=
.seq RemovedBody807_253 RemovedBody807_260

def RemovedBody807_262 : StackLang.HolProg 64 :=
.seq RemovedBody807_252 RemovedBody807_261

def RemovedBody807_263 : StackLang.HolProg 64 :=
.seq RemovedBody807_251 RemovedBody807_262

def RemovedBody807_264 : StackLang.HolProg 64 :=
.seq RemovedBody807_250 RemovedBody807_263

def RemovedBody807_265 : StackLang.HolProg 64 :=
.seq RemovedBody807_249 RemovedBody807_264

def RemovedBody807_266 : StackLang.HolProg 64 :=
.seq RemovedBody807_248 RemovedBody807_265

def RemovedBody807_267 : StackLang.HolProg 64 :=
.seq RemovedBody807_247 RemovedBody807_266

def RemovedBody807_268 : StackLang.HolProg 64 :=
.seq RemovedBody807_246 RemovedBody807_267

def RemovedBody807_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody807_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody807_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody807_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody807_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody807_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody807_278 : StackLang.HolProg 64 :=
.seq RemovedBody807_276 RemovedBody807_277

def RemovedBody807_279 : StackLang.HolProg 64 :=
.seq RemovedBody807_275 RemovedBody807_278

def RemovedBody807_280 : StackLang.HolProg 64 :=
.seq RemovedBody807_274 RemovedBody807_279

def RemovedBody807_281 : StackLang.HolProg 64 :=
.seq RemovedBody807_273 RemovedBody807_280

def RemovedBody807_282 : StackLang.HolProg 64 :=
.seq RemovedBody807_272 RemovedBody807_281

def RemovedBody807_283 : StackLang.HolProg 64 :=
.seq RemovedBody807_271 RemovedBody807_282

def RemovedBody807_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody807_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody807_286 : StackLang.HolProg 64 :=
.seq RemovedBody807_284 RemovedBody807_285

def RemovedBody807_287 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody807_288 : StackLang.HolProg 64 :=
.seq RemovedBody807_286 RemovedBody807_287

def RemovedBody807_289 : StackLang.HolProg 64 :=
.call (some (RemovedBody807_283, 0, 807, 6)) (Sum.inl 117) (some (RemovedBody807_288, 807, 7))

def RemovedBody807_290 : StackLang.HolProg 64 :=
.seq RemovedBody807_270 RemovedBody807_289

def RemovedBody807_291 : StackLang.HolProg 64 :=
.seq RemovedBody807_269 RemovedBody807_290

def RemovedBody807_292 : StackLang.HolProg 64 :=
.seq RemovedBody807_268 RemovedBody807_291

def RemovedBody807_293 : StackLang.HolProg 64 :=
.seq RemovedBody807_239 RemovedBody807_292

def RemovedBody807_294 : StackLang.HolProg 64 :=
.seq RemovedBody807_236 RemovedBody807_293

def RemovedBody807_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody807_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody807_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody807_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody807_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody807_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody807_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody807_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody807_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody807_308 : StackLang.HolProg 64 :=
.seq RemovedBody807_306 RemovedBody807_307

def RemovedBody807_309 : StackLang.HolProg 64 :=
.seq RemovedBody807_305 RemovedBody807_308

def RemovedBody807_310 : StackLang.HolProg 64 :=
.seq RemovedBody807_304 RemovedBody807_309

def RemovedBody807_311 : StackLang.HolProg 64 :=
.seq RemovedBody807_303 RemovedBody807_310

def RemovedBody807_312 : StackLang.HolProg 64 :=
.seq RemovedBody807_302 RemovedBody807_311

def RemovedBody807_313 : StackLang.HolProg 64 :=
.seq RemovedBody807_301 RemovedBody807_312

def RemovedBody807_314 : StackLang.HolProg 64 :=
.seq RemovedBody807_300 RemovedBody807_313

def RemovedBody807_315 : StackLang.HolProg 64 :=
.seq RemovedBody807_299 RemovedBody807_314

def RemovedBody807_316 : StackLang.HolProg 64 :=
.seq RemovedBody807_298 RemovedBody807_315

def RemovedBody807_317 : StackLang.HolProg 64 :=
.seq RemovedBody807_297 RemovedBody807_316

def RemovedBody807_318 : StackLang.HolProg 64 :=
.seq RemovedBody807_296 RemovedBody807_317

def RemovedBody807_319 : StackLang.HolProg 64 :=
.seq RemovedBody807_295 RemovedBody807_318

def RemovedBody807_320 : StackLang.HolProg 64 :=
.seq RemovedBody807_294 RemovedBody807_319

def RemovedBody807_321 : StackLang.HolProg 64 :=
.seq RemovedBody807_235 RemovedBody807_320

def RemovedBody807_322 : StackLang.HolProg 64 :=
.seq RemovedBody807_232 RemovedBody807_321

def RemovedBody807_323 : StackLang.HolProg 64 :=
.seq RemovedBody807_231 RemovedBody807_322

def RemovedBody807_324 : StackLang.HolProg 64 :=
.seq RemovedBody807_230 RemovedBody807_323

def RemovedBody807_325 : StackLang.HolProg 64 :=
.seq RemovedBody807_191 RemovedBody807_324

def RemovedBody807_326 : StackLang.HolProg 64 :=
.seq RemovedBody807_190 RemovedBody807_325

def RemovedBody807_327 : StackLang.HolProg 64 :=
.seq RemovedBody807_189 RemovedBody807_326

def RemovedBody807_328 : StackLang.HolProg 64 :=
.seq RemovedBody807_188 RemovedBody807_327

def RemovedBody807_329 : StackLang.HolProg 64 :=
.seq RemovedBody807_93 RemovedBody807_328

def RemovedBody807_330 : StackLang.HolProg 64 :=
.seq RemovedBody807_76 RemovedBody807_329

def RemovedBody807_331 : StackLang.HolProg 64 :=
.seq RemovedBody807_75 RemovedBody807_330

def RemovedBody807_332 : StackLang.HolProg 64 :=
.seq RemovedBody807_74 RemovedBody807_331

def RemovedBody807_333 : StackLang.HolProg 64 :=
.seq RemovedBody807_73 RemovedBody807_332

def RemovedBody807_334 : StackLang.HolProg 64 :=
.seq RemovedBody807_72 RemovedBody807_333

def RemovedBody807_335 : StackLang.HolProg 64 :=
.seq RemovedBody807_71 RemovedBody807_334

def RemovedBody807_336 : StackLang.HolProg 64 :=
.seq RemovedBody807_70 RemovedBody807_335

def RemovedBody807_337 : StackLang.HolProg 64 :=
.seq RemovedBody807_69 RemovedBody807_336

def RemovedBody807_338 : StackLang.HolProg 64 :=
.seq RemovedBody807_68 RemovedBody807_337

def RemovedBody807_339 : StackLang.HolProg 64 :=
.seq RemovedBody807_67 RemovedBody807_338

def RemovedBody807_340 : StackLang.HolProg 64 :=
.seq RemovedBody807_66 RemovedBody807_339

def RemovedBody807_341 : StackLang.HolProg 64 :=
.seq RemovedBody807_65 RemovedBody807_340

def RemovedBody807_342 : StackLang.HolProg 64 :=
.seq RemovedBody807_64 RemovedBody807_341

def RemovedBody807_343 : StackLang.HolProg 64 :=
.seq RemovedBody807_11 RemovedBody807_342

def RemovedBody807_344 : StackLang.HolProg 64 :=
.seq RemovedBody807_8 RemovedBody807_343

def RemovedBody807_345 : StackLang.HolProg 64 :=
.seq RemovedBody807_7 RemovedBody807_344

def RemovedBody807_346 : StackLang.HolProg 64 :=
.seq RemovedBody807_6 RemovedBody807_345

def Removed807 : Nat × StackLang.HolProg 64 := (807, RemovedBody807_346)
theorem Removed807_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc807 = Removed807 := by
  kernel_rfl
#print axioms Removed807_eq
end InitECandidate.Proofs.BackendStages
