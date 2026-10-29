import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc250
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody250_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody250_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody250_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody250_3 : StackLang.HolProg 64 :=
.seq RemovedBody250_1 RemovedBody250_2

def RemovedBody250_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody250_3 RemovedBody250_4

def RemovedBody250_6 : StackLang.HolProg 64 :=
.seq RemovedBody250_0 RemovedBody250_5

def RemovedBody250_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody250_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody250_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody250_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody250_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody250_14 : StackLang.HolProg 64 :=
.seq RemovedBody250_12 RemovedBody250_13

def RemovedBody250_15 : StackLang.HolProg 64 :=
.seq RemovedBody250_11 RemovedBody250_14

def RemovedBody250_16 : StackLang.HolProg 64 :=
.seq RemovedBody250_10 RemovedBody250_15

def RemovedBody250_17 : StackLang.HolProg 64 :=
.seq RemovedBody250_9 RemovedBody250_16

def RemovedBody250_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody250_17 RemovedBody250_18

def RemovedBody250_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody250_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody250_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody250_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody250_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody250_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def RemovedBody250_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_35 : StackLang.HolProg 64 :=
.seq RemovedBody250_33 RemovedBody250_34

def RemovedBody250_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody250_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_38 : StackLang.HolProg 64 :=
.seq RemovedBody250_36 RemovedBody250_37

def RemovedBody250_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody250_35 RemovedBody250_38

def RemovedBody250_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody250_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_44 : StackLang.HolProg 64 :=
.seq RemovedBody250_42 RemovedBody250_43

def RemovedBody250_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody250_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_47 : StackLang.HolProg 64 :=
.seq RemovedBody250_45 RemovedBody250_46

def RemovedBody250_48 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody250_44 RemovedBody250_47

def RemovedBody250_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody250_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody250_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def RemovedBody250_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody250_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody250_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody250_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody250_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody250_61 : StackLang.HolProg 64 :=
.seq RemovedBody250_59 RemovedBody250_60

def RemovedBody250_62 : StackLang.HolProg 64 :=
.seq RemovedBody250_58 RemovedBody250_61

def RemovedBody250_63 : StackLang.HolProg 64 :=
.seq RemovedBody250_57 RemovedBody250_62

def RemovedBody250_64 : StackLang.HolProg 64 :=
.seq RemovedBody250_56 RemovedBody250_63

def RemovedBody250_65 : StackLang.HolProg 64 :=
.seq RemovedBody250_55 RemovedBody250_64

def RemovedBody250_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 508#64)

def RemovedBody250_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody250_69 : StackLang.HolProg 64 :=
.seq RemovedBody250_67 RemovedBody250_68

def RemovedBody250_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody250_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody250_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody250_73 : StackLang.HolProg 64 :=
.seq RemovedBody250_71 RemovedBody250_72

def RemovedBody250_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody250_73 RemovedBody250_74

def RemovedBody250_76 : StackLang.HolProg 64 :=
.seq RemovedBody250_70 RemovedBody250_75

def RemovedBody250_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody250_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody250_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 250 3

def RemovedBody250_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody250_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody250_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody250_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody250_86 : StackLang.HolProg 64 :=
.seq RemovedBody250_84 RemovedBody250_85

def RemovedBody250_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody250_88 : StackLang.HolProg 64 :=
.seq RemovedBody250_86 RemovedBody250_87

def RemovedBody250_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody250_90 : StackLang.HolProg 64 :=
.seq RemovedBody250_88 RemovedBody250_89

def RemovedBody250_91 : StackLang.HolProg 64 :=
.seq RemovedBody250_83 RemovedBody250_90

def RemovedBody250_92 : StackLang.HolProg 64 :=
.seq RemovedBody250_82 RemovedBody250_91

def RemovedBody250_93 : StackLang.HolProg 64 :=
.seq RemovedBody250_81 RemovedBody250_92

def RemovedBody250_94 : StackLang.HolProg 64 :=
.seq RemovedBody250_80 RemovedBody250_93

def RemovedBody250_95 : StackLang.HolProg 64 :=
.seq RemovedBody250_79 RemovedBody250_94

def RemovedBody250_96 : StackLang.HolProg 64 :=
.seq RemovedBody250_78 RemovedBody250_95

def RemovedBody250_97 : StackLang.HolProg 64 :=
.seq RemovedBody250_77 RemovedBody250_96

def RemovedBody250_98 : StackLang.HolProg 64 :=
.seq RemovedBody250_76 RemovedBody250_97

def RemovedBody250_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody250_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody250_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody250_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody250_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody250_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_110 : StackLang.HolProg 64 :=
.seq RemovedBody250_108 RemovedBody250_109

def RemovedBody250_111 : StackLang.HolProg 64 :=
.seq RemovedBody250_107 RemovedBody250_110

def RemovedBody250_112 : StackLang.HolProg 64 :=
.seq RemovedBody250_106 RemovedBody250_111

def RemovedBody250_113 : StackLang.HolProg 64 :=
.seq RemovedBody250_105 RemovedBody250_112

def RemovedBody250_114 : StackLang.HolProg 64 :=
.seq RemovedBody250_104 RemovedBody250_113

def RemovedBody250_115 : StackLang.HolProg 64 :=
.seq RemovedBody250_103 RemovedBody250_114

def RemovedBody250_116 : StackLang.HolProg 64 :=
.seq RemovedBody250_102 RemovedBody250_115

def RemovedBody250_117 : StackLang.HolProg 64 :=
.seq RemovedBody250_101 RemovedBody250_116

def RemovedBody250_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody250_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody250_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody250_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_123 : StackLang.HolProg 64 :=
.seq RemovedBody250_121 RemovedBody250_122

def RemovedBody250_124 : StackLang.HolProg 64 :=
.seq RemovedBody250_120 RemovedBody250_123

def RemovedBody250_125 : StackLang.HolProg 64 :=
.seq RemovedBody250_119 RemovedBody250_124

def RemovedBody250_126 : StackLang.HolProg 64 :=
.seq RemovedBody250_118 RemovedBody250_125

def RemovedBody250_127 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody250_128 : StackLang.HolProg 64 :=
.seq RemovedBody250_126 RemovedBody250_127

def RemovedBody250_129 : StackLang.HolProg 64 :=
.call (some (RemovedBody250_117, 0, 250, 2)) (Sum.inl 245) (some (RemovedBody250_128, 250, 3))

def RemovedBody250_130 : StackLang.HolProg 64 :=
.seq RemovedBody250_100 RemovedBody250_129

def RemovedBody250_131 : StackLang.HolProg 64 :=
.seq RemovedBody250_99 RemovedBody250_130

def RemovedBody250_132 : StackLang.HolProg 64 :=
.seq RemovedBody250_98 RemovedBody250_131

def RemovedBody250_133 : StackLang.HolProg 64 :=
.seq RemovedBody250_69 RemovedBody250_132

def RemovedBody250_134 : StackLang.HolProg 64 :=
.seq RemovedBody250_66 RemovedBody250_133

def RemovedBody250_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_137 : StackLang.HolProg 64 :=
.seq RemovedBody250_135 RemovedBody250_136

def RemovedBody250_138 : StackLang.HolProg 64 :=
.seq RemovedBody250_134 RemovedBody250_137

def RemovedBody250_139 : StackLang.HolProg 64 :=
.seq RemovedBody250_65 RemovedBody250_138

def RemovedBody250_140 : StackLang.HolProg 64 :=
.seq RemovedBody250_54 RemovedBody250_139

def RemovedBody250_141 : StackLang.HolProg 64 :=
.seq RemovedBody250_53 RemovedBody250_140

def RemovedBody250_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody250_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody250_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_146 : StackLang.HolProg 64 :=
.seq RemovedBody250_144 RemovedBody250_145

def RemovedBody250_147 : StackLang.HolProg 64 :=
.seq RemovedBody250_143 RemovedBody250_146

def RemovedBody250_148 : StackLang.HolProg 64 :=
.seq RemovedBody250_142 RemovedBody250_147

def RemovedBody250_149 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody250_141 RemovedBody250_148

def RemovedBody250_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody250_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody250_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody250_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551608#64))

def RemovedBody250_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 11#64)

def RemovedBody250_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody250_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody250_163 : StackLang.HolProg 64 :=
.seq RemovedBody250_161 RemovedBody250_162

def RemovedBody250_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 509#64)

def RemovedBody250_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody250_167 : StackLang.HolProg 64 :=
.seq RemovedBody250_165 RemovedBody250_166

def RemovedBody250_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody250_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody250_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody250_171 : StackLang.HolProg 64 :=
.seq RemovedBody250_169 RemovedBody250_170

def RemovedBody250_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_173 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody250_171 RemovedBody250_172

def RemovedBody250_174 : StackLang.HolProg 64 :=
.seq RemovedBody250_168 RemovedBody250_173

def RemovedBody250_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody250_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody250_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 250 5

def RemovedBody250_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody250_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody250_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody250_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody250_184 : StackLang.HolProg 64 :=
.seq RemovedBody250_182 RemovedBody250_183

def RemovedBody250_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody250_186 : StackLang.HolProg 64 :=
.seq RemovedBody250_184 RemovedBody250_185

def RemovedBody250_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody250_188 : StackLang.HolProg 64 :=
.seq RemovedBody250_186 RemovedBody250_187

def RemovedBody250_189 : StackLang.HolProg 64 :=
.seq RemovedBody250_181 RemovedBody250_188

def RemovedBody250_190 : StackLang.HolProg 64 :=
.seq RemovedBody250_180 RemovedBody250_189

def RemovedBody250_191 : StackLang.HolProg 64 :=
.seq RemovedBody250_179 RemovedBody250_190

def RemovedBody250_192 : StackLang.HolProg 64 :=
.seq RemovedBody250_178 RemovedBody250_191

def RemovedBody250_193 : StackLang.HolProg 64 :=
.seq RemovedBody250_177 RemovedBody250_192

def RemovedBody250_194 : StackLang.HolProg 64 :=
.seq RemovedBody250_176 RemovedBody250_193

def RemovedBody250_195 : StackLang.HolProg 64 :=
.seq RemovedBody250_175 RemovedBody250_194

def RemovedBody250_196 : StackLang.HolProg 64 :=
.seq RemovedBody250_174 RemovedBody250_195

def RemovedBody250_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody250_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody250_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody250_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody250_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody250_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody250_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_208 : StackLang.HolProg 64 :=
.seq RemovedBody250_206 RemovedBody250_207

def RemovedBody250_209 : StackLang.HolProg 64 :=
.seq RemovedBody250_205 RemovedBody250_208

def RemovedBody250_210 : StackLang.HolProg 64 :=
.seq RemovedBody250_204 RemovedBody250_209

def RemovedBody250_211 : StackLang.HolProg 64 :=
.seq RemovedBody250_203 RemovedBody250_210

def RemovedBody250_212 : StackLang.HolProg 64 :=
.seq RemovedBody250_202 RemovedBody250_211

def RemovedBody250_213 : StackLang.HolProg 64 :=
.seq RemovedBody250_201 RemovedBody250_212

def RemovedBody250_214 : StackLang.HolProg 64 :=
.seq RemovedBody250_200 RemovedBody250_213

def RemovedBody250_215 : StackLang.HolProg 64 :=
.seq RemovedBody250_199 RemovedBody250_214

def RemovedBody250_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody250_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody250_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody250_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody250_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_221 : StackLang.HolProg 64 :=
.seq RemovedBody250_219 RemovedBody250_220

def RemovedBody250_222 : StackLang.HolProg 64 :=
.seq RemovedBody250_218 RemovedBody250_221

def RemovedBody250_223 : StackLang.HolProg 64 :=
.seq RemovedBody250_217 RemovedBody250_222

def RemovedBody250_224 : StackLang.HolProg 64 :=
.seq RemovedBody250_216 RemovedBody250_223

def RemovedBody250_225 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody250_226 : StackLang.HolProg 64 :=
.seq RemovedBody250_224 RemovedBody250_225

def RemovedBody250_227 : StackLang.HolProg 64 :=
.call (some (RemovedBody250_215, 0, 250, 4)) (Sum.inl 245) (some (RemovedBody250_226, 250, 5))

def RemovedBody250_228 : StackLang.HolProg 64 :=
.seq RemovedBody250_198 RemovedBody250_227

def RemovedBody250_229 : StackLang.HolProg 64 :=
.seq RemovedBody250_197 RemovedBody250_228

def RemovedBody250_230 : StackLang.HolProg 64 :=
.seq RemovedBody250_196 RemovedBody250_229

def RemovedBody250_231 : StackLang.HolProg 64 :=
.seq RemovedBody250_167 RemovedBody250_230

def RemovedBody250_232 : StackLang.HolProg 64 :=
.seq RemovedBody250_164 RemovedBody250_231

def RemovedBody250_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_235 : StackLang.HolProg 64 :=
.seq RemovedBody250_233 RemovedBody250_234

def RemovedBody250_236 : StackLang.HolProg 64 :=
.seq RemovedBody250_232 RemovedBody250_235

def RemovedBody250_237 : StackLang.HolProg 64 :=
.seq RemovedBody250_163 RemovedBody250_236

def RemovedBody250_238 : StackLang.HolProg 64 :=
.seq RemovedBody250_160 RemovedBody250_237

def RemovedBody250_239 : StackLang.HolProg 64 :=
.seq RemovedBody250_159 RemovedBody250_238

def RemovedBody250_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody250_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody250_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_244 : StackLang.HolProg 64 :=
.seq RemovedBody250_242 RemovedBody250_243

def RemovedBody250_245 : StackLang.HolProg 64 :=
.seq RemovedBody250_241 RemovedBody250_244

def RemovedBody250_246 : StackLang.HolProg 64 :=
.seq RemovedBody250_240 RemovedBody250_245

def RemovedBody250_247 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody250_239 RemovedBody250_246

def RemovedBody250_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_250 : StackLang.HolProg 64 :=
.seq RemovedBody250_248 RemovedBody250_249

def RemovedBody250_251 : StackLang.HolProg 64 :=
.seq RemovedBody250_247 RemovedBody250_250

def RemovedBody250_252 : StackLang.HolProg 64 :=
.seq RemovedBody250_158 RemovedBody250_251

def RemovedBody250_253 : StackLang.HolProg 64 :=
.seq RemovedBody250_157 RemovedBody250_252

def RemovedBody250_254 : StackLang.HolProg 64 :=
.seq RemovedBody250_156 RemovedBody250_253

def RemovedBody250_255 : StackLang.HolProg 64 :=
.seq RemovedBody250_155 RemovedBody250_254

def RemovedBody250_256 : StackLang.HolProg 64 :=
.seq RemovedBody250_154 RemovedBody250_255

def RemovedBody250_257 : StackLang.HolProg 64 :=
.seq RemovedBody250_153 RemovedBody250_256

def RemovedBody250_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody250_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody250_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_262 : StackLang.HolProg 64 :=
.seq RemovedBody250_260 RemovedBody250_261

def RemovedBody250_263 : StackLang.HolProg 64 :=
.seq RemovedBody250_259 RemovedBody250_262

def RemovedBody250_264 : StackLang.HolProg 64 :=
.seq RemovedBody250_258 RemovedBody250_263

def RemovedBody250_265 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody250_257 RemovedBody250_264

def RemovedBody250_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody250_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody250_271 : StackLang.HolProg 64 :=
.seq RemovedBody250_269 RemovedBody250_270

def RemovedBody250_272 : StackLang.HolProg 64 :=
.seq RemovedBody250_268 RemovedBody250_271

def RemovedBody250_273 : StackLang.HolProg 64 :=
.seq RemovedBody250_267 RemovedBody250_272

def RemovedBody250_274 : StackLang.HolProg 64 :=
.seq RemovedBody250_266 RemovedBody250_273

def RemovedBody250_275 : StackLang.HolProg 64 :=
.seq RemovedBody250_265 RemovedBody250_274

def RemovedBody250_276 : StackLang.HolProg 64 :=
.seq RemovedBody250_152 RemovedBody250_275

def RemovedBody250_277 : StackLang.HolProg 64 :=
.seq RemovedBody250_151 RemovedBody250_276

def RemovedBody250_278 : StackLang.HolProg 64 :=
.seq RemovedBody250_150 RemovedBody250_277

def RemovedBody250_279 : StackLang.HolProg 64 :=
.seq RemovedBody250_149 RemovedBody250_278

def RemovedBody250_280 : StackLang.HolProg 64 :=
.seq RemovedBody250_52 RemovedBody250_279

def RemovedBody250_281 : StackLang.HolProg 64 :=
.seq RemovedBody250_51 RemovedBody250_280

def RemovedBody250_282 : StackLang.HolProg 64 :=
.seq RemovedBody250_50 RemovedBody250_281

def RemovedBody250_283 : StackLang.HolProg 64 :=
.seq RemovedBody250_49 RemovedBody250_282

def RemovedBody250_284 : StackLang.HolProg 64 :=
.seq RemovedBody250_48 RemovedBody250_283

def RemovedBody250_285 : StackLang.HolProg 64 :=
.seq RemovedBody250_41 RemovedBody250_284

def RemovedBody250_286 : StackLang.HolProg 64 :=
.seq RemovedBody250_40 RemovedBody250_285

def RemovedBody250_287 : StackLang.HolProg 64 :=
.seq RemovedBody250_39 RemovedBody250_286

def RemovedBody250_288 : StackLang.HolProg 64 :=
.seq RemovedBody250_32 RemovedBody250_287

def RemovedBody250_289 : StackLang.HolProg 64 :=
.seq RemovedBody250_31 RemovedBody250_288

def RemovedBody250_290 : StackLang.HolProg 64 :=
.seq RemovedBody250_30 RemovedBody250_289

def RemovedBody250_291 : StackLang.HolProg 64 :=
.seq RemovedBody250_29 RemovedBody250_290

def RemovedBody250_292 : StackLang.HolProg 64 :=
.seq RemovedBody250_28 RemovedBody250_291

def RemovedBody250_293 : StackLang.HolProg 64 :=
.seq RemovedBody250_27 RemovedBody250_292

def RemovedBody250_294 : StackLang.HolProg 64 :=
.seq RemovedBody250_26 RemovedBody250_293

def RemovedBody250_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody250_297 : StackLang.HolProg 64 :=
.seq RemovedBody250_295 RemovedBody250_296

def RemovedBody250_298 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody250_294 RemovedBody250_297

def RemovedBody250_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody250_301 : StackLang.HolProg 64 :=
.seq RemovedBody250_299 RemovedBody250_300

def RemovedBody250_302 : StackLang.HolProg 64 :=
.seq RemovedBody250_298 RemovedBody250_301

def RemovedBody250_303 : StackLang.HolProg 64 :=
.seq RemovedBody250_25 RemovedBody250_302

def RemovedBody250_304 : StackLang.HolProg 64 :=
.loop RemovedBody250_303

def RemovedBody250_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody250_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 12#64)

def RemovedBody250_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 510#64)

def RemovedBody250_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody250_315 : StackLang.HolProg 64 :=
.seq RemovedBody250_313 RemovedBody250_314

def RemovedBody250_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody250_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody250_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody250_319 : StackLang.HolProg 64 :=
.seq RemovedBody250_317 RemovedBody250_318

def RemovedBody250_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_321 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody250_319 RemovedBody250_320

def RemovedBody250_322 : StackLang.HolProg 64 :=
.seq RemovedBody250_316 RemovedBody250_321

def RemovedBody250_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody250_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody250_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 250 7

def RemovedBody250_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody250_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody250_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody250_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody250_332 : StackLang.HolProg 64 :=
.seq RemovedBody250_330 RemovedBody250_331

def RemovedBody250_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody250_334 : StackLang.HolProg 64 :=
.seq RemovedBody250_332 RemovedBody250_333

def RemovedBody250_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody250_336 : StackLang.HolProg 64 :=
.seq RemovedBody250_334 RemovedBody250_335

def RemovedBody250_337 : StackLang.HolProg 64 :=
.seq RemovedBody250_329 RemovedBody250_336

def RemovedBody250_338 : StackLang.HolProg 64 :=
.seq RemovedBody250_328 RemovedBody250_337

def RemovedBody250_339 : StackLang.HolProg 64 :=
.seq RemovedBody250_327 RemovedBody250_338

def RemovedBody250_340 : StackLang.HolProg 64 :=
.seq RemovedBody250_326 RemovedBody250_339

def RemovedBody250_341 : StackLang.HolProg 64 :=
.seq RemovedBody250_325 RemovedBody250_340

def RemovedBody250_342 : StackLang.HolProg 64 :=
.seq RemovedBody250_324 RemovedBody250_341

def RemovedBody250_343 : StackLang.HolProg 64 :=
.seq RemovedBody250_323 RemovedBody250_342

def RemovedBody250_344 : StackLang.HolProg 64 :=
.seq RemovedBody250_322 RemovedBody250_343

def RemovedBody250_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody250_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody250_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody250_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody250_352 : StackLang.HolProg 64 :=
.seq RemovedBody250_350 RemovedBody250_351

def RemovedBody250_353 : StackLang.HolProg 64 :=
.seq RemovedBody250_349 RemovedBody250_352

def RemovedBody250_354 : StackLang.HolProg 64 :=
.seq RemovedBody250_348 RemovedBody250_353

def RemovedBody250_355 : StackLang.HolProg 64 :=
.seq RemovedBody250_347 RemovedBody250_354

def RemovedBody250_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody250_357 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody250_358 : StackLang.HolProg 64 :=
.seq RemovedBody250_356 RemovedBody250_357

def RemovedBody250_359 : StackLang.HolProg 64 :=
.call (some (RemovedBody250_355, 0, 250, 6)) (Sum.inl 245) (some (RemovedBody250_358, 250, 7))

def RemovedBody250_360 : StackLang.HolProg 64 :=
.seq RemovedBody250_346 RemovedBody250_359

def RemovedBody250_361 : StackLang.HolProg 64 :=
.seq RemovedBody250_345 RemovedBody250_360

def RemovedBody250_362 : StackLang.HolProg 64 :=
.seq RemovedBody250_344 RemovedBody250_361

def RemovedBody250_363 : StackLang.HolProg 64 :=
.seq RemovedBody250_315 RemovedBody250_362

def RemovedBody250_364 : StackLang.HolProg 64 :=
.seq RemovedBody250_312 RemovedBody250_363

def RemovedBody250_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_367 : StackLang.HolProg 64 :=
.seq RemovedBody250_365 RemovedBody250_366

def RemovedBody250_368 : StackLang.HolProg 64 :=
.seq RemovedBody250_364 RemovedBody250_367

def RemovedBody250_369 : StackLang.HolProg 64 :=
.seq RemovedBody250_311 RemovedBody250_368

def RemovedBody250_370 : StackLang.HolProg 64 :=
.seq RemovedBody250_310 RemovedBody250_369

def RemovedBody250_371 : StackLang.HolProg 64 :=
.seq RemovedBody250_309 RemovedBody250_370

def RemovedBody250_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody250_374 : StackLang.HolProg 64 :=
.seq RemovedBody250_372 RemovedBody250_373

def RemovedBody250_375 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody250_371 RemovedBody250_374

def RemovedBody250_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody250_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody250_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody250_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody250_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody250_381 : StackLang.HolProg 64 :=
.seq RemovedBody250_379 RemovedBody250_380

def RemovedBody250_382 : StackLang.HolProg 64 :=
.seq RemovedBody250_378 RemovedBody250_381

def RemovedBody250_383 : StackLang.HolProg 64 :=
.seq RemovedBody250_377 RemovedBody250_382

def RemovedBody250_384 : StackLang.HolProg 64 :=
.seq RemovedBody250_376 RemovedBody250_383

def RemovedBody250_385 : StackLang.HolProg 64 :=
.seq RemovedBody250_375 RemovedBody250_384

def RemovedBody250_386 : StackLang.HolProg 64 :=
.seq RemovedBody250_308 RemovedBody250_385

def RemovedBody250_387 : StackLang.HolProg 64 :=
.seq RemovedBody250_307 RemovedBody250_386

def RemovedBody250_388 : StackLang.HolProg 64 :=
.seq RemovedBody250_306 RemovedBody250_387

def RemovedBody250_389 : StackLang.HolProg 64 :=
.seq RemovedBody250_305 RemovedBody250_388

def RemovedBody250_390 : StackLang.HolProg 64 :=
.seq RemovedBody250_304 RemovedBody250_389

def RemovedBody250_391 : StackLang.HolProg 64 :=
.seq RemovedBody250_24 RemovedBody250_390

def RemovedBody250_392 : StackLang.HolProg 64 :=
.seq RemovedBody250_23 RemovedBody250_391

def RemovedBody250_393 : StackLang.HolProg 64 :=
.seq RemovedBody250_22 RemovedBody250_392

def RemovedBody250_394 : StackLang.HolProg 64 :=
.seq RemovedBody250_21 RemovedBody250_393

def RemovedBody250_395 : StackLang.HolProg 64 :=
.seq RemovedBody250_20 RemovedBody250_394

def RemovedBody250_396 : StackLang.HolProg 64 :=
.seq RemovedBody250_19 RemovedBody250_395

def RemovedBody250_397 : StackLang.HolProg 64 :=
.seq RemovedBody250_8 RemovedBody250_396

def RemovedBody250_398 : StackLang.HolProg 64 :=
.seq RemovedBody250_7 RemovedBody250_397

def RemovedBody250_399 : StackLang.HolProg 64 :=
.seq RemovedBody250_6 RemovedBody250_398

def Removed250 : Nat × StackLang.HolProg 64 := (250, RemovedBody250_399)
theorem Removed250_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc250 = Removed250 := by
  kernel_rfl
#print axioms Removed250_eq
end InitECandidate.Proofs.BackendStages
