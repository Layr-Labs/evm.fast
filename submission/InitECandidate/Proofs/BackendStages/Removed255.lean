import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc255
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody255_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody255_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody255_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody255_3 : StackLang.HolProg 64 :=
.seq RemovedBody255_1 RemovedBody255_2

def RemovedBody255_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody255_3 RemovedBody255_4

def RemovedBody255_6 : StackLang.HolProg 64 :=
.seq RemovedBody255_0 RemovedBody255_5

def RemovedBody255_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody255_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody255_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody255_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody255_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody255_12 : StackLang.HolProg 64 :=
.seq RemovedBody255_10 RemovedBody255_11

def RemovedBody255_13 : StackLang.HolProg 64 :=
.seq RemovedBody255_9 RemovedBody255_12

def RemovedBody255_14 : StackLang.HolProg 64 :=
.seq RemovedBody255_8 RemovedBody255_13

def RemovedBody255_15 : StackLang.HolProg 64 :=
.seq RemovedBody255_7 RemovedBody255_14

def RemovedBody255_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 533#64)

def RemovedBody255_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody255_19 : StackLang.HolProg 64 :=
.seq RemovedBody255_17 RemovedBody255_18

def RemovedBody255_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody255_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody255_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody255_23 : StackLang.HolProg 64 :=
.seq RemovedBody255_21 RemovedBody255_22

def RemovedBody255_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody255_23 RemovedBody255_24

def RemovedBody255_26 : StackLang.HolProg 64 :=
.seq RemovedBody255_20 RemovedBody255_25

def RemovedBody255_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody255_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody255_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 255 3

def RemovedBody255_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody255_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody255_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody255_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody255_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody255_36 : StackLang.HolProg 64 :=
.seq RemovedBody255_34 RemovedBody255_35

def RemovedBody255_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody255_38 : StackLang.HolProg 64 :=
.seq RemovedBody255_36 RemovedBody255_37

def RemovedBody255_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody255_40 : StackLang.HolProg 64 :=
.seq RemovedBody255_38 RemovedBody255_39

def RemovedBody255_41 : StackLang.HolProg 64 :=
.seq RemovedBody255_33 RemovedBody255_40

def RemovedBody255_42 : StackLang.HolProg 64 :=
.seq RemovedBody255_32 RemovedBody255_41

def RemovedBody255_43 : StackLang.HolProg 64 :=
.seq RemovedBody255_31 RemovedBody255_42

def RemovedBody255_44 : StackLang.HolProg 64 :=
.seq RemovedBody255_30 RemovedBody255_43

def RemovedBody255_45 : StackLang.HolProg 64 :=
.seq RemovedBody255_29 RemovedBody255_44

def RemovedBody255_46 : StackLang.HolProg 64 :=
.seq RemovedBody255_28 RemovedBody255_45

def RemovedBody255_47 : StackLang.HolProg 64 :=
.seq RemovedBody255_27 RemovedBody255_46

def RemovedBody255_48 : StackLang.HolProg 64 :=
.seq RemovedBody255_26 RemovedBody255_47

def RemovedBody255_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody255_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody255_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody255_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody255_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody255_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody255_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody255_59 : StackLang.HolProg 64 :=
.seq RemovedBody255_57 RemovedBody255_58

def RemovedBody255_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody255_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody255_62 : StackLang.HolProg 64 :=
.seq RemovedBody255_60 RemovedBody255_61

def RemovedBody255_63 : StackLang.HolProg 64 :=
.seq RemovedBody255_59 RemovedBody255_62

def RemovedBody255_64 : StackLang.HolProg 64 :=
.seq RemovedBody255_56 RemovedBody255_63

def RemovedBody255_65 : StackLang.HolProg 64 :=
.seq RemovedBody255_55 RemovedBody255_64

def RemovedBody255_66 : StackLang.HolProg 64 :=
.seq RemovedBody255_54 RemovedBody255_65

def RemovedBody255_67 : StackLang.HolProg 64 :=
.seq RemovedBody255_53 RemovedBody255_66

def RemovedBody255_68 : StackLang.HolProg 64 :=
.seq RemovedBody255_52 RemovedBody255_67

def RemovedBody255_69 : StackLang.HolProg 64 :=
.seq RemovedBody255_51 RemovedBody255_68

def RemovedBody255_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody255_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody255_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody255_73 : StackLang.HolProg 64 :=
.seq RemovedBody255_71 RemovedBody255_72

def RemovedBody255_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody255_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody255_76 : StackLang.HolProg 64 :=
.seq RemovedBody255_74 RemovedBody255_75

def RemovedBody255_77 : StackLang.HolProg 64 :=
.seq RemovedBody255_73 RemovedBody255_76

def RemovedBody255_78 : StackLang.HolProg 64 :=
.seq RemovedBody255_70 RemovedBody255_77

def RemovedBody255_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody255_80 : StackLang.HolProg 64 :=
.seq RemovedBody255_78 RemovedBody255_79

def RemovedBody255_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody255_69, 0, 255, 2)) (Sum.inl 251) (some (RemovedBody255_80, 255, 3))

def RemovedBody255_82 : StackLang.HolProg 64 :=
.seq RemovedBody255_50 RemovedBody255_81

def RemovedBody255_83 : StackLang.HolProg 64 :=
.seq RemovedBody255_49 RemovedBody255_82

def RemovedBody255_84 : StackLang.HolProg 64 :=
.seq RemovedBody255_48 RemovedBody255_83

def RemovedBody255_85 : StackLang.HolProg 64 :=
.seq RemovedBody255_19 RemovedBody255_84

def RemovedBody255_86 : StackLang.HolProg 64 :=
.seq RemovedBody255_16 RemovedBody255_85

def RemovedBody255_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody255_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody255_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody255_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody255_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody255_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody255_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody255_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody255_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 70#64)

def RemovedBody255_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody255_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody255_102 : StackLang.HolProg 64 :=
.seq RemovedBody255_100 RemovedBody255_101

def RemovedBody255_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody255_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody255_105 : StackLang.HolProg 64 :=
.seq RemovedBody255_103 RemovedBody255_104

def RemovedBody255_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody255_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody255_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody255_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody255_110 : StackLang.HolProg 64 :=
.seq RemovedBody255_108 RemovedBody255_109

def RemovedBody255_111 : StackLang.HolProg 64 :=
.seq RemovedBody255_107 RemovedBody255_110

def RemovedBody255_112 : StackLang.HolProg 64 :=
.seq RemovedBody255_106 RemovedBody255_111

def RemovedBody255_113 : StackLang.HolProg 64 :=
.seq RemovedBody255_105 RemovedBody255_112

def RemovedBody255_114 : StackLang.HolProg 64 :=
.seq RemovedBody255_102 RemovedBody255_113

def RemovedBody255_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 534#64)

def RemovedBody255_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody255_118 : StackLang.HolProg 64 :=
.seq RemovedBody255_116 RemovedBody255_117

def RemovedBody255_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody255_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody255_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody255_122 : StackLang.HolProg 64 :=
.seq RemovedBody255_120 RemovedBody255_121

def RemovedBody255_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody255_122 RemovedBody255_123

def RemovedBody255_125 : StackLang.HolProg 64 :=
.seq RemovedBody255_119 RemovedBody255_124

def RemovedBody255_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody255_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody255_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 255 5

def RemovedBody255_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody255_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody255_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody255_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody255_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody255_135 : StackLang.HolProg 64 :=
.seq RemovedBody255_133 RemovedBody255_134

def RemovedBody255_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody255_137 : StackLang.HolProg 64 :=
.seq RemovedBody255_135 RemovedBody255_136

def RemovedBody255_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody255_139 : StackLang.HolProg 64 :=
.seq RemovedBody255_137 RemovedBody255_138

def RemovedBody255_140 : StackLang.HolProg 64 :=
.seq RemovedBody255_132 RemovedBody255_139

def RemovedBody255_141 : StackLang.HolProg 64 :=
.seq RemovedBody255_131 RemovedBody255_140

def RemovedBody255_142 : StackLang.HolProg 64 :=
.seq RemovedBody255_130 RemovedBody255_141

def RemovedBody255_143 : StackLang.HolProg 64 :=
.seq RemovedBody255_129 RemovedBody255_142

def RemovedBody255_144 : StackLang.HolProg 64 :=
.seq RemovedBody255_128 RemovedBody255_143

def RemovedBody255_145 : StackLang.HolProg 64 :=
.seq RemovedBody255_127 RemovedBody255_144

def RemovedBody255_146 : StackLang.HolProg 64 :=
.seq RemovedBody255_126 RemovedBody255_145

def RemovedBody255_147 : StackLang.HolProg 64 :=
.seq RemovedBody255_125 RemovedBody255_146

def RemovedBody255_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody255_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody255_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody255_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody255_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody255_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody255_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody255_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody255_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody255_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody255_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody255_162 : StackLang.HolProg 64 :=
.seq RemovedBody255_160 RemovedBody255_161

def RemovedBody255_163 : StackLang.HolProg 64 :=
.seq RemovedBody255_159 RemovedBody255_162

def RemovedBody255_164 : StackLang.HolProg 64 :=
.seq RemovedBody255_158 RemovedBody255_163

def RemovedBody255_165 : StackLang.HolProg 64 :=
.seq RemovedBody255_157 RemovedBody255_164

def RemovedBody255_166 : StackLang.HolProg 64 :=
.seq RemovedBody255_156 RemovedBody255_165

def RemovedBody255_167 : StackLang.HolProg 64 :=
.seq RemovedBody255_155 RemovedBody255_166

def RemovedBody255_168 : StackLang.HolProg 64 :=
.seq RemovedBody255_154 RemovedBody255_167

def RemovedBody255_169 : StackLang.HolProg 64 :=
.seq RemovedBody255_153 RemovedBody255_168

def RemovedBody255_170 : StackLang.HolProg 64 :=
.seq RemovedBody255_152 RemovedBody255_169

def RemovedBody255_171 : StackLang.HolProg 64 :=
.seq RemovedBody255_151 RemovedBody255_170

def RemovedBody255_172 : StackLang.HolProg 64 :=
.seq RemovedBody255_150 RemovedBody255_171

def RemovedBody255_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody255_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody255_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody255_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody255_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody255_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody255_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody255_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody255_181 : StackLang.HolProg 64 :=
.seq RemovedBody255_179 RemovedBody255_180

def RemovedBody255_182 : StackLang.HolProg 64 :=
.seq RemovedBody255_178 RemovedBody255_181

def RemovedBody255_183 : StackLang.HolProg 64 :=
.seq RemovedBody255_177 RemovedBody255_182

def RemovedBody255_184 : StackLang.HolProg 64 :=
.seq RemovedBody255_176 RemovedBody255_183

def RemovedBody255_185 : StackLang.HolProg 64 :=
.seq RemovedBody255_175 RemovedBody255_184

def RemovedBody255_186 : StackLang.HolProg 64 :=
.seq RemovedBody255_174 RemovedBody255_185

def RemovedBody255_187 : StackLang.HolProg 64 :=
.seq RemovedBody255_173 RemovedBody255_186

def RemovedBody255_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody255_189 : StackLang.HolProg 64 :=
.seq RemovedBody255_187 RemovedBody255_188

def RemovedBody255_190 : StackLang.HolProg 64 :=
.call (some (RemovedBody255_172, 0, 255, 4)) (Sum.inl 245) (some (RemovedBody255_189, 255, 5))

def RemovedBody255_191 : StackLang.HolProg 64 :=
.seq RemovedBody255_149 RemovedBody255_190

def RemovedBody255_192 : StackLang.HolProg 64 :=
.seq RemovedBody255_148 RemovedBody255_191

def RemovedBody255_193 : StackLang.HolProg 64 :=
.seq RemovedBody255_147 RemovedBody255_192

def RemovedBody255_194 : StackLang.HolProg 64 :=
.seq RemovedBody255_118 RemovedBody255_193

def RemovedBody255_195 : StackLang.HolProg 64 :=
.seq RemovedBody255_115 RemovedBody255_194

def RemovedBody255_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody255_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_198 : StackLang.HolProg 64 :=
.seq RemovedBody255_196 RemovedBody255_197

def RemovedBody255_199 : StackLang.HolProg 64 :=
.seq RemovedBody255_195 RemovedBody255_198

def RemovedBody255_200 : StackLang.HolProg 64 :=
.seq RemovedBody255_114 RemovedBody255_199

def RemovedBody255_201 : StackLang.HolProg 64 :=
.seq RemovedBody255_99 RemovedBody255_200

def RemovedBody255_202 : StackLang.HolProg 64 :=
.seq RemovedBody255_98 RemovedBody255_201

def RemovedBody255_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody255_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody255_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody255_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody255_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody255_208 : StackLang.HolProg 64 :=
.seq RemovedBody255_206 RemovedBody255_207

def RemovedBody255_209 : StackLang.HolProg 64 :=
.seq RemovedBody255_205 RemovedBody255_208

def RemovedBody255_210 : StackLang.HolProg 64 :=
.seq RemovedBody255_204 RemovedBody255_209

def RemovedBody255_211 : StackLang.HolProg 64 :=
.seq RemovedBody255_203 RemovedBody255_210

def RemovedBody255_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody255_202 RemovedBody255_211

def RemovedBody255_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody255_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody255_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody255_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody255_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody255_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody255_220 : StackLang.HolProg 64 :=
.seq RemovedBody255_218 RemovedBody255_219

def RemovedBody255_221 : StackLang.HolProg 64 :=
.seq RemovedBody255_217 RemovedBody255_220

def RemovedBody255_222 : StackLang.HolProg 64 :=
.seq RemovedBody255_216 RemovedBody255_221

def RemovedBody255_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody255_224 : StackLang.HolProg 64 :=
.seq RemovedBody255_222 RemovedBody255_223

def RemovedBody255_225 : StackLang.HolProg 64 :=
.seq RemovedBody255_215 RemovedBody255_224

def RemovedBody255_226 : StackLang.HolProg 64 :=
.seq RemovedBody255_214 RemovedBody255_225

def RemovedBody255_227 : StackLang.HolProg 64 :=
.seq RemovedBody255_213 RemovedBody255_226

def RemovedBody255_228 : StackLang.HolProg 64 :=
.seq RemovedBody255_212 RemovedBody255_227

def RemovedBody255_229 : StackLang.HolProg 64 :=
.seq RemovedBody255_97 RemovedBody255_228

def RemovedBody255_230 : StackLang.HolProg 64 :=
.seq RemovedBody255_96 RemovedBody255_229

def RemovedBody255_231 : StackLang.HolProg 64 :=
.seq RemovedBody255_95 RemovedBody255_230

def RemovedBody255_232 : StackLang.HolProg 64 :=
.seq RemovedBody255_94 RemovedBody255_231

def RemovedBody255_233 : StackLang.HolProg 64 :=
.seq RemovedBody255_93 RemovedBody255_232

def RemovedBody255_234 : StackLang.HolProg 64 :=
.seq RemovedBody255_92 RemovedBody255_233

def RemovedBody255_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody255_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody255_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody255_238 : StackLang.HolProg 64 :=
.seq RemovedBody255_236 RemovedBody255_237

def RemovedBody255_239 : StackLang.HolProg 64 :=
.seq RemovedBody255_235 RemovedBody255_238

def RemovedBody255_240 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody255_234 RemovedBody255_239

def RemovedBody255_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody255_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody255_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody255_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody255_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody255_246 : StackLang.HolProg 64 :=
.seq RemovedBody255_244 RemovedBody255_245

def RemovedBody255_247 : StackLang.HolProg 64 :=
.seq RemovedBody255_243 RemovedBody255_246

def RemovedBody255_248 : StackLang.HolProg 64 :=
.seq RemovedBody255_242 RemovedBody255_247

def RemovedBody255_249 : StackLang.HolProg 64 :=
.seq RemovedBody255_241 RemovedBody255_248

def RemovedBody255_250 : StackLang.HolProg 64 :=
.seq RemovedBody255_240 RemovedBody255_249

def RemovedBody255_251 : StackLang.HolProg 64 :=
.seq RemovedBody255_91 RemovedBody255_250

def RemovedBody255_252 : StackLang.HolProg 64 :=
.loop RemovedBody255_251

def RemovedBody255_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody255_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody255_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody255_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody255_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody255_258 : StackLang.HolProg 64 :=
.seq RemovedBody255_256 RemovedBody255_257

def RemovedBody255_259 : StackLang.HolProg 64 :=
.seq RemovedBody255_255 RemovedBody255_258

def RemovedBody255_260 : StackLang.HolProg 64 :=
.seq RemovedBody255_254 RemovedBody255_259

def RemovedBody255_261 : StackLang.HolProg 64 :=
.seq RemovedBody255_253 RemovedBody255_260

def RemovedBody255_262 : StackLang.HolProg 64 :=
.seq RemovedBody255_252 RemovedBody255_261

def RemovedBody255_263 : StackLang.HolProg 64 :=
.seq RemovedBody255_90 RemovedBody255_262

def RemovedBody255_264 : StackLang.HolProg 64 :=
.seq RemovedBody255_89 RemovedBody255_263

def RemovedBody255_265 : StackLang.HolProg 64 :=
.seq RemovedBody255_88 RemovedBody255_264

def RemovedBody255_266 : StackLang.HolProg 64 :=
.seq RemovedBody255_87 RemovedBody255_265

def RemovedBody255_267 : StackLang.HolProg 64 :=
.seq RemovedBody255_86 RemovedBody255_266

def RemovedBody255_268 : StackLang.HolProg 64 :=
.seq RemovedBody255_15 RemovedBody255_267

def RemovedBody255_269 : StackLang.HolProg 64 :=
.seq RemovedBody255_6 RemovedBody255_268

def Removed255 : Nat × StackLang.HolProg 64 := (255, RemovedBody255_269)
theorem Removed255_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc255 = Removed255 := by
  kernel_rfl
#print axioms Removed255_eq
end InitECandidate.Proofs.BackendStages
