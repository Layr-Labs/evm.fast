import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc377
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody377_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody377_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody377_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody377_3 : StackLang.HolProg 64 :=
.seq RemovedBody377_1 RemovedBody377_2

def RemovedBody377_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody377_3 RemovedBody377_4

def RemovedBody377_6 : StackLang.HolProg 64 :=
.seq RemovedBody377_0 RemovedBody377_5

def RemovedBody377_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody377_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody377_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody377_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody377_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody377_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody377_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody377_17 : StackLang.HolProg 64 :=
.seq RemovedBody377_15 RemovedBody377_16

def RemovedBody377_18 : StackLang.HolProg 64 :=
.seq RemovedBody377_14 RemovedBody377_17

def RemovedBody377_19 : StackLang.HolProg 64 :=
.seq RemovedBody377_13 RemovedBody377_18

def RemovedBody377_20 : StackLang.HolProg 64 :=
.seq RemovedBody377_12 RemovedBody377_19

def RemovedBody377_21 : StackLang.HolProg 64 :=
.seq RemovedBody377_11 RemovedBody377_20

def RemovedBody377_22 : StackLang.HolProg 64 :=
.seq RemovedBody377_10 RemovedBody377_21

def RemovedBody377_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody377_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody377_22 RemovedBody377_23

def RemovedBody377_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 288#64))

def RemovedBody377_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 296#64))

def RemovedBody377_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 304#64))

def RemovedBody377_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 312#64))

def RemovedBody377_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody377_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody377_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody377_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody377_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody377_40 : StackLang.HolProg 64 :=
.seq RemovedBody377_38 RemovedBody377_39

def RemovedBody377_41 : StackLang.HolProg 64 :=
.seq RemovedBody377_37 RemovedBody377_40

def RemovedBody377_42 : StackLang.HolProg 64 :=
.seq RemovedBody377_36 RemovedBody377_41

def RemovedBody377_43 : StackLang.HolProg 64 :=
.seq RemovedBody377_35 RemovedBody377_42

def RemovedBody377_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1089#64)

def RemovedBody377_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody377_47 : StackLang.HolProg 64 :=
.seq RemovedBody377_45 RemovedBody377_46

def RemovedBody377_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody377_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody377_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody377_51 : StackLang.HolProg 64 :=
.seq RemovedBody377_49 RemovedBody377_50

def RemovedBody377_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_53 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody377_51 RemovedBody377_52

def RemovedBody377_54 : StackLang.HolProg 64 :=
.seq RemovedBody377_48 RemovedBody377_53

def RemovedBody377_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody377_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody377_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 3

def RemovedBody377_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody377_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody377_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody377_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody377_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody377_64 : StackLang.HolProg 64 :=
.seq RemovedBody377_62 RemovedBody377_63

def RemovedBody377_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody377_66 : StackLang.HolProg 64 :=
.seq RemovedBody377_64 RemovedBody377_65

def RemovedBody377_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody377_68 : StackLang.HolProg 64 :=
.seq RemovedBody377_66 RemovedBody377_67

def RemovedBody377_69 : StackLang.HolProg 64 :=
.seq RemovedBody377_61 RemovedBody377_68

def RemovedBody377_70 : StackLang.HolProg 64 :=
.seq RemovedBody377_60 RemovedBody377_69

def RemovedBody377_71 : StackLang.HolProg 64 :=
.seq RemovedBody377_59 RemovedBody377_70

def RemovedBody377_72 : StackLang.HolProg 64 :=
.seq RemovedBody377_58 RemovedBody377_71

def RemovedBody377_73 : StackLang.HolProg 64 :=
.seq RemovedBody377_57 RemovedBody377_72

def RemovedBody377_74 : StackLang.HolProg 64 :=
.seq RemovedBody377_56 RemovedBody377_73

def RemovedBody377_75 : StackLang.HolProg 64 :=
.seq RemovedBody377_55 RemovedBody377_74

def RemovedBody377_76 : StackLang.HolProg 64 :=
.seq RemovedBody377_54 RemovedBody377_75

def RemovedBody377_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody377_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody377_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody377_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody377_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody377_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody377_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody377_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody377_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody377_89 : StackLang.HolProg 64 :=
.seq RemovedBody377_87 RemovedBody377_88

def RemovedBody377_90 : StackLang.HolProg 64 :=
.seq RemovedBody377_86 RemovedBody377_89

def RemovedBody377_91 : StackLang.HolProg 64 :=
.seq RemovedBody377_85 RemovedBody377_90

def RemovedBody377_92 : StackLang.HolProg 64 :=
.seq RemovedBody377_84 RemovedBody377_91

def RemovedBody377_93 : StackLang.HolProg 64 :=
.seq RemovedBody377_83 RemovedBody377_92

def RemovedBody377_94 : StackLang.HolProg 64 :=
.seq RemovedBody377_82 RemovedBody377_93

def RemovedBody377_95 : StackLang.HolProg 64 :=
.seq RemovedBody377_81 RemovedBody377_94

def RemovedBody377_96 : StackLang.HolProg 64 :=
.seq RemovedBody377_80 RemovedBody377_95

def RemovedBody377_97 : StackLang.HolProg 64 :=
.seq RemovedBody377_79 RemovedBody377_96

def RemovedBody377_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody377_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody377_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody377_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody377_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody377_103 : StackLang.HolProg 64 :=
.seq RemovedBody377_101 RemovedBody377_102

def RemovedBody377_104 : StackLang.HolProg 64 :=
.seq RemovedBody377_100 RemovedBody377_103

def RemovedBody377_105 : StackLang.HolProg 64 :=
.seq RemovedBody377_99 RemovedBody377_104

def RemovedBody377_106 : StackLang.HolProg 64 :=
.seq RemovedBody377_98 RemovedBody377_105

def RemovedBody377_107 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody377_108 : StackLang.HolProg 64 :=
.seq RemovedBody377_106 RemovedBody377_107

def RemovedBody377_109 : StackLang.HolProg 64 :=
.call (some (RemovedBody377_97, 0, 377, 2)) (Sum.inl 101) (some (RemovedBody377_108, 377, 3))

def RemovedBody377_110 : StackLang.HolProg 64 :=
.seq RemovedBody377_78 RemovedBody377_109

def RemovedBody377_111 : StackLang.HolProg 64 :=
.seq RemovedBody377_77 RemovedBody377_110

def RemovedBody377_112 : StackLang.HolProg 64 :=
.seq RemovedBody377_76 RemovedBody377_111

def RemovedBody377_113 : StackLang.HolProg 64 :=
.seq RemovedBody377_47 RemovedBody377_112

def RemovedBody377_114 : StackLang.HolProg 64 :=
.seq RemovedBody377_44 RemovedBody377_113

def RemovedBody377_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody377_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 27#64)

def RemovedBody377_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody377_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_123 : StackLang.HolProg 64 :=
.seq RemovedBody377_121 RemovedBody377_122

def RemovedBody377_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody377_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_126 : StackLang.HolProg 64 :=
.seq RemovedBody377_124 RemovedBody377_125

def RemovedBody377_127 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody377_123 RemovedBody377_126

def RemovedBody377_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 28#64)

def RemovedBody377_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody377_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_133 : StackLang.HolProg 64 :=
.seq RemovedBody377_131 RemovedBody377_132

def RemovedBody377_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody377_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_136 : StackLang.HolProg 64 :=
.seq RemovedBody377_134 RemovedBody377_135

def RemovedBody377_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody377_133 RemovedBody377_136

def RemovedBody377_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody377_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody377_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody377_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody377_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody377_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def RemovedBody377_148 : StackLang.HolProg 64 :=
.seq RemovedBody377_146 RemovedBody377_147

def RemovedBody377_149 : StackLang.HolProg 64 :=
.seq RemovedBody377_145 RemovedBody377_148

def RemovedBody377_150 : StackLang.HolProg 64 :=
.seq RemovedBody377_144 RemovedBody377_149

def RemovedBody377_151 : StackLang.HolProg 64 :=
.seq RemovedBody377_143 RemovedBody377_150

def RemovedBody377_152 : StackLang.HolProg 64 :=
.seq RemovedBody377_142 RemovedBody377_151

def RemovedBody377_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_154 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody377_152 RemovedBody377_153

def RemovedBody377_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 35#64)

def RemovedBody377_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 44#64)

def RemovedBody377_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody377_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody377_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody377_166 : StackLang.HolProg 64 :=
.seq RemovedBody377_164 RemovedBody377_165

def RemovedBody377_167 : StackLang.HolProg 64 :=
.seq RemovedBody377_163 RemovedBody377_166

def RemovedBody377_168 : StackLang.HolProg 64 :=
.seq RemovedBody377_162 RemovedBody377_167

def RemovedBody377_169 : StackLang.HolProg 64 :=
.seq RemovedBody377_161 RemovedBody377_168

def RemovedBody377_170 : StackLang.HolProg 64 :=
.seq RemovedBody377_160 RemovedBody377_169

def RemovedBody377_171 : StackLang.HolProg 64 :=
.seq RemovedBody377_159 RemovedBody377_170

def RemovedBody377_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_173 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody377_171 RemovedBody377_172

def RemovedBody377_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_177 : StackLang.HolProg 64 :=
.seq RemovedBody377_175 RemovedBody377_176

def RemovedBody377_178 : StackLang.HolProg 64 :=
.seq RemovedBody377_174 RemovedBody377_177

def RemovedBody377_179 : StackLang.HolProg 64 :=
.seq RemovedBody377_173 RemovedBody377_178

def RemovedBody377_180 : StackLang.HolProg 64 :=
.seq RemovedBody377_158 RemovedBody377_179

def RemovedBody377_181 : StackLang.HolProg 64 :=
.seq RemovedBody377_157 RemovedBody377_180

def RemovedBody377_182 : StackLang.HolProg 64 :=
.seq RemovedBody377_156 RemovedBody377_181

def RemovedBody377_183 : StackLang.HolProg 64 :=
.seq RemovedBody377_155 RemovedBody377_182

def RemovedBody377_184 : StackLang.HolProg 64 :=
.seq RemovedBody377_154 RemovedBody377_183

def RemovedBody377_185 : StackLang.HolProg 64 :=
.seq RemovedBody377_141 RemovedBody377_184

def RemovedBody377_186 : StackLang.HolProg 64 :=
.seq RemovedBody377_140 RemovedBody377_185

def RemovedBody377_187 : StackLang.HolProg 64 :=
.seq RemovedBody377_139 RemovedBody377_186

def RemovedBody377_188 : StackLang.HolProg 64 :=
.seq RemovedBody377_138 RemovedBody377_187

def RemovedBody377_189 : StackLang.HolProg 64 :=
.seq RemovedBody377_137 RemovedBody377_188

def RemovedBody377_190 : StackLang.HolProg 64 :=
.seq RemovedBody377_130 RemovedBody377_189

def RemovedBody377_191 : StackLang.HolProg 64 :=
.seq RemovedBody377_129 RemovedBody377_190

def RemovedBody377_192 : StackLang.HolProg 64 :=
.seq RemovedBody377_128 RemovedBody377_191

def RemovedBody377_193 : StackLang.HolProg 64 :=
.seq RemovedBody377_127 RemovedBody377_192

def RemovedBody377_194 : StackLang.HolProg 64 :=
.seq RemovedBody377_120 RemovedBody377_193

def RemovedBody377_195 : StackLang.HolProg 64 :=
.seq RemovedBody377_119 RemovedBody377_194

def RemovedBody377_196 : StackLang.HolProg 64 :=
.seq RemovedBody377_118 RemovedBody377_195

def RemovedBody377_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_199 : StackLang.HolProg 64 :=
.seq RemovedBody377_197 RemovedBody377_198

def RemovedBody377_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody377_196 RemovedBody377_199

def RemovedBody377_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody377_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody377_204 : StackLang.HolProg 64 :=
.seq RemovedBody377_202 RemovedBody377_203

def RemovedBody377_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody377_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody377_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody377_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 35#64)

def RemovedBody377_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody377_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1090#64)

def RemovedBody377_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody377_213 : StackLang.HolProg 64 :=
.seq RemovedBody377_211 RemovedBody377_212

def RemovedBody377_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody377_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody377_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody377_217 : StackLang.HolProg 64 :=
.seq RemovedBody377_215 RemovedBody377_216

def RemovedBody377_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_219 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody377_217 RemovedBody377_218

def RemovedBody377_220 : StackLang.HolProg 64 :=
.seq RemovedBody377_214 RemovedBody377_219

def RemovedBody377_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody377_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody377_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 5

def RemovedBody377_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody377_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody377_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody377_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody377_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody377_230 : StackLang.HolProg 64 :=
.seq RemovedBody377_228 RemovedBody377_229

def RemovedBody377_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody377_232 : StackLang.HolProg 64 :=
.seq RemovedBody377_230 RemovedBody377_231

def RemovedBody377_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody377_234 : StackLang.HolProg 64 :=
.seq RemovedBody377_232 RemovedBody377_233

def RemovedBody377_235 : StackLang.HolProg 64 :=
.seq RemovedBody377_227 RemovedBody377_234

def RemovedBody377_236 : StackLang.HolProg 64 :=
.seq RemovedBody377_226 RemovedBody377_235

def RemovedBody377_237 : StackLang.HolProg 64 :=
.seq RemovedBody377_225 RemovedBody377_236

def RemovedBody377_238 : StackLang.HolProg 64 :=
.seq RemovedBody377_224 RemovedBody377_237

def RemovedBody377_239 : StackLang.HolProg 64 :=
.seq RemovedBody377_223 RemovedBody377_238

def RemovedBody377_240 : StackLang.HolProg 64 :=
.seq RemovedBody377_222 RemovedBody377_239

def RemovedBody377_241 : StackLang.HolProg 64 :=
.seq RemovedBody377_221 RemovedBody377_240

def RemovedBody377_242 : StackLang.HolProg 64 :=
.seq RemovedBody377_220 RemovedBody377_241

def RemovedBody377_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody377_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody377_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody377_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody377_250 : StackLang.HolProg 64 :=
.seq RemovedBody377_248 RemovedBody377_249

def RemovedBody377_251 : StackLang.HolProg 64 :=
.seq RemovedBody377_247 RemovedBody377_250

def RemovedBody377_252 : StackLang.HolProg 64 :=
.seq RemovedBody377_246 RemovedBody377_251

def RemovedBody377_253 : StackLang.HolProg 64 :=
.seq RemovedBody377_245 RemovedBody377_252

def RemovedBody377_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_255 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody377_256 : StackLang.HolProg 64 :=
.seq RemovedBody377_254 RemovedBody377_255

def RemovedBody377_257 : StackLang.HolProg 64 :=
.call (some (RemovedBody377_253, 0, 377, 4)) (Sum.inl 117) (some (RemovedBody377_256, 377, 5))

def RemovedBody377_258 : StackLang.HolProg 64 :=
.seq RemovedBody377_244 RemovedBody377_257

def RemovedBody377_259 : StackLang.HolProg 64 :=
.seq RemovedBody377_243 RemovedBody377_258

def RemovedBody377_260 : StackLang.HolProg 64 :=
.seq RemovedBody377_242 RemovedBody377_259

def RemovedBody377_261 : StackLang.HolProg 64 :=
.seq RemovedBody377_213 RemovedBody377_260

def RemovedBody377_262 : StackLang.HolProg 64 :=
.seq RemovedBody377_210 RemovedBody377_261

def RemovedBody377_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody377_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def RemovedBody377_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1091#64)

def RemovedBody377_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody377_270 : StackLang.HolProg 64 :=
.seq RemovedBody377_268 RemovedBody377_269

def RemovedBody377_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody377_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody377_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody377_274 : StackLang.HolProg 64 :=
.seq RemovedBody377_272 RemovedBody377_273

def RemovedBody377_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_276 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody377_274 RemovedBody377_275

def RemovedBody377_277 : StackLang.HolProg 64 :=
.seq RemovedBody377_271 RemovedBody377_276

def RemovedBody377_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody377_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody377_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 7

def RemovedBody377_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody377_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody377_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody377_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody377_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody377_287 : StackLang.HolProg 64 :=
.seq RemovedBody377_285 RemovedBody377_286

def RemovedBody377_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody377_289 : StackLang.HolProg 64 :=
.seq RemovedBody377_287 RemovedBody377_288

def RemovedBody377_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody377_291 : StackLang.HolProg 64 :=
.seq RemovedBody377_289 RemovedBody377_290

def RemovedBody377_292 : StackLang.HolProg 64 :=
.seq RemovedBody377_284 RemovedBody377_291

def RemovedBody377_293 : StackLang.HolProg 64 :=
.seq RemovedBody377_283 RemovedBody377_292

def RemovedBody377_294 : StackLang.HolProg 64 :=
.seq RemovedBody377_282 RemovedBody377_293

def RemovedBody377_295 : StackLang.HolProg 64 :=
.seq RemovedBody377_281 RemovedBody377_294

def RemovedBody377_296 : StackLang.HolProg 64 :=
.seq RemovedBody377_280 RemovedBody377_295

def RemovedBody377_297 : StackLang.HolProg 64 :=
.seq RemovedBody377_279 RemovedBody377_296

def RemovedBody377_298 : StackLang.HolProg 64 :=
.seq RemovedBody377_278 RemovedBody377_297

def RemovedBody377_299 : StackLang.HolProg 64 :=
.seq RemovedBody377_277 RemovedBody377_298

def RemovedBody377_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody377_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody377_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody377_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody377_307 : StackLang.HolProg 64 :=
.seq RemovedBody377_305 RemovedBody377_306

def RemovedBody377_308 : StackLang.HolProg 64 :=
.seq RemovedBody377_304 RemovedBody377_307

def RemovedBody377_309 : StackLang.HolProg 64 :=
.seq RemovedBody377_303 RemovedBody377_308

def RemovedBody377_310 : StackLang.HolProg 64 :=
.seq RemovedBody377_302 RemovedBody377_309

def RemovedBody377_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_312 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody377_313 : StackLang.HolProg 64 :=
.seq RemovedBody377_311 RemovedBody377_312

def RemovedBody377_314 : StackLang.HolProg 64 :=
.call (some (RemovedBody377_310, 0, 377, 6)) (Sum.inl 142) (some (RemovedBody377_313, 377, 7))

def RemovedBody377_315 : StackLang.HolProg 64 :=
.seq RemovedBody377_301 RemovedBody377_314

def RemovedBody377_316 : StackLang.HolProg 64 :=
.seq RemovedBody377_300 RemovedBody377_315

def RemovedBody377_317 : StackLang.HolProg 64 :=
.seq RemovedBody377_299 RemovedBody377_316

def RemovedBody377_318 : StackLang.HolProg 64 :=
.seq RemovedBody377_270 RemovedBody377_317

def RemovedBody377_319 : StackLang.HolProg 64 :=
.seq RemovedBody377_267 RemovedBody377_318

def RemovedBody377_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody377_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody377_323 : StackLang.HolProg 64 :=
.seq RemovedBody377_321 RemovedBody377_322

def RemovedBody377_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1092#64)

def RemovedBody377_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody377_327 : StackLang.HolProg 64 :=
.seq RemovedBody377_325 RemovedBody377_326

def RemovedBody377_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody377_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody377_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody377_331 : StackLang.HolProg 64 :=
.seq RemovedBody377_329 RemovedBody377_330

def RemovedBody377_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_333 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody377_331 RemovedBody377_332

def RemovedBody377_334 : StackLang.HolProg 64 :=
.seq RemovedBody377_328 RemovedBody377_333

def RemovedBody377_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody377_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody377_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 9

def RemovedBody377_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody377_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody377_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody377_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody377_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody377_344 : StackLang.HolProg 64 :=
.seq RemovedBody377_342 RemovedBody377_343

def RemovedBody377_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody377_346 : StackLang.HolProg 64 :=
.seq RemovedBody377_344 RemovedBody377_345

def RemovedBody377_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody377_348 : StackLang.HolProg 64 :=
.seq RemovedBody377_346 RemovedBody377_347

def RemovedBody377_349 : StackLang.HolProg 64 :=
.seq RemovedBody377_341 RemovedBody377_348

def RemovedBody377_350 : StackLang.HolProg 64 :=
.seq RemovedBody377_340 RemovedBody377_349

def RemovedBody377_351 : StackLang.HolProg 64 :=
.seq RemovedBody377_339 RemovedBody377_350

def RemovedBody377_352 : StackLang.HolProg 64 :=
.seq RemovedBody377_338 RemovedBody377_351

def RemovedBody377_353 : StackLang.HolProg 64 :=
.seq RemovedBody377_337 RemovedBody377_352

def RemovedBody377_354 : StackLang.HolProg 64 :=
.seq RemovedBody377_336 RemovedBody377_353

def RemovedBody377_355 : StackLang.HolProg 64 :=
.seq RemovedBody377_335 RemovedBody377_354

def RemovedBody377_356 : StackLang.HolProg 64 :=
.seq RemovedBody377_334 RemovedBody377_355

def RemovedBody377_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody377_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody377_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody377_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody377_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody377_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody377_366 : StackLang.HolProg 64 :=
.seq RemovedBody377_364 RemovedBody377_365

def RemovedBody377_367 : StackLang.HolProg 64 :=
.seq RemovedBody377_363 RemovedBody377_366

def RemovedBody377_368 : StackLang.HolProg 64 :=
.seq RemovedBody377_362 RemovedBody377_367

def RemovedBody377_369 : StackLang.HolProg 64 :=
.seq RemovedBody377_361 RemovedBody377_368

def RemovedBody377_370 : StackLang.HolProg 64 :=
.seq RemovedBody377_360 RemovedBody377_369

def RemovedBody377_371 : StackLang.HolProg 64 :=
.seq RemovedBody377_359 RemovedBody377_370

def RemovedBody377_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody377_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody377_374 : StackLang.HolProg 64 :=
.seq RemovedBody377_372 RemovedBody377_373

def RemovedBody377_375 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody377_376 : StackLang.HolProg 64 :=
.seq RemovedBody377_374 RemovedBody377_375

def RemovedBody377_377 : StackLang.HolProg 64 :=
.call (some (RemovedBody377_371, 0, 377, 8)) (Sum.inl 101) (some (RemovedBody377_376, 377, 9))

def RemovedBody377_378 : StackLang.HolProg 64 :=
.seq RemovedBody377_358 RemovedBody377_377

def RemovedBody377_379 : StackLang.HolProg 64 :=
.seq RemovedBody377_357 RemovedBody377_378

def RemovedBody377_380 : StackLang.HolProg 64 :=
.seq RemovedBody377_356 RemovedBody377_379

def RemovedBody377_381 : StackLang.HolProg 64 :=
.seq RemovedBody377_327 RemovedBody377_380

def RemovedBody377_382 : StackLang.HolProg 64 :=
.seq RemovedBody377_324 RemovedBody377_381

def RemovedBody377_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody377_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 45#64)

def RemovedBody377_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody377_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody377_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_392 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody377_393 : StackLang.HolProg 64 :=
.seq RemovedBody377_391 RemovedBody377_392

def RemovedBody377_394 : StackLang.HolProg 64 :=
.seq RemovedBody377_390 RemovedBody377_393

def RemovedBody377_395 : StackLang.HolProg 64 :=
.seq RemovedBody377_389 RemovedBody377_394

def RemovedBody377_396 : StackLang.HolProg 64 :=
.seq RemovedBody377_388 RemovedBody377_395

def RemovedBody377_397 : StackLang.HolProg 64 :=
.seq RemovedBody377_387 RemovedBody377_396

def RemovedBody377_398 : StackLang.HolProg 64 :=
.seq RemovedBody377_386 RemovedBody377_397

def RemovedBody377_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_400 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody377_398 RemovedBody377_399

def RemovedBody377_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody377_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody377_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody377_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody377_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody377_407 : StackLang.HolProg 64 :=
.seq RemovedBody377_405 RemovedBody377_406

def RemovedBody377_408 : StackLang.HolProg 64 :=
.seq RemovedBody377_404 RemovedBody377_407

def RemovedBody377_409 : StackLang.HolProg 64 :=
.seq RemovedBody377_403 RemovedBody377_408

def RemovedBody377_410 : StackLang.HolProg 64 :=
.seq RemovedBody377_402 RemovedBody377_409

def RemovedBody377_411 : StackLang.HolProg 64 :=
.seq RemovedBody377_401 RemovedBody377_410

def RemovedBody377_412 : StackLang.HolProg 64 :=
.seq RemovedBody377_400 RemovedBody377_411

def RemovedBody377_413 : StackLang.HolProg 64 :=
.seq RemovedBody377_385 RemovedBody377_412

def RemovedBody377_414 : StackLang.HolProg 64 :=
.seq RemovedBody377_384 RemovedBody377_413

def RemovedBody377_415 : StackLang.HolProg 64 :=
.seq RemovedBody377_383 RemovedBody377_414

def RemovedBody377_416 : StackLang.HolProg 64 :=
.seq RemovedBody377_382 RemovedBody377_415

def RemovedBody377_417 : StackLang.HolProg 64 :=
.seq RemovedBody377_323 RemovedBody377_416

def RemovedBody377_418 : StackLang.HolProg 64 :=
.seq RemovedBody377_320 RemovedBody377_417

def RemovedBody377_419 : StackLang.HolProg 64 :=
.seq RemovedBody377_319 RemovedBody377_418

def RemovedBody377_420 : StackLang.HolProg 64 :=
.seq RemovedBody377_266 RemovedBody377_419

def RemovedBody377_421 : StackLang.HolProg 64 :=
.seq RemovedBody377_265 RemovedBody377_420

def RemovedBody377_422 : StackLang.HolProg 64 :=
.seq RemovedBody377_264 RemovedBody377_421

def RemovedBody377_423 : StackLang.HolProg 64 :=
.seq RemovedBody377_263 RemovedBody377_422

def RemovedBody377_424 : StackLang.HolProg 64 :=
.seq RemovedBody377_262 RemovedBody377_423

def RemovedBody377_425 : StackLang.HolProg 64 :=
.seq RemovedBody377_209 RemovedBody377_424

def RemovedBody377_426 : StackLang.HolProg 64 :=
.seq RemovedBody377_208 RemovedBody377_425

def RemovedBody377_427 : StackLang.HolProg 64 :=
.seq RemovedBody377_207 RemovedBody377_426

def RemovedBody377_428 : StackLang.HolProg 64 :=
.seq RemovedBody377_206 RemovedBody377_427

def RemovedBody377_429 : StackLang.HolProg 64 :=
.seq RemovedBody377_205 RemovedBody377_428

def RemovedBody377_430 : StackLang.HolProg 64 :=
.seq RemovedBody377_204 RemovedBody377_429

def RemovedBody377_431 : StackLang.HolProg 64 :=
.seq RemovedBody377_201 RemovedBody377_430

def RemovedBody377_432 : StackLang.HolProg 64 :=
.seq RemovedBody377_200 RemovedBody377_431

def RemovedBody377_433 : StackLang.HolProg 64 :=
.seq RemovedBody377_117 RemovedBody377_432

def RemovedBody377_434 : StackLang.HolProg 64 :=
.seq RemovedBody377_116 RemovedBody377_433

def RemovedBody377_435 : StackLang.HolProg 64 :=
.seq RemovedBody377_115 RemovedBody377_434

def RemovedBody377_436 : StackLang.HolProg 64 :=
.seq RemovedBody377_114 RemovedBody377_435

def RemovedBody377_437 : StackLang.HolProg 64 :=
.seq RemovedBody377_43 RemovedBody377_436

def RemovedBody377_438 : StackLang.HolProg 64 :=
.seq RemovedBody377_34 RemovedBody377_437

def RemovedBody377_439 : StackLang.HolProg 64 :=
.seq RemovedBody377_33 RemovedBody377_438

def RemovedBody377_440 : StackLang.HolProg 64 :=
.seq RemovedBody377_32 RemovedBody377_439

def RemovedBody377_441 : StackLang.HolProg 64 :=
.seq RemovedBody377_31 RemovedBody377_440

def RemovedBody377_442 : StackLang.HolProg 64 :=
.seq RemovedBody377_30 RemovedBody377_441

def RemovedBody377_443 : StackLang.HolProg 64 :=
.seq RemovedBody377_29 RemovedBody377_442

def RemovedBody377_444 : StackLang.HolProg 64 :=
.seq RemovedBody377_28 RemovedBody377_443

def RemovedBody377_445 : StackLang.HolProg 64 :=
.seq RemovedBody377_27 RemovedBody377_444

def RemovedBody377_446 : StackLang.HolProg 64 :=
.seq RemovedBody377_26 RemovedBody377_445

def RemovedBody377_447 : StackLang.HolProg 64 :=
.seq RemovedBody377_25 RemovedBody377_446

def RemovedBody377_448 : StackLang.HolProg 64 :=
.seq RemovedBody377_24 RemovedBody377_447

def RemovedBody377_449 : StackLang.HolProg 64 :=
.seq RemovedBody377_9 RemovedBody377_448

def RemovedBody377_450 : StackLang.HolProg 64 :=
.seq RemovedBody377_8 RemovedBody377_449

def RemovedBody377_451 : StackLang.HolProg 64 :=
.seq RemovedBody377_7 RemovedBody377_450

def RemovedBody377_452 : StackLang.HolProg 64 :=
.seq RemovedBody377_6 RemovedBody377_451

def Removed377 : Nat × StackLang.HolProg 64 := (377, RemovedBody377_452)
theorem Removed377_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc377 = Removed377 := by
  kernel_rfl
#print axioms Removed377_eq
end InitECandidate.Proofs.BackendStages
