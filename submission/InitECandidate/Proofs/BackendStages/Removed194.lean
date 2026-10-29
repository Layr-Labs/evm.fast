import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc194
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody194_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody194_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody194_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody194_3 : StackLang.HolProg 64 :=
.seq RemovedBody194_1 RemovedBody194_2

def RemovedBody194_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody194_3 RemovedBody194_4

def RemovedBody194_6 : StackLang.HolProg 64 :=
.seq RemovedBody194_0 RemovedBody194_5

def RemovedBody194_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody194_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody194_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody194_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody194_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody194_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody194_14 : StackLang.HolProg 64 :=
.seq RemovedBody194_12 RemovedBody194_13

def RemovedBody194_15 : StackLang.HolProg 64 :=
.seq RemovedBody194_11 RemovedBody194_14

def RemovedBody194_16 : StackLang.HolProg 64 :=
.seq RemovedBody194_10 RemovedBody194_15

def RemovedBody194_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody194_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody194_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody194_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody194_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody194_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def RemovedBody194_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody194_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody194_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody194_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody194_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody194_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody194_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody194_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody194_35 : StackLang.HolProg 64 :=
.seq RemovedBody194_33 RemovedBody194_34

def RemovedBody194_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 233#64)

def RemovedBody194_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody194_39 : StackLang.HolProg 64 :=
.seq RemovedBody194_37 RemovedBody194_38

def RemovedBody194_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody194_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody194_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody194_43 : StackLang.HolProg 64 :=
.seq RemovedBody194_41 RemovedBody194_42

def RemovedBody194_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody194_43 RemovedBody194_44

def RemovedBody194_46 : StackLang.HolProg 64 :=
.seq RemovedBody194_40 RemovedBody194_45

def RemovedBody194_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody194_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody194_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 194 3

def RemovedBody194_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody194_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody194_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody194_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody194_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody194_56 : StackLang.HolProg 64 :=
.seq RemovedBody194_54 RemovedBody194_55

def RemovedBody194_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody194_58 : StackLang.HolProg 64 :=
.seq RemovedBody194_56 RemovedBody194_57

def RemovedBody194_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody194_60 : StackLang.HolProg 64 :=
.seq RemovedBody194_58 RemovedBody194_59

def RemovedBody194_61 : StackLang.HolProg 64 :=
.seq RemovedBody194_53 RemovedBody194_60

def RemovedBody194_62 : StackLang.HolProg 64 :=
.seq RemovedBody194_52 RemovedBody194_61

def RemovedBody194_63 : StackLang.HolProg 64 :=
.seq RemovedBody194_51 RemovedBody194_62

def RemovedBody194_64 : StackLang.HolProg 64 :=
.seq RemovedBody194_50 RemovedBody194_63

def RemovedBody194_65 : StackLang.HolProg 64 :=
.seq RemovedBody194_49 RemovedBody194_64

def RemovedBody194_66 : StackLang.HolProg 64 :=
.seq RemovedBody194_48 RemovedBody194_65

def RemovedBody194_67 : StackLang.HolProg 64 :=
.seq RemovedBody194_47 RemovedBody194_66

def RemovedBody194_68 : StackLang.HolProg 64 :=
.seq RemovedBody194_46 RemovedBody194_67

def RemovedBody194_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody194_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody194_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody194_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody194_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody194_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody194_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody194_79 : StackLang.HolProg 64 :=
.seq RemovedBody194_77 RemovedBody194_78

def RemovedBody194_80 : StackLang.HolProg 64 :=
.seq RemovedBody194_76 RemovedBody194_79

def RemovedBody194_81 : StackLang.HolProg 64 :=
.seq RemovedBody194_75 RemovedBody194_80

def RemovedBody194_82 : StackLang.HolProg 64 :=
.seq RemovedBody194_74 RemovedBody194_81

def RemovedBody194_83 : StackLang.HolProg 64 :=
.seq RemovedBody194_73 RemovedBody194_82

def RemovedBody194_84 : StackLang.HolProg 64 :=
.seq RemovedBody194_72 RemovedBody194_83

def RemovedBody194_85 : StackLang.HolProg 64 :=
.seq RemovedBody194_71 RemovedBody194_84

def RemovedBody194_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody194_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody194_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody194_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody194_90 : StackLang.HolProg 64 :=
.seq RemovedBody194_88 RemovedBody194_89

def RemovedBody194_91 : StackLang.HolProg 64 :=
.seq RemovedBody194_87 RemovedBody194_90

def RemovedBody194_92 : StackLang.HolProg 64 :=
.seq RemovedBody194_86 RemovedBody194_91

def RemovedBody194_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody194_94 : StackLang.HolProg 64 :=
.seq RemovedBody194_92 RemovedBody194_93

def RemovedBody194_95 : StackLang.HolProg 64 :=
.call (some (RemovedBody194_85, 0, 194, 2)) (Sum.inl 193) (some (RemovedBody194_94, 194, 3))

def RemovedBody194_96 : StackLang.HolProg 64 :=
.seq RemovedBody194_70 RemovedBody194_95

def RemovedBody194_97 : StackLang.HolProg 64 :=
.seq RemovedBody194_69 RemovedBody194_96

def RemovedBody194_98 : StackLang.HolProg 64 :=
.seq RemovedBody194_68 RemovedBody194_97

def RemovedBody194_99 : StackLang.HolProg 64 :=
.seq RemovedBody194_39 RemovedBody194_98

def RemovedBody194_100 : StackLang.HolProg 64 :=
.seq RemovedBody194_36 RemovedBody194_99

def RemovedBody194_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody194_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody194_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody194_104 : StackLang.HolProg 64 :=
.seq RemovedBody194_102 RemovedBody194_103

def RemovedBody194_105 : StackLang.HolProg 64 :=
.seq RemovedBody194_101 RemovedBody194_104

def RemovedBody194_106 : StackLang.HolProg 64 :=
.seq RemovedBody194_100 RemovedBody194_105

def RemovedBody194_107 : StackLang.HolProg 64 :=
.seq RemovedBody194_35 RemovedBody194_106

def RemovedBody194_108 : StackLang.HolProg 64 :=
.seq RemovedBody194_32 RemovedBody194_107

def RemovedBody194_109 : StackLang.HolProg 64 :=
.seq RemovedBody194_31 RemovedBody194_108

def RemovedBody194_110 : StackLang.HolProg 64 :=
.seq RemovedBody194_30 RemovedBody194_109

def RemovedBody194_111 : StackLang.HolProg 64 :=
.seq RemovedBody194_29 RemovedBody194_110

def RemovedBody194_112 : StackLang.HolProg 64 :=
.seq RemovedBody194_28 RemovedBody194_111

def RemovedBody194_113 : StackLang.HolProg 64 :=
.seq RemovedBody194_27 RemovedBody194_112

def RemovedBody194_114 : StackLang.HolProg 64 :=
.seq RemovedBody194_26 RemovedBody194_113

def RemovedBody194_115 : StackLang.HolProg 64 :=
.seq RemovedBody194_25 RemovedBody194_114

def RemovedBody194_116 : StackLang.HolProg 64 :=
.seq RemovedBody194_24 RemovedBody194_115

def RemovedBody194_117 : StackLang.HolProg 64 :=
.seq RemovedBody194_23 RemovedBody194_116

def RemovedBody194_118 : StackLang.HolProg 64 :=
.seq RemovedBody194_22 RemovedBody194_117

def RemovedBody194_119 : StackLang.HolProg 64 :=
.seq RemovedBody194_21 RemovedBody194_118

def RemovedBody194_120 : StackLang.HolProg 64 :=
.seq RemovedBody194_20 RemovedBody194_119

def RemovedBody194_121 : StackLang.HolProg 64 :=
.seq RemovedBody194_19 RemovedBody194_120

def RemovedBody194_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody194_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody194_124 : StackLang.HolProg 64 :=
.seq RemovedBody194_122 RemovedBody194_123

def RemovedBody194_125 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody194_121 RemovedBody194_124

def RemovedBody194_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody194_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody194_128 : StackLang.HolProg 64 :=
.seq RemovedBody194_126 RemovedBody194_127

def RemovedBody194_129 : StackLang.HolProg 64 :=
.seq RemovedBody194_125 RemovedBody194_128

def RemovedBody194_130 : StackLang.HolProg 64 :=
.seq RemovedBody194_18 RemovedBody194_129

def RemovedBody194_131 : StackLang.HolProg 64 :=
.seq RemovedBody194_17 RemovedBody194_130

def RemovedBody194_132 : StackLang.HolProg 64 :=
.loop RemovedBody194_131

def RemovedBody194_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody194_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody194_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody194_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody194_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody194_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody194_139 : StackLang.HolProg 64 :=
.seq RemovedBody194_137 RemovedBody194_138

def RemovedBody194_140 : StackLang.HolProg 64 :=
.seq RemovedBody194_136 RemovedBody194_139

def RemovedBody194_141 : StackLang.HolProg 64 :=
.seq RemovedBody194_135 RemovedBody194_140

def RemovedBody194_142 : StackLang.HolProg 64 :=
.seq RemovedBody194_134 RemovedBody194_141

def RemovedBody194_143 : StackLang.HolProg 64 :=
.seq RemovedBody194_133 RemovedBody194_142

def RemovedBody194_144 : StackLang.HolProg 64 :=
.seq RemovedBody194_132 RemovedBody194_143

def RemovedBody194_145 : StackLang.HolProg 64 :=
.seq RemovedBody194_16 RemovedBody194_144

def RemovedBody194_146 : StackLang.HolProg 64 :=
.seq RemovedBody194_9 RemovedBody194_145

def RemovedBody194_147 : StackLang.HolProg 64 :=
.seq RemovedBody194_8 RemovedBody194_146

def RemovedBody194_148 : StackLang.HolProg 64 :=
.seq RemovedBody194_7 RemovedBody194_147

def RemovedBody194_149 : StackLang.HolProg 64 :=
.seq RemovedBody194_6 RemovedBody194_148

def Removed194 : Nat × StackLang.HolProg 64 := (194, RemovedBody194_149)
theorem Removed194_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc194 = Removed194 := by
  kernel_rfl
#print axioms Removed194_eq
end InitECandidate.Proofs.BackendStages
