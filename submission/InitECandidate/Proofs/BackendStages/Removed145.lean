import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc145
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody145_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody145_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody145_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody145_3 : StackLang.HolProg 64 :=
.seq RemovedBody145_1 RemovedBody145_2

def RemovedBody145_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody145_3 RemovedBody145_4

def RemovedBody145_6 : StackLang.HolProg 64 :=
.seq RemovedBody145_0 RemovedBody145_5

def RemovedBody145_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody145_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody145_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody145_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody145_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody145_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody145_14 : StackLang.HolProg 64 :=
.seq RemovedBody145_12 RemovedBody145_13

def RemovedBody145_15 : StackLang.HolProg 64 :=
.seq RemovedBody145_11 RemovedBody145_14

def RemovedBody145_16 : StackLang.HolProg 64 :=
.seq RemovedBody145_10 RemovedBody145_15

def RemovedBody145_17 : StackLang.HolProg 64 :=
.seq RemovedBody145_9 RemovedBody145_16

def RemovedBody145_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody145_17 RemovedBody145_18

def RemovedBody145_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody145_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody145_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 31#64)

def RemovedBody145_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody145_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody145_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody145_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody145_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody145_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody145_30 : StackLang.HolProg 64 :=
.seq RemovedBody145_28 RemovedBody145_29

def RemovedBody145_31 : StackLang.HolProg 64 :=
.seq RemovedBody145_27 RemovedBody145_30

def RemovedBody145_32 : StackLang.HolProg 64 :=
.seq RemovedBody145_26 RemovedBody145_31

def RemovedBody145_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody145_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody145_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody145_36 : StackLang.HolProg 64 :=
.seq RemovedBody145_34 RemovedBody145_35

def RemovedBody145_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 111#64)

def RemovedBody145_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody145_40 : StackLang.HolProg 64 :=
.seq RemovedBody145_38 RemovedBody145_39

def RemovedBody145_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody145_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody145_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody145_44 : StackLang.HolProg 64 :=
.seq RemovedBody145_42 RemovedBody145_43

def RemovedBody145_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody145_44 RemovedBody145_45

def RemovedBody145_47 : StackLang.HolProg 64 :=
.seq RemovedBody145_41 RemovedBody145_46

def RemovedBody145_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody145_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody145_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 145 3

def RemovedBody145_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody145_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody145_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody145_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody145_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody145_57 : StackLang.HolProg 64 :=
.seq RemovedBody145_55 RemovedBody145_56

def RemovedBody145_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody145_59 : StackLang.HolProg 64 :=
.seq RemovedBody145_57 RemovedBody145_58

def RemovedBody145_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody145_61 : StackLang.HolProg 64 :=
.seq RemovedBody145_59 RemovedBody145_60

def RemovedBody145_62 : StackLang.HolProg 64 :=
.seq RemovedBody145_54 RemovedBody145_61

def RemovedBody145_63 : StackLang.HolProg 64 :=
.seq RemovedBody145_53 RemovedBody145_62

def RemovedBody145_64 : StackLang.HolProg 64 :=
.seq RemovedBody145_52 RemovedBody145_63

def RemovedBody145_65 : StackLang.HolProg 64 :=
.seq RemovedBody145_51 RemovedBody145_64

def RemovedBody145_66 : StackLang.HolProg 64 :=
.seq RemovedBody145_50 RemovedBody145_65

def RemovedBody145_67 : StackLang.HolProg 64 :=
.seq RemovedBody145_49 RemovedBody145_66

def RemovedBody145_68 : StackLang.HolProg 64 :=
.seq RemovedBody145_48 RemovedBody145_67

def RemovedBody145_69 : StackLang.HolProg 64 :=
.seq RemovedBody145_47 RemovedBody145_68

def RemovedBody145_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody145_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody145_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody145_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody145_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody145_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody145_79 : StackLang.HolProg 64 :=
.seq RemovedBody145_77 RemovedBody145_78

def RemovedBody145_80 : StackLang.HolProg 64 :=
.seq RemovedBody145_76 RemovedBody145_79

def RemovedBody145_81 : StackLang.HolProg 64 :=
.seq RemovedBody145_75 RemovedBody145_80

def RemovedBody145_82 : StackLang.HolProg 64 :=
.seq RemovedBody145_74 RemovedBody145_81

def RemovedBody145_83 : StackLang.HolProg 64 :=
.seq RemovedBody145_73 RemovedBody145_82

def RemovedBody145_84 : StackLang.HolProg 64 :=
.seq RemovedBody145_72 RemovedBody145_83

def RemovedBody145_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody145_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody145_87 : StackLang.HolProg 64 :=
.seq RemovedBody145_85 RemovedBody145_86

def RemovedBody145_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody145_89 : StackLang.HolProg 64 :=
.seq RemovedBody145_87 RemovedBody145_88

def RemovedBody145_90 : StackLang.HolProg 64 :=
.call (some (RemovedBody145_84, 0, 145, 2)) (Sum.inl 103) (some (RemovedBody145_89, 145, 3))

def RemovedBody145_91 : StackLang.HolProg 64 :=
.seq RemovedBody145_71 RemovedBody145_90

def RemovedBody145_92 : StackLang.HolProg 64 :=
.seq RemovedBody145_70 RemovedBody145_91

def RemovedBody145_93 : StackLang.HolProg 64 :=
.seq RemovedBody145_69 RemovedBody145_92

def RemovedBody145_94 : StackLang.HolProg 64 :=
.seq RemovedBody145_40 RemovedBody145_93

def RemovedBody145_95 : StackLang.HolProg 64 :=
.seq RemovedBody145_37 RemovedBody145_94

def RemovedBody145_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody145_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody145_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody145_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def RemovedBody145_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody145_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody145_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody145_105 : StackLang.HolProg 64 :=
.seq RemovedBody145_103 RemovedBody145_104

def RemovedBody145_106 : StackLang.HolProg 64 :=
.seq RemovedBody145_102 RemovedBody145_105

def RemovedBody145_107 : StackLang.HolProg 64 :=
.seq RemovedBody145_101 RemovedBody145_106

def RemovedBody145_108 : StackLang.HolProg 64 :=
.seq RemovedBody145_100 RemovedBody145_107

def RemovedBody145_109 : StackLang.HolProg 64 :=
.seq RemovedBody145_99 RemovedBody145_108

def RemovedBody145_110 : StackLang.HolProg 64 :=
.seq RemovedBody145_98 RemovedBody145_109

def RemovedBody145_111 : StackLang.HolProg 64 :=
.seq RemovedBody145_97 RemovedBody145_110

def RemovedBody145_112 : StackLang.HolProg 64 :=
.seq RemovedBody145_96 RemovedBody145_111

def RemovedBody145_113 : StackLang.HolProg 64 :=
.seq RemovedBody145_95 RemovedBody145_112

def RemovedBody145_114 : StackLang.HolProg 64 :=
.seq RemovedBody145_36 RemovedBody145_113

def RemovedBody145_115 : StackLang.HolProg 64 :=
.seq RemovedBody145_33 RemovedBody145_114

def RemovedBody145_116 : StackLang.HolProg 64 :=
.seq RemovedBody145_32 RemovedBody145_115

def RemovedBody145_117 : StackLang.HolProg 64 :=
.seq RemovedBody145_25 RemovedBody145_116

def RemovedBody145_118 : StackLang.HolProg 64 :=
.seq RemovedBody145_24 RemovedBody145_117

def RemovedBody145_119 : StackLang.HolProg 64 :=
.seq RemovedBody145_23 RemovedBody145_118

def RemovedBody145_120 : StackLang.HolProg 64 :=
.seq RemovedBody145_22 RemovedBody145_119

def RemovedBody145_121 : StackLang.HolProg 64 :=
.seq RemovedBody145_21 RemovedBody145_120

def RemovedBody145_122 : StackLang.HolProg 64 :=
.seq RemovedBody145_20 RemovedBody145_121

def RemovedBody145_123 : StackLang.HolProg 64 :=
.seq RemovedBody145_19 RemovedBody145_122

def RemovedBody145_124 : StackLang.HolProg 64 :=
.seq RemovedBody145_8 RemovedBody145_123

def RemovedBody145_125 : StackLang.HolProg 64 :=
.seq RemovedBody145_7 RemovedBody145_124

def RemovedBody145_126 : StackLang.HolProg 64 :=
.seq RemovedBody145_6 RemovedBody145_125

def Removed145 : Nat × StackLang.HolProg 64 := (145, RemovedBody145_126)
theorem Removed145_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc145 = Removed145 := by
  kernel_rfl
#print axioms Removed145_eq
end InitECandidate.Proofs.BackendStages
