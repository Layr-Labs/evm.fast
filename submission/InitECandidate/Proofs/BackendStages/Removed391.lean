import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc391
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody391_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody391_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody391_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody391_3 : StackLang.HolProg 64 :=
.seq RemovedBody391_1 RemovedBody391_2

def RemovedBody391_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody391_3 RemovedBody391_4

def RemovedBody391_6 : StackLang.HolProg 64 :=
.seq RemovedBody391_0 RemovedBody391_5

def RemovedBody391_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody391_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody391_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody391_11 : StackLang.HolProg 64 :=
.seq RemovedBody391_9 RemovedBody391_10

def RemovedBody391_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody391_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody391_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody391_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551600#64))

def RemovedBody391_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody391_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551600#64)))

def RemovedBody391_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody391_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody391_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551600#64))

def RemovedBody391_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody391_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551416#64))

def RemovedBody391_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody391_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody391_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def RemovedBody391_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def RemovedBody391_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody391_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody391_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 24#64))

def RemovedBody391_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody391_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1167#64)

def RemovedBody391_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody391_44 : StackLang.HolProg 64 :=
.seq RemovedBody391_42 RemovedBody391_43

def RemovedBody391_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody391_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody391_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody391_48 : StackLang.HolProg 64 :=
.seq RemovedBody391_46 RemovedBody391_47

def RemovedBody391_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody391_48 RemovedBody391_49

def RemovedBody391_51 : StackLang.HolProg 64 :=
.seq RemovedBody391_45 RemovedBody391_50

def RemovedBody391_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody391_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody391_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 391 3

def RemovedBody391_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody391_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody391_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody391_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody391_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody391_61 : StackLang.HolProg 64 :=
.seq RemovedBody391_59 RemovedBody391_60

def RemovedBody391_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody391_63 : StackLang.HolProg 64 :=
.seq RemovedBody391_61 RemovedBody391_62

def RemovedBody391_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody391_65 : StackLang.HolProg 64 :=
.seq RemovedBody391_63 RemovedBody391_64

def RemovedBody391_66 : StackLang.HolProg 64 :=
.seq RemovedBody391_58 RemovedBody391_65

def RemovedBody391_67 : StackLang.HolProg 64 :=
.seq RemovedBody391_57 RemovedBody391_66

def RemovedBody391_68 : StackLang.HolProg 64 :=
.seq RemovedBody391_56 RemovedBody391_67

def RemovedBody391_69 : StackLang.HolProg 64 :=
.seq RemovedBody391_55 RemovedBody391_68

def RemovedBody391_70 : StackLang.HolProg 64 :=
.seq RemovedBody391_54 RemovedBody391_69

def RemovedBody391_71 : StackLang.HolProg 64 :=
.seq RemovedBody391_53 RemovedBody391_70

def RemovedBody391_72 : StackLang.HolProg 64 :=
.seq RemovedBody391_52 RemovedBody391_71

def RemovedBody391_73 : StackLang.HolProg 64 :=
.seq RemovedBody391_51 RemovedBody391_72

def RemovedBody391_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody391_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody391_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody391_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody391_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody391_82 : StackLang.HolProg 64 :=
.seq RemovedBody391_80 RemovedBody391_81

def RemovedBody391_83 : StackLang.HolProg 64 :=
.seq RemovedBody391_79 RemovedBody391_82

def RemovedBody391_84 : StackLang.HolProg 64 :=
.seq RemovedBody391_78 RemovedBody391_83

def RemovedBody391_85 : StackLang.HolProg 64 :=
.seq RemovedBody391_77 RemovedBody391_84

def RemovedBody391_86 : StackLang.HolProg 64 :=
.seq RemovedBody391_76 RemovedBody391_85

def RemovedBody391_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody391_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody391_89 : StackLang.HolProg 64 :=
.seq RemovedBody391_87 RemovedBody391_88

def RemovedBody391_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody391_91 : StackLang.HolProg 64 :=
.seq RemovedBody391_89 RemovedBody391_90

def RemovedBody391_92 : StackLang.HolProg 64 :=
.call (some (RemovedBody391_86, 0, 391, 2)) (Sum.inl 192) (some (RemovedBody391_91, 391, 3))

def RemovedBody391_93 : StackLang.HolProg 64 :=
.seq RemovedBody391_75 RemovedBody391_92

def RemovedBody391_94 : StackLang.HolProg 64 :=
.seq RemovedBody391_74 RemovedBody391_93

def RemovedBody391_95 : StackLang.HolProg 64 :=
.seq RemovedBody391_73 RemovedBody391_94

def RemovedBody391_96 : StackLang.HolProg 64 :=
.seq RemovedBody391_44 RemovedBody391_95

def RemovedBody391_97 : StackLang.HolProg 64 :=
.seq RemovedBody391_41 RemovedBody391_96

def RemovedBody391_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody391_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_100 : StackLang.HolProg 64 :=
.seq RemovedBody391_98 RemovedBody391_99

def RemovedBody391_101 : StackLang.HolProg 64 :=
.seq RemovedBody391_97 RemovedBody391_100

def RemovedBody391_102 : StackLang.HolProg 64 :=
.seq RemovedBody391_40 RemovedBody391_101

def RemovedBody391_103 : StackLang.HolProg 64 :=
.seq RemovedBody391_39 RemovedBody391_102

def RemovedBody391_104 : StackLang.HolProg 64 :=
.seq RemovedBody391_38 RemovedBody391_103

def RemovedBody391_105 : StackLang.HolProg 64 :=
.seq RemovedBody391_37 RemovedBody391_104

def RemovedBody391_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody391_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody391_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1168#64)

def RemovedBody391_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody391_111 : StackLang.HolProg 64 :=
.seq RemovedBody391_109 RemovedBody391_110

def RemovedBody391_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody391_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody391_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody391_115 : StackLang.HolProg 64 :=
.seq RemovedBody391_113 RemovedBody391_114

def RemovedBody391_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody391_115 RemovedBody391_116

def RemovedBody391_118 : StackLang.HolProg 64 :=
.seq RemovedBody391_112 RemovedBody391_117

def RemovedBody391_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody391_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody391_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 391 5

def RemovedBody391_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody391_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody391_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody391_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody391_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody391_128 : StackLang.HolProg 64 :=
.seq RemovedBody391_126 RemovedBody391_127

def RemovedBody391_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody391_130 : StackLang.HolProg 64 :=
.seq RemovedBody391_128 RemovedBody391_129

def RemovedBody391_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody391_132 : StackLang.HolProg 64 :=
.seq RemovedBody391_130 RemovedBody391_131

def RemovedBody391_133 : StackLang.HolProg 64 :=
.seq RemovedBody391_125 RemovedBody391_132

def RemovedBody391_134 : StackLang.HolProg 64 :=
.seq RemovedBody391_124 RemovedBody391_133

def RemovedBody391_135 : StackLang.HolProg 64 :=
.seq RemovedBody391_123 RemovedBody391_134

def RemovedBody391_136 : StackLang.HolProg 64 :=
.seq RemovedBody391_122 RemovedBody391_135

def RemovedBody391_137 : StackLang.HolProg 64 :=
.seq RemovedBody391_121 RemovedBody391_136

def RemovedBody391_138 : StackLang.HolProg 64 :=
.seq RemovedBody391_120 RemovedBody391_137

def RemovedBody391_139 : StackLang.HolProg 64 :=
.seq RemovedBody391_119 RemovedBody391_138

def RemovedBody391_140 : StackLang.HolProg 64 :=
.seq RemovedBody391_118 RemovedBody391_139

def RemovedBody391_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody391_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody391_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody391_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody391_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody391_149 : StackLang.HolProg 64 :=
.seq RemovedBody391_147 RemovedBody391_148

def RemovedBody391_150 : StackLang.HolProg 64 :=
.seq RemovedBody391_146 RemovedBody391_149

def RemovedBody391_151 : StackLang.HolProg 64 :=
.seq RemovedBody391_145 RemovedBody391_150

def RemovedBody391_152 : StackLang.HolProg 64 :=
.seq RemovedBody391_144 RemovedBody391_151

def RemovedBody391_153 : StackLang.HolProg 64 :=
.seq RemovedBody391_143 RemovedBody391_152

def RemovedBody391_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody391_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody391_156 : StackLang.HolProg 64 :=
.seq RemovedBody391_154 RemovedBody391_155

def RemovedBody391_157 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody391_158 : StackLang.HolProg 64 :=
.seq RemovedBody391_156 RemovedBody391_157

def RemovedBody391_159 : StackLang.HolProg 64 :=
.call (some (RemovedBody391_153, 0, 391, 4)) (Sum.inl 193) (some (RemovedBody391_158, 391, 5))

def RemovedBody391_160 : StackLang.HolProg 64 :=
.seq RemovedBody391_142 RemovedBody391_159

def RemovedBody391_161 : StackLang.HolProg 64 :=
.seq RemovedBody391_141 RemovedBody391_160

def RemovedBody391_162 : StackLang.HolProg 64 :=
.seq RemovedBody391_140 RemovedBody391_161

def RemovedBody391_163 : StackLang.HolProg 64 :=
.seq RemovedBody391_111 RemovedBody391_162

def RemovedBody391_164 : StackLang.HolProg 64 :=
.seq RemovedBody391_108 RemovedBody391_163

def RemovedBody391_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody391_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_167 : StackLang.HolProg 64 :=
.seq RemovedBody391_165 RemovedBody391_166

def RemovedBody391_168 : StackLang.HolProg 64 :=
.seq RemovedBody391_164 RemovedBody391_167

def RemovedBody391_169 : StackLang.HolProg 64 :=
.seq RemovedBody391_107 RemovedBody391_168

def RemovedBody391_170 : StackLang.HolProg 64 :=
.seq RemovedBody391_106 RemovedBody391_169

def RemovedBody391_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody391_105 RemovedBody391_170

def RemovedBody391_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody391_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody391_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody391_175 : StackLang.HolProg 64 :=
.seq RemovedBody391_173 RemovedBody391_174

def RemovedBody391_176 : StackLang.HolProg 64 :=
.seq RemovedBody391_172 RemovedBody391_175

def RemovedBody391_177 : StackLang.HolProg 64 :=
.seq RemovedBody391_171 RemovedBody391_176

def RemovedBody391_178 : StackLang.HolProg 64 :=
.seq RemovedBody391_36 RemovedBody391_177

def RemovedBody391_179 : StackLang.HolProg 64 :=
.seq RemovedBody391_35 RemovedBody391_178

def RemovedBody391_180 : StackLang.HolProg 64 :=
.seq RemovedBody391_34 RemovedBody391_179

def RemovedBody391_181 : StackLang.HolProg 64 :=
.seq RemovedBody391_33 RemovedBody391_180

def RemovedBody391_182 : StackLang.HolProg 64 :=
.seq RemovedBody391_32 RemovedBody391_181

def RemovedBody391_183 : StackLang.HolProg 64 :=
.seq RemovedBody391_31 RemovedBody391_182

def RemovedBody391_184 : StackLang.HolProg 64 :=
.seq RemovedBody391_30 RemovedBody391_183

def RemovedBody391_185 : StackLang.HolProg 64 :=
.seq RemovedBody391_29 RemovedBody391_184

def RemovedBody391_186 : StackLang.HolProg 64 :=
.seq RemovedBody391_28 RemovedBody391_185

def RemovedBody391_187 : StackLang.HolProg 64 :=
.seq RemovedBody391_27 RemovedBody391_186

def RemovedBody391_188 : StackLang.HolProg 64 :=
.seq RemovedBody391_26 RemovedBody391_187

def RemovedBody391_189 : StackLang.HolProg 64 :=
.seq RemovedBody391_25 RemovedBody391_188

def RemovedBody391_190 : StackLang.HolProg 64 :=
.seq RemovedBody391_24 RemovedBody391_189

def RemovedBody391_191 : StackLang.HolProg 64 :=
.seq RemovedBody391_23 RemovedBody391_190

def RemovedBody391_192 : StackLang.HolProg 64 :=
.seq RemovedBody391_22 RemovedBody391_191

def RemovedBody391_193 : StackLang.HolProg 64 :=
.seq RemovedBody391_21 RemovedBody391_192

def RemovedBody391_194 : StackLang.HolProg 64 :=
.seq RemovedBody391_20 RemovedBody391_193

def RemovedBody391_195 : StackLang.HolProg 64 :=
.seq RemovedBody391_19 RemovedBody391_194

def RemovedBody391_196 : StackLang.HolProg 64 :=
.seq RemovedBody391_18 RemovedBody391_195

def RemovedBody391_197 : StackLang.HolProg 64 :=
.seq RemovedBody391_17 RemovedBody391_196

def RemovedBody391_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody391_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody391_200 : StackLang.HolProg 64 :=
.seq RemovedBody391_198 RemovedBody391_199

def RemovedBody391_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody391_197 RemovedBody391_200

def RemovedBody391_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody391_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody391_204 : StackLang.HolProg 64 :=
.seq RemovedBody391_202 RemovedBody391_203

def RemovedBody391_205 : StackLang.HolProg 64 :=
.seq RemovedBody391_201 RemovedBody391_204

def RemovedBody391_206 : StackLang.HolProg 64 :=
.seq RemovedBody391_16 RemovedBody391_205

def RemovedBody391_207 : StackLang.HolProg 64 :=
.seq RemovedBody391_15 RemovedBody391_206

def RemovedBody391_208 : StackLang.HolProg 64 :=
.seq RemovedBody391_14 RemovedBody391_207

def RemovedBody391_209 : StackLang.HolProg 64 :=
.seq RemovedBody391_13 RemovedBody391_208

def RemovedBody391_210 : StackLang.HolProg 64 :=
.seq RemovedBody391_12 RemovedBody391_209

def RemovedBody391_211 : StackLang.HolProg 64 :=
.loop RemovedBody391_210

def RemovedBody391_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody391_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody391_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody391_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody391_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody391_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody391_218 : StackLang.HolProg 64 :=
.seq RemovedBody391_216 RemovedBody391_217

def RemovedBody391_219 : StackLang.HolProg 64 :=
.seq RemovedBody391_215 RemovedBody391_218

def RemovedBody391_220 : StackLang.HolProg 64 :=
.seq RemovedBody391_214 RemovedBody391_219

def RemovedBody391_221 : StackLang.HolProg 64 :=
.seq RemovedBody391_213 RemovedBody391_220

def RemovedBody391_222 : StackLang.HolProg 64 :=
.seq RemovedBody391_212 RemovedBody391_221

def RemovedBody391_223 : StackLang.HolProg 64 :=
.seq RemovedBody391_211 RemovedBody391_222

def RemovedBody391_224 : StackLang.HolProg 64 :=
.seq RemovedBody391_11 RemovedBody391_223

def RemovedBody391_225 : StackLang.HolProg 64 :=
.seq RemovedBody391_8 RemovedBody391_224

def RemovedBody391_226 : StackLang.HolProg 64 :=
.seq RemovedBody391_7 RemovedBody391_225

def RemovedBody391_227 : StackLang.HolProg 64 :=
.seq RemovedBody391_6 RemovedBody391_226

def Removed391 : Nat × StackLang.HolProg 64 := (391, RemovedBody391_227)
theorem Removed391_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc391 = Removed391 := by
  kernel_rfl
#print axioms Removed391_eq
end InitECandidate.Proofs.BackendStages
