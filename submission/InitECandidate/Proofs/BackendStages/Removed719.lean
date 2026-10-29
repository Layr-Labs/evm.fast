import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc719
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody719_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody719_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody719_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody719_3 : StackLang.HolProg 64 :=
.seq RemovedBody719_1 RemovedBody719_2

def RemovedBody719_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody719_3 RemovedBody719_4

def RemovedBody719_6 : StackLang.HolProg 64 :=
.seq RemovedBody719_0 RemovedBody719_5

def RemovedBody719_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody719_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody719_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody719_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody719_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 718

def RemovedBody719_15 : StackLang.HolProg 64 :=
.seq RemovedBody719_13 RemovedBody719_14

def RemovedBody719_16 : StackLang.HolProg 64 :=
.seq RemovedBody719_12 RemovedBody719_15

def RemovedBody719_17 : StackLang.HolProg 64 :=
.seq RemovedBody719_11 RemovedBody719_16

def RemovedBody719_18 : StackLang.HolProg 64 :=
.seq RemovedBody719_10 RemovedBody719_17

def RemovedBody719_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) RemovedBody719_18 RemovedBody719_19

def RemovedBody719_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody719_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody719_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1873798617647539866#64)

def RemovedBody719_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 5412103778470702295#64)

def RemovedBody719_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7239337960414712511#64)

def RemovedBody719_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7435674573564081700#64)

def RemovedBody719_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2210141511517208575#64)

def RemovedBody719_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13402431016077863595#64)

def RemovedBody719_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody719_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3231#64)

def RemovedBody719_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody719_34 : StackLang.HolProg 64 :=
.seq RemovedBody719_32 RemovedBody719_33

def RemovedBody719_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody719_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody719_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody719_38 : StackLang.HolProg 64 :=
.seq RemovedBody719_36 RemovedBody719_37

def RemovedBody719_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody719_38 RemovedBody719_39

def RemovedBody719_41 : StackLang.HolProg 64 :=
.seq RemovedBody719_35 RemovedBody719_40

def RemovedBody719_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody719_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody719_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 719 3

def RemovedBody719_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody719_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody719_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody719_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody719_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody719_51 : StackLang.HolProg 64 :=
.seq RemovedBody719_49 RemovedBody719_50

def RemovedBody719_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody719_53 : StackLang.HolProg 64 :=
.seq RemovedBody719_51 RemovedBody719_52

def RemovedBody719_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody719_55 : StackLang.HolProg 64 :=
.seq RemovedBody719_53 RemovedBody719_54

def RemovedBody719_56 : StackLang.HolProg 64 :=
.seq RemovedBody719_48 RemovedBody719_55

def RemovedBody719_57 : StackLang.HolProg 64 :=
.seq RemovedBody719_47 RemovedBody719_56

def RemovedBody719_58 : StackLang.HolProg 64 :=
.seq RemovedBody719_46 RemovedBody719_57

def RemovedBody719_59 : StackLang.HolProg 64 :=
.seq RemovedBody719_45 RemovedBody719_58

def RemovedBody719_60 : StackLang.HolProg 64 :=
.seq RemovedBody719_44 RemovedBody719_59

def RemovedBody719_61 : StackLang.HolProg 64 :=
.seq RemovedBody719_43 RemovedBody719_60

def RemovedBody719_62 : StackLang.HolProg 64 :=
.seq RemovedBody719_42 RemovedBody719_61

def RemovedBody719_63 : StackLang.HolProg 64 :=
.seq RemovedBody719_41 RemovedBody719_62

def RemovedBody719_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody719_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody719_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody719_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody719_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody719_72 : StackLang.HolProg 64 :=
.seq RemovedBody719_70 RemovedBody719_71

def RemovedBody719_73 : StackLang.HolProg 64 :=
.seq RemovedBody719_69 RemovedBody719_72

def RemovedBody719_74 : StackLang.HolProg 64 :=
.seq RemovedBody719_68 RemovedBody719_73

def RemovedBody719_75 : StackLang.HolProg 64 :=
.seq RemovedBody719_67 RemovedBody719_74

def RemovedBody719_76 : StackLang.HolProg 64 :=
.seq RemovedBody719_66 RemovedBody719_75

def RemovedBody719_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody719_78 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody719_79 : StackLang.HolProg 64 :=
.seq RemovedBody719_77 RemovedBody719_78

def RemovedBody719_80 : StackLang.HolProg 64 :=
.call (some (RemovedBody719_76, 0, 719, 2)) (Sum.inl 708) (some (RemovedBody719_79, 719, 3))

def RemovedBody719_81 : StackLang.HolProg 64 :=
.seq RemovedBody719_65 RemovedBody719_80

def RemovedBody719_82 : StackLang.HolProg 64 :=
.seq RemovedBody719_64 RemovedBody719_81

def RemovedBody719_83 : StackLang.HolProg 64 :=
.seq RemovedBody719_63 RemovedBody719_82

def RemovedBody719_84 : StackLang.HolProg 64 :=
.seq RemovedBody719_34 RemovedBody719_83

def RemovedBody719_85 : StackLang.HolProg 64 :=
.seq RemovedBody719_31 RemovedBody719_84

def RemovedBody719_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody719_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody719_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody719_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody719_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody719_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody719_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody719_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody719_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody719_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody719_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody719_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody719_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody719_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody719_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody719_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody719_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody719_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody719_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody719_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody719_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody719_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def RemovedBody719_120 : StackLang.HolProg 64 :=
.seq RemovedBody719_118 RemovedBody719_119

def RemovedBody719_121 : StackLang.HolProg 64 :=
.seq RemovedBody719_117 RemovedBody719_120

def RemovedBody719_122 : StackLang.HolProg 64 :=
.seq RemovedBody719_116 RemovedBody719_121

def RemovedBody719_123 : StackLang.HolProg 64 :=
.seq RemovedBody719_115 RemovedBody719_122

def RemovedBody719_124 : StackLang.HolProg 64 :=
.seq RemovedBody719_114 RemovedBody719_123

def RemovedBody719_125 : StackLang.HolProg 64 :=
.seq RemovedBody719_113 RemovedBody719_124

def RemovedBody719_126 : StackLang.HolProg 64 :=
.seq RemovedBody719_112 RemovedBody719_125

def RemovedBody719_127 : StackLang.HolProg 64 :=
.seq RemovedBody719_111 RemovedBody719_126

def RemovedBody719_128 : StackLang.HolProg 64 :=
.seq RemovedBody719_110 RemovedBody719_127

def RemovedBody719_129 : StackLang.HolProg 64 :=
.seq RemovedBody719_109 RemovedBody719_128

def RemovedBody719_130 : StackLang.HolProg 64 :=
.seq RemovedBody719_108 RemovedBody719_129

def RemovedBody719_131 : StackLang.HolProg 64 :=
.seq RemovedBody719_107 RemovedBody719_130

def RemovedBody719_132 : StackLang.HolProg 64 :=
.seq RemovedBody719_106 RemovedBody719_131

def RemovedBody719_133 : StackLang.HolProg 64 :=
.seq RemovedBody719_105 RemovedBody719_132

def RemovedBody719_134 : StackLang.HolProg 64 :=
.seq RemovedBody719_104 RemovedBody719_133

def RemovedBody719_135 : StackLang.HolProg 64 :=
.seq RemovedBody719_103 RemovedBody719_134

def RemovedBody719_136 : StackLang.HolProg 64 :=
.seq RemovedBody719_102 RemovedBody719_135

def RemovedBody719_137 : StackLang.HolProg 64 :=
.seq RemovedBody719_101 RemovedBody719_136

def RemovedBody719_138 : StackLang.HolProg 64 :=
.seq RemovedBody719_100 RemovedBody719_137

def RemovedBody719_139 : StackLang.HolProg 64 :=
.seq RemovedBody719_99 RemovedBody719_138

def RemovedBody719_140 : StackLang.HolProg 64 :=
.seq RemovedBody719_98 RemovedBody719_139

def RemovedBody719_141 : StackLang.HolProg 64 :=
.seq RemovedBody719_97 RemovedBody719_140

def RemovedBody719_142 : StackLang.HolProg 64 :=
.seq RemovedBody719_96 RemovedBody719_141

def RemovedBody719_143 : StackLang.HolProg 64 :=
.seq RemovedBody719_95 RemovedBody719_142

def RemovedBody719_144 : StackLang.HolProg 64 :=
.seq RemovedBody719_94 RemovedBody719_143

def RemovedBody719_145 : StackLang.HolProg 64 :=
.seq RemovedBody719_93 RemovedBody719_144

def RemovedBody719_146 : StackLang.HolProg 64 :=
.seq RemovedBody719_92 RemovedBody719_145

def RemovedBody719_147 : StackLang.HolProg 64 :=
.seq RemovedBody719_91 RemovedBody719_146

def RemovedBody719_148 : StackLang.HolProg 64 :=
.seq RemovedBody719_90 RemovedBody719_147

def RemovedBody719_149 : StackLang.HolProg 64 :=
.seq RemovedBody719_89 RemovedBody719_148

def RemovedBody719_150 : StackLang.HolProg 64 :=
.seq RemovedBody719_88 RemovedBody719_149

def RemovedBody719_151 : StackLang.HolProg 64 :=
.seq RemovedBody719_87 RemovedBody719_150

def RemovedBody719_152 : StackLang.HolProg 64 :=
.seq RemovedBody719_86 RemovedBody719_151

def RemovedBody719_153 : StackLang.HolProg 64 :=
.seq RemovedBody719_85 RemovedBody719_152

def RemovedBody719_154 : StackLang.HolProg 64 :=
.seq RemovedBody719_30 RemovedBody719_153

def RemovedBody719_155 : StackLang.HolProg 64 :=
.seq RemovedBody719_29 RemovedBody719_154

def RemovedBody719_156 : StackLang.HolProg 64 :=
.seq RemovedBody719_28 RemovedBody719_155

def RemovedBody719_157 : StackLang.HolProg 64 :=
.seq RemovedBody719_27 RemovedBody719_156

def RemovedBody719_158 : StackLang.HolProg 64 :=
.seq RemovedBody719_26 RemovedBody719_157

def RemovedBody719_159 : StackLang.HolProg 64 :=
.seq RemovedBody719_25 RemovedBody719_158

def RemovedBody719_160 : StackLang.HolProg 64 :=
.seq RemovedBody719_24 RemovedBody719_159

def RemovedBody719_161 : StackLang.HolProg 64 :=
.seq RemovedBody719_23 RemovedBody719_160

def RemovedBody719_162 : StackLang.HolProg 64 :=
.seq RemovedBody719_22 RemovedBody719_161

def RemovedBody719_163 : StackLang.HolProg 64 :=
.seq RemovedBody719_21 RemovedBody719_162

def RemovedBody719_164 : StackLang.HolProg 64 :=
.seq RemovedBody719_20 RemovedBody719_163

def RemovedBody719_165 : StackLang.HolProg 64 :=
.seq RemovedBody719_9 RemovedBody719_164

def RemovedBody719_166 : StackLang.HolProg 64 :=
.seq RemovedBody719_8 RemovedBody719_165

def RemovedBody719_167 : StackLang.HolProg 64 :=
.seq RemovedBody719_7 RemovedBody719_166

def RemovedBody719_168 : StackLang.HolProg 64 :=
.seq RemovedBody719_6 RemovedBody719_167

def Removed719 : Nat × StackLang.HolProg 64 := (719, RemovedBody719_168)
theorem Removed719_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc719 = Removed719 := by
  kernel_rfl
#print axioms Removed719_eq
end InitECandidate.Proofs.BackendStages
