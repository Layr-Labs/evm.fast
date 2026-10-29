import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc831
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody831_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody831_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody831_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody831_3 : StackLang.HolProg 64 :=
.seq RemovedBody831_1 RemovedBody831_2

def RemovedBody831_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody831_3 RemovedBody831_4

def RemovedBody831_6 : StackLang.HolProg 64 :=
.seq RemovedBody831_0 RemovedBody831_5

def RemovedBody831_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody831_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody831_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody831_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody831_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody831_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def RemovedBody831_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody831_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody831_18 : StackLang.HolProg 64 :=
.seq RemovedBody831_16 RemovedBody831_17

def RemovedBody831_19 : StackLang.HolProg 64 :=
.seq RemovedBody831_15 RemovedBody831_18

def RemovedBody831_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4124#64)

def RemovedBody831_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody831_23 : StackLang.HolProg 64 :=
.seq RemovedBody831_21 RemovedBody831_22

def RemovedBody831_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody831_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody831_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody831_27 : StackLang.HolProg 64 :=
.seq RemovedBody831_25 RemovedBody831_26

def RemovedBody831_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody831_27 RemovedBody831_28

def RemovedBody831_30 : StackLang.HolProg 64 :=
.seq RemovedBody831_24 RemovedBody831_29

def RemovedBody831_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody831_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody831_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 831 3

def RemovedBody831_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody831_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody831_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody831_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody831_40 : StackLang.HolProg 64 :=
.seq RemovedBody831_38 RemovedBody831_39

def RemovedBody831_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody831_42 : StackLang.HolProg 64 :=
.seq RemovedBody831_40 RemovedBody831_41

def RemovedBody831_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody831_44 : StackLang.HolProg 64 :=
.seq RemovedBody831_42 RemovedBody831_43

def RemovedBody831_45 : StackLang.HolProg 64 :=
.seq RemovedBody831_37 RemovedBody831_44

def RemovedBody831_46 : StackLang.HolProg 64 :=
.seq RemovedBody831_36 RemovedBody831_45

def RemovedBody831_47 : StackLang.HolProg 64 :=
.seq RemovedBody831_35 RemovedBody831_46

def RemovedBody831_48 : StackLang.HolProg 64 :=
.seq RemovedBody831_34 RemovedBody831_47

def RemovedBody831_49 : StackLang.HolProg 64 :=
.seq RemovedBody831_33 RemovedBody831_48

def RemovedBody831_50 : StackLang.HolProg 64 :=
.seq RemovedBody831_32 RemovedBody831_49

def RemovedBody831_51 : StackLang.HolProg 64 :=
.seq RemovedBody831_31 RemovedBody831_50

def RemovedBody831_52 : StackLang.HolProg 64 :=
.seq RemovedBody831_30 RemovedBody831_51

def RemovedBody831_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody831_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody831_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody831_60 : StackLang.HolProg 64 :=
.seq RemovedBody831_58 RemovedBody831_59

def RemovedBody831_61 : StackLang.HolProg 64 :=
.seq RemovedBody831_57 RemovedBody831_60

def RemovedBody831_62 : StackLang.HolProg 64 :=
.seq RemovedBody831_56 RemovedBody831_61

def RemovedBody831_63 : StackLang.HolProg 64 :=
.seq RemovedBody831_55 RemovedBody831_62

def RemovedBody831_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody831_66 : StackLang.HolProg 64 :=
.seq RemovedBody831_64 RemovedBody831_65

def RemovedBody831_67 : StackLang.HolProg 64 :=
.call (some (RemovedBody831_63, 0, 831, 2)) (Sum.inl 465) (some (RemovedBody831_66, 831, 3))

def RemovedBody831_68 : StackLang.HolProg 64 :=
.seq RemovedBody831_54 RemovedBody831_67

def RemovedBody831_69 : StackLang.HolProg 64 :=
.seq RemovedBody831_53 RemovedBody831_68

def RemovedBody831_70 : StackLang.HolProg 64 :=
.seq RemovedBody831_52 RemovedBody831_69

def RemovedBody831_71 : StackLang.HolProg 64 :=
.seq RemovedBody831_23 RemovedBody831_70

def RemovedBody831_72 : StackLang.HolProg 64 :=
.seq RemovedBody831_20 RemovedBody831_71

def RemovedBody831_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody831_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 12#64)

def RemovedBody831_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody831_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 60#64)))

def RemovedBody831_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4125#64)

def RemovedBody831_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody831_84 : StackLang.HolProg 64 :=
.seq RemovedBody831_82 RemovedBody831_83

def RemovedBody831_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody831_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody831_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody831_88 : StackLang.HolProg 64 :=
.seq RemovedBody831_86 RemovedBody831_87

def RemovedBody831_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody831_88 RemovedBody831_89

def RemovedBody831_91 : StackLang.HolProg 64 :=
.seq RemovedBody831_85 RemovedBody831_90

def RemovedBody831_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody831_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody831_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 831 5

def RemovedBody831_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody831_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody831_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody831_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody831_101 : StackLang.HolProg 64 :=
.seq RemovedBody831_99 RemovedBody831_100

def RemovedBody831_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody831_103 : StackLang.HolProg 64 :=
.seq RemovedBody831_101 RemovedBody831_102

def RemovedBody831_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody831_105 : StackLang.HolProg 64 :=
.seq RemovedBody831_103 RemovedBody831_104

def RemovedBody831_106 : StackLang.HolProg 64 :=
.seq RemovedBody831_98 RemovedBody831_105

def RemovedBody831_107 : StackLang.HolProg 64 :=
.seq RemovedBody831_97 RemovedBody831_106

def RemovedBody831_108 : StackLang.HolProg 64 :=
.seq RemovedBody831_96 RemovedBody831_107

def RemovedBody831_109 : StackLang.HolProg 64 :=
.seq RemovedBody831_95 RemovedBody831_108

def RemovedBody831_110 : StackLang.HolProg 64 :=
.seq RemovedBody831_94 RemovedBody831_109

def RemovedBody831_111 : StackLang.HolProg 64 :=
.seq RemovedBody831_93 RemovedBody831_110

def RemovedBody831_112 : StackLang.HolProg 64 :=
.seq RemovedBody831_92 RemovedBody831_111

def RemovedBody831_113 : StackLang.HolProg 64 :=
.seq RemovedBody831_91 RemovedBody831_112

def RemovedBody831_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody831_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody831_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_121 : StackLang.HolProg 64 :=
.seq RemovedBody831_119 RemovedBody831_120

def RemovedBody831_122 : StackLang.HolProg 64 :=
.seq RemovedBody831_118 RemovedBody831_121

def RemovedBody831_123 : StackLang.HolProg 64 :=
.seq RemovedBody831_117 RemovedBody831_122

def RemovedBody831_124 : StackLang.HolProg 64 :=
.seq RemovedBody831_116 RemovedBody831_123

def RemovedBody831_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody831_127 : StackLang.HolProg 64 :=
.seq RemovedBody831_125 RemovedBody831_126

def RemovedBody831_128 : StackLang.HolProg 64 :=
.call (some (RemovedBody831_124, 0, 831, 4)) (Sum.inl 470) (some (RemovedBody831_127, 831, 5))

def RemovedBody831_129 : StackLang.HolProg 64 :=
.seq RemovedBody831_115 RemovedBody831_128

def RemovedBody831_130 : StackLang.HolProg 64 :=
.seq RemovedBody831_114 RemovedBody831_129

def RemovedBody831_131 : StackLang.HolProg 64 :=
.seq RemovedBody831_113 RemovedBody831_130

def RemovedBody831_132 : StackLang.HolProg 64 :=
.seq RemovedBody831_84 RemovedBody831_131

def RemovedBody831_133 : StackLang.HolProg 64 :=
.seq RemovedBody831_81 RemovedBody831_132

def RemovedBody831_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody831_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody831_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4126#64)

def RemovedBody831_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody831_140 : StackLang.HolProg 64 :=
.seq RemovedBody831_138 RemovedBody831_139

def RemovedBody831_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody831_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody831_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody831_144 : StackLang.HolProg 64 :=
.seq RemovedBody831_142 RemovedBody831_143

def RemovedBody831_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody831_144 RemovedBody831_145

def RemovedBody831_147 : StackLang.HolProg 64 :=
.seq RemovedBody831_141 RemovedBody831_146

def RemovedBody831_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody831_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody831_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 831 7

def RemovedBody831_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody831_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody831_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody831_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody831_157 : StackLang.HolProg 64 :=
.seq RemovedBody831_155 RemovedBody831_156

def RemovedBody831_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody831_159 : StackLang.HolProg 64 :=
.seq RemovedBody831_157 RemovedBody831_158

def RemovedBody831_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody831_161 : StackLang.HolProg 64 :=
.seq RemovedBody831_159 RemovedBody831_160

def RemovedBody831_162 : StackLang.HolProg 64 :=
.seq RemovedBody831_154 RemovedBody831_161

def RemovedBody831_163 : StackLang.HolProg 64 :=
.seq RemovedBody831_153 RemovedBody831_162

def RemovedBody831_164 : StackLang.HolProg 64 :=
.seq RemovedBody831_152 RemovedBody831_163

def RemovedBody831_165 : StackLang.HolProg 64 :=
.seq RemovedBody831_151 RemovedBody831_164

def RemovedBody831_166 : StackLang.HolProg 64 :=
.seq RemovedBody831_150 RemovedBody831_165

def RemovedBody831_167 : StackLang.HolProg 64 :=
.seq RemovedBody831_149 RemovedBody831_166

def RemovedBody831_168 : StackLang.HolProg 64 :=
.seq RemovedBody831_148 RemovedBody831_167

def RemovedBody831_169 : StackLang.HolProg 64 :=
.seq RemovedBody831_147 RemovedBody831_168

def RemovedBody831_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody831_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody831_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody831_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody831_179 : StackLang.HolProg 64 :=
.seq RemovedBody831_177 RemovedBody831_178

def RemovedBody831_180 : StackLang.HolProg 64 :=
.seq RemovedBody831_176 RemovedBody831_179

def RemovedBody831_181 : StackLang.HolProg 64 :=
.seq RemovedBody831_175 RemovedBody831_180

def RemovedBody831_182 : StackLang.HolProg 64 :=
.seq RemovedBody831_174 RemovedBody831_181

def RemovedBody831_183 : StackLang.HolProg 64 :=
.seq RemovedBody831_173 RemovedBody831_182

def RemovedBody831_184 : StackLang.HolProg 64 :=
.seq RemovedBody831_172 RemovedBody831_183

def RemovedBody831_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody831_187 : StackLang.HolProg 64 :=
.seq RemovedBody831_185 RemovedBody831_186

def RemovedBody831_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody831_189 : StackLang.HolProg 64 :=
.seq RemovedBody831_187 RemovedBody831_188

def RemovedBody831_190 : StackLang.HolProg 64 :=
.call (some (RemovedBody831_184, 0, 831, 6)) (Sum.inl 68) (some (RemovedBody831_189, 831, 7))

def RemovedBody831_191 : StackLang.HolProg 64 :=
.seq RemovedBody831_171 RemovedBody831_190

def RemovedBody831_192 : StackLang.HolProg 64 :=
.seq RemovedBody831_170 RemovedBody831_191

def RemovedBody831_193 : StackLang.HolProg 64 :=
.seq RemovedBody831_169 RemovedBody831_192

def RemovedBody831_194 : StackLang.HolProg 64 :=
.seq RemovedBody831_140 RemovedBody831_193

def RemovedBody831_195 : StackLang.HolProg 64 :=
.seq RemovedBody831_137 RemovedBody831_194

def RemovedBody831_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody831_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def RemovedBody831_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4127#64)

def RemovedBody831_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody831_203 : StackLang.HolProg 64 :=
.seq RemovedBody831_201 RemovedBody831_202

def RemovedBody831_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody831_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody831_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody831_207 : StackLang.HolProg 64 :=
.seq RemovedBody831_205 RemovedBody831_206

def RemovedBody831_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_209 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody831_207 RemovedBody831_208

def RemovedBody831_210 : StackLang.HolProg 64 :=
.seq RemovedBody831_204 RemovedBody831_209

def RemovedBody831_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody831_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody831_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 831 9

def RemovedBody831_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody831_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody831_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody831_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody831_220 : StackLang.HolProg 64 :=
.seq RemovedBody831_218 RemovedBody831_219

def RemovedBody831_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody831_222 : StackLang.HolProg 64 :=
.seq RemovedBody831_220 RemovedBody831_221

def RemovedBody831_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody831_224 : StackLang.HolProg 64 :=
.seq RemovedBody831_222 RemovedBody831_223

def RemovedBody831_225 : StackLang.HolProg 64 :=
.seq RemovedBody831_217 RemovedBody831_224

def RemovedBody831_226 : StackLang.HolProg 64 :=
.seq RemovedBody831_216 RemovedBody831_225

def RemovedBody831_227 : StackLang.HolProg 64 :=
.seq RemovedBody831_215 RemovedBody831_226

def RemovedBody831_228 : StackLang.HolProg 64 :=
.seq RemovedBody831_214 RemovedBody831_227

def RemovedBody831_229 : StackLang.HolProg 64 :=
.seq RemovedBody831_213 RemovedBody831_228

def RemovedBody831_230 : StackLang.HolProg 64 :=
.seq RemovedBody831_212 RemovedBody831_229

def RemovedBody831_231 : StackLang.HolProg 64 :=
.seq RemovedBody831_211 RemovedBody831_230

def RemovedBody831_232 : StackLang.HolProg 64 :=
.seq RemovedBody831_210 RemovedBody831_231

def RemovedBody831_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody831_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody831_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody831_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_241 : StackLang.HolProg 64 :=
.seq RemovedBody831_239 RemovedBody831_240

def RemovedBody831_242 : StackLang.HolProg 64 :=
.seq RemovedBody831_238 RemovedBody831_241

def RemovedBody831_243 : StackLang.HolProg 64 :=
.seq RemovedBody831_237 RemovedBody831_242

def RemovedBody831_244 : StackLang.HolProg 64 :=
.seq RemovedBody831_236 RemovedBody831_243

def RemovedBody831_245 : StackLang.HolProg 64 :=
.seq RemovedBody831_235 RemovedBody831_244

def RemovedBody831_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody831_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody831_248 : StackLang.HolProg 64 :=
.seq RemovedBody831_246 RemovedBody831_247

def RemovedBody831_249 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody831_250 : StackLang.HolProg 64 :=
.seq RemovedBody831_248 RemovedBody831_249

def RemovedBody831_251 : StackLang.HolProg 64 :=
.call (some (RemovedBody831_245, 0, 831, 8)) (Sum.inl 153) (some (RemovedBody831_250, 831, 9))

def RemovedBody831_252 : StackLang.HolProg 64 :=
.seq RemovedBody831_234 RemovedBody831_251

def RemovedBody831_253 : StackLang.HolProg 64 :=
.seq RemovedBody831_233 RemovedBody831_252

def RemovedBody831_254 : StackLang.HolProg 64 :=
.seq RemovedBody831_232 RemovedBody831_253

def RemovedBody831_255 : StackLang.HolProg 64 :=
.seq RemovedBody831_203 RemovedBody831_254

def RemovedBody831_256 : StackLang.HolProg 64 :=
.seq RemovedBody831_200 RemovedBody831_255

def RemovedBody831_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody831_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody831_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody831_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody831_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody831_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody831_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody831_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody831_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody831_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody831_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody831_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody831_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody831_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody831_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody831_275 : StackLang.HolProg 64 :=
.seq RemovedBody831_273 RemovedBody831_274

def RemovedBody831_276 : StackLang.HolProg 64 :=
.seq RemovedBody831_272 RemovedBody831_275

def RemovedBody831_277 : StackLang.HolProg 64 :=
.seq RemovedBody831_271 RemovedBody831_276

def RemovedBody831_278 : StackLang.HolProg 64 :=
.seq RemovedBody831_270 RemovedBody831_277

def RemovedBody831_279 : StackLang.HolProg 64 :=
.seq RemovedBody831_269 RemovedBody831_278

def RemovedBody831_280 : StackLang.HolProg 64 :=
.seq RemovedBody831_268 RemovedBody831_279

def RemovedBody831_281 : StackLang.HolProg 64 :=
.seq RemovedBody831_267 RemovedBody831_280

def RemovedBody831_282 : StackLang.HolProg 64 :=
.seq RemovedBody831_266 RemovedBody831_281

def RemovedBody831_283 : StackLang.HolProg 64 :=
.seq RemovedBody831_265 RemovedBody831_282

def RemovedBody831_284 : StackLang.HolProg 64 :=
.seq RemovedBody831_264 RemovedBody831_283

def RemovedBody831_285 : StackLang.HolProg 64 :=
.seq RemovedBody831_263 RemovedBody831_284

def RemovedBody831_286 : StackLang.HolProg 64 :=
.seq RemovedBody831_262 RemovedBody831_285

def RemovedBody831_287 : StackLang.HolProg 64 :=
.seq RemovedBody831_261 RemovedBody831_286

def RemovedBody831_288 : StackLang.HolProg 64 :=
.seq RemovedBody831_260 RemovedBody831_287

def RemovedBody831_289 : StackLang.HolProg 64 :=
.seq RemovedBody831_259 RemovedBody831_288

def RemovedBody831_290 : StackLang.HolProg 64 :=
.seq RemovedBody831_258 RemovedBody831_289

def RemovedBody831_291 : StackLang.HolProg 64 :=
.seq RemovedBody831_257 RemovedBody831_290

def RemovedBody831_292 : StackLang.HolProg 64 :=
.seq RemovedBody831_256 RemovedBody831_291

def RemovedBody831_293 : StackLang.HolProg 64 :=
.seq RemovedBody831_199 RemovedBody831_292

def RemovedBody831_294 : StackLang.HolProg 64 :=
.seq RemovedBody831_198 RemovedBody831_293

def RemovedBody831_295 : StackLang.HolProg 64 :=
.seq RemovedBody831_197 RemovedBody831_294

def RemovedBody831_296 : StackLang.HolProg 64 :=
.seq RemovedBody831_196 RemovedBody831_295

def RemovedBody831_297 : StackLang.HolProg 64 :=
.seq RemovedBody831_195 RemovedBody831_296

def RemovedBody831_298 : StackLang.HolProg 64 :=
.seq RemovedBody831_136 RemovedBody831_297

def RemovedBody831_299 : StackLang.HolProg 64 :=
.seq RemovedBody831_135 RemovedBody831_298

def RemovedBody831_300 : StackLang.HolProg 64 :=
.seq RemovedBody831_134 RemovedBody831_299

def RemovedBody831_301 : StackLang.HolProg 64 :=
.seq RemovedBody831_133 RemovedBody831_300

def RemovedBody831_302 : StackLang.HolProg 64 :=
.seq RemovedBody831_80 RemovedBody831_301

def RemovedBody831_303 : StackLang.HolProg 64 :=
.seq RemovedBody831_79 RemovedBody831_302

def RemovedBody831_304 : StackLang.HolProg 64 :=
.seq RemovedBody831_78 RemovedBody831_303

def RemovedBody831_305 : StackLang.HolProg 64 :=
.seq RemovedBody831_77 RemovedBody831_304

def RemovedBody831_306 : StackLang.HolProg 64 :=
.seq RemovedBody831_76 RemovedBody831_305

def RemovedBody831_307 : StackLang.HolProg 64 :=
.seq RemovedBody831_75 RemovedBody831_306

def RemovedBody831_308 : StackLang.HolProg 64 :=
.seq RemovedBody831_74 RemovedBody831_307

def RemovedBody831_309 : StackLang.HolProg 64 :=
.seq RemovedBody831_73 RemovedBody831_308

def RemovedBody831_310 : StackLang.HolProg 64 :=
.seq RemovedBody831_72 RemovedBody831_309

def RemovedBody831_311 : StackLang.HolProg 64 :=
.seq RemovedBody831_19 RemovedBody831_310

def RemovedBody831_312 : StackLang.HolProg 64 :=
.seq RemovedBody831_14 RemovedBody831_311

def RemovedBody831_313 : StackLang.HolProg 64 :=
.seq RemovedBody831_13 RemovedBody831_312

def RemovedBody831_314 : StackLang.HolProg 64 :=
.seq RemovedBody831_12 RemovedBody831_313

def RemovedBody831_315 : StackLang.HolProg 64 :=
.seq RemovedBody831_11 RemovedBody831_314

def RemovedBody831_316 : StackLang.HolProg 64 :=
.seq RemovedBody831_10 RemovedBody831_315

def RemovedBody831_317 : StackLang.HolProg 64 :=
.seq RemovedBody831_9 RemovedBody831_316

def RemovedBody831_318 : StackLang.HolProg 64 :=
.seq RemovedBody831_8 RemovedBody831_317

def RemovedBody831_319 : StackLang.HolProg 64 :=
.seq RemovedBody831_7 RemovedBody831_318

def RemovedBody831_320 : StackLang.HolProg 64 :=
.seq RemovedBody831_6 RemovedBody831_319

def Removed831 : Nat × StackLang.HolProg 64 := (831, RemovedBody831_320)
theorem Removed831_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc831 = Removed831 := by
  kernel_rfl
#print axioms Removed831_eq
end InitECandidate.Proofs.BackendStages
