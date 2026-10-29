import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc362
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody362_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody362_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody362_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody362_3 : StackLang.HolProg 64 :=
.seq RemovedBody362_1 RemovedBody362_2

def RemovedBody362_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody362_3 RemovedBody362_4

def RemovedBody362_6 : StackLang.HolProg 64 :=
.seq RemovedBody362_0 RemovedBody362_5

def RemovedBody362_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody362_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody362_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody362_10 : StackLang.HolProg 64 :=
.seq RemovedBody362_8 RemovedBody362_9

def RemovedBody362_11 : StackLang.HolProg 64 :=
.seq RemovedBody362_7 RemovedBody362_10

def RemovedBody362_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 33#64)

def RemovedBody362_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody362_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody362_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody362_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody362_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody362_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody362_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody362_20 : StackLang.HolProg 64 :=
.seq RemovedBody362_18 RemovedBody362_19

def RemovedBody362_21 : StackLang.HolProg 64 :=
.seq RemovedBody362_17 RemovedBody362_20

def RemovedBody362_22 : StackLang.HolProg 64 :=
.seq RemovedBody362_16 RemovedBody362_21

def RemovedBody362_23 : StackLang.HolProg 64 :=
.seq RemovedBody362_15 RemovedBody362_22

def RemovedBody362_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1042#64)

def RemovedBody362_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody362_27 : StackLang.HolProg 64 :=
.seq RemovedBody362_25 RemovedBody362_26

def RemovedBody362_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody362_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody362_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody362_31 : StackLang.HolProg 64 :=
.seq RemovedBody362_29 RemovedBody362_30

def RemovedBody362_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody362_31 RemovedBody362_32

def RemovedBody362_34 : StackLang.HolProg 64 :=
.seq RemovedBody362_28 RemovedBody362_33

def RemovedBody362_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody362_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody362_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 362 3

def RemovedBody362_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody362_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody362_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody362_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody362_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody362_44 : StackLang.HolProg 64 :=
.seq RemovedBody362_42 RemovedBody362_43

def RemovedBody362_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody362_46 : StackLang.HolProg 64 :=
.seq RemovedBody362_44 RemovedBody362_45

def RemovedBody362_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody362_48 : StackLang.HolProg 64 :=
.seq RemovedBody362_46 RemovedBody362_47

def RemovedBody362_49 : StackLang.HolProg 64 :=
.seq RemovedBody362_41 RemovedBody362_48

def RemovedBody362_50 : StackLang.HolProg 64 :=
.seq RemovedBody362_40 RemovedBody362_49

def RemovedBody362_51 : StackLang.HolProg 64 :=
.seq RemovedBody362_39 RemovedBody362_50

def RemovedBody362_52 : StackLang.HolProg 64 :=
.seq RemovedBody362_38 RemovedBody362_51

def RemovedBody362_53 : StackLang.HolProg 64 :=
.seq RemovedBody362_37 RemovedBody362_52

def RemovedBody362_54 : StackLang.HolProg 64 :=
.seq RemovedBody362_36 RemovedBody362_53

def RemovedBody362_55 : StackLang.HolProg 64 :=
.seq RemovedBody362_35 RemovedBody362_54

def RemovedBody362_56 : StackLang.HolProg 64 :=
.seq RemovedBody362_34 RemovedBody362_55

def RemovedBody362_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody362_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody362_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody362_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody362_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody362_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody362_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody362_67 : StackLang.HolProg 64 :=
.seq RemovedBody362_65 RemovedBody362_66

def RemovedBody362_68 : StackLang.HolProg 64 :=
.seq RemovedBody362_64 RemovedBody362_67

def RemovedBody362_69 : StackLang.HolProg 64 :=
.seq RemovedBody362_63 RemovedBody362_68

def RemovedBody362_70 : StackLang.HolProg 64 :=
.seq RemovedBody362_62 RemovedBody362_69

def RemovedBody362_71 : StackLang.HolProg 64 :=
.seq RemovedBody362_61 RemovedBody362_70

def RemovedBody362_72 : StackLang.HolProg 64 :=
.seq RemovedBody362_60 RemovedBody362_71

def RemovedBody362_73 : StackLang.HolProg 64 :=
.seq RemovedBody362_59 RemovedBody362_72

def RemovedBody362_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody362_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody362_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody362_77 : StackLang.HolProg 64 :=
.seq RemovedBody362_75 RemovedBody362_76

def RemovedBody362_78 : StackLang.HolProg 64 :=
.seq RemovedBody362_74 RemovedBody362_77

def RemovedBody362_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody362_80 : StackLang.HolProg 64 :=
.seq RemovedBody362_78 RemovedBody362_79

def RemovedBody362_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody362_73, 0, 362, 2)) (Sum.inl 178) (some (RemovedBody362_80, 362, 3))

def RemovedBody362_82 : StackLang.HolProg 64 :=
.seq RemovedBody362_58 RemovedBody362_81

def RemovedBody362_83 : StackLang.HolProg 64 :=
.seq RemovedBody362_57 RemovedBody362_82

def RemovedBody362_84 : StackLang.HolProg 64 :=
.seq RemovedBody362_56 RemovedBody362_83

def RemovedBody362_85 : StackLang.HolProg 64 :=
.seq RemovedBody362_27 RemovedBody362_84

def RemovedBody362_86 : StackLang.HolProg 64 :=
.seq RemovedBody362_24 RemovedBody362_85

def RemovedBody362_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody362_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody362_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody362_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody362_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody362_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody362_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody362_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody362_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody362_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody362_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody362_102 : StackLang.HolProg 64 :=
.seq RemovedBody362_100 RemovedBody362_101

def RemovedBody362_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody362_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody362_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody362_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody362_107 : StackLang.HolProg 64 :=
.seq RemovedBody362_105 RemovedBody362_106

def RemovedBody362_108 : StackLang.HolProg 64 :=
.seq RemovedBody362_104 RemovedBody362_107

def RemovedBody362_109 : StackLang.HolProg 64 :=
.seq RemovedBody362_103 RemovedBody362_108

def RemovedBody362_110 : StackLang.HolProg 64 :=
.seq RemovedBody362_102 RemovedBody362_109

def RemovedBody362_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1043#64)

def RemovedBody362_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody362_114 : StackLang.HolProg 64 :=
.seq RemovedBody362_112 RemovedBody362_113

def RemovedBody362_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody362_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody362_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody362_118 : StackLang.HolProg 64 :=
.seq RemovedBody362_116 RemovedBody362_117

def RemovedBody362_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_120 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody362_118 RemovedBody362_119

def RemovedBody362_121 : StackLang.HolProg 64 :=
.seq RemovedBody362_115 RemovedBody362_120

def RemovedBody362_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody362_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody362_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 362 5

def RemovedBody362_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody362_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody362_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody362_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody362_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody362_131 : StackLang.HolProg 64 :=
.seq RemovedBody362_129 RemovedBody362_130

def RemovedBody362_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody362_133 : StackLang.HolProg 64 :=
.seq RemovedBody362_131 RemovedBody362_132

def RemovedBody362_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody362_135 : StackLang.HolProg 64 :=
.seq RemovedBody362_133 RemovedBody362_134

def RemovedBody362_136 : StackLang.HolProg 64 :=
.seq RemovedBody362_128 RemovedBody362_135

def RemovedBody362_137 : StackLang.HolProg 64 :=
.seq RemovedBody362_127 RemovedBody362_136

def RemovedBody362_138 : StackLang.HolProg 64 :=
.seq RemovedBody362_126 RemovedBody362_137

def RemovedBody362_139 : StackLang.HolProg 64 :=
.seq RemovedBody362_125 RemovedBody362_138

def RemovedBody362_140 : StackLang.HolProg 64 :=
.seq RemovedBody362_124 RemovedBody362_139

def RemovedBody362_141 : StackLang.HolProg 64 :=
.seq RemovedBody362_123 RemovedBody362_140

def RemovedBody362_142 : StackLang.HolProg 64 :=
.seq RemovedBody362_122 RemovedBody362_141

def RemovedBody362_143 : StackLang.HolProg 64 :=
.seq RemovedBody362_121 RemovedBody362_142

def RemovedBody362_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody362_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody362_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody362_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody362_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody362_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody362_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody362_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody362_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody362_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody362_157 : StackLang.HolProg 64 :=
.seq RemovedBody362_155 RemovedBody362_156

def RemovedBody362_158 : StackLang.HolProg 64 :=
.seq RemovedBody362_154 RemovedBody362_157

def RemovedBody362_159 : StackLang.HolProg 64 :=
.seq RemovedBody362_153 RemovedBody362_158

def RemovedBody362_160 : StackLang.HolProg 64 :=
.seq RemovedBody362_152 RemovedBody362_159

def RemovedBody362_161 : StackLang.HolProg 64 :=
.seq RemovedBody362_151 RemovedBody362_160

def RemovedBody362_162 : StackLang.HolProg 64 :=
.seq RemovedBody362_150 RemovedBody362_161

def RemovedBody362_163 : StackLang.HolProg 64 :=
.seq RemovedBody362_149 RemovedBody362_162

def RemovedBody362_164 : StackLang.HolProg 64 :=
.seq RemovedBody362_148 RemovedBody362_163

def RemovedBody362_165 : StackLang.HolProg 64 :=
.seq RemovedBody362_147 RemovedBody362_164

def RemovedBody362_166 : StackLang.HolProg 64 :=
.seq RemovedBody362_146 RemovedBody362_165

def RemovedBody362_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody362_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody362_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody362_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody362_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody362_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody362_173 : StackLang.HolProg 64 :=
.seq RemovedBody362_171 RemovedBody362_172

def RemovedBody362_174 : StackLang.HolProg 64 :=
.seq RemovedBody362_170 RemovedBody362_173

def RemovedBody362_175 : StackLang.HolProg 64 :=
.seq RemovedBody362_169 RemovedBody362_174

def RemovedBody362_176 : StackLang.HolProg 64 :=
.seq RemovedBody362_168 RemovedBody362_175

def RemovedBody362_177 : StackLang.HolProg 64 :=
.seq RemovedBody362_167 RemovedBody362_176

def RemovedBody362_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody362_179 : StackLang.HolProg 64 :=
.seq RemovedBody362_177 RemovedBody362_178

def RemovedBody362_180 : StackLang.HolProg 64 :=
.call (some (RemovedBody362_166, 0, 362, 4)) (Sum.inl 176) (some (RemovedBody362_179, 362, 5))

def RemovedBody362_181 : StackLang.HolProg 64 :=
.seq RemovedBody362_145 RemovedBody362_180

def RemovedBody362_182 : StackLang.HolProg 64 :=
.seq RemovedBody362_144 RemovedBody362_181

def RemovedBody362_183 : StackLang.HolProg 64 :=
.seq RemovedBody362_143 RemovedBody362_182

def RemovedBody362_184 : StackLang.HolProg 64 :=
.seq RemovedBody362_114 RemovedBody362_183

def RemovedBody362_185 : StackLang.HolProg 64 :=
.seq RemovedBody362_111 RemovedBody362_184

def RemovedBody362_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody362_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody362_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody362_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody362_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody362_193 : StackLang.HolProg 64 :=
.seq RemovedBody362_191 RemovedBody362_192

def RemovedBody362_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody362_195 : StackLang.HolProg 64 :=
.seq RemovedBody362_193 RemovedBody362_194

def RemovedBody362_196 : StackLang.HolProg 64 :=
.seq RemovedBody362_190 RemovedBody362_195

def RemovedBody362_197 : StackLang.HolProg 64 :=
.seq RemovedBody362_189 RemovedBody362_196

def RemovedBody362_198 : StackLang.HolProg 64 :=
.seq RemovedBody362_188 RemovedBody362_197

def RemovedBody362_199 : StackLang.HolProg 64 :=
.seq RemovedBody362_187 RemovedBody362_198

def RemovedBody362_200 : StackLang.HolProg 64 :=
.seq RemovedBody362_186 RemovedBody362_199

def RemovedBody362_201 : StackLang.HolProg 64 :=
.seq RemovedBody362_185 RemovedBody362_200

def RemovedBody362_202 : StackLang.HolProg 64 :=
.seq RemovedBody362_110 RemovedBody362_201

def RemovedBody362_203 : StackLang.HolProg 64 :=
.seq RemovedBody362_99 RemovedBody362_202

def RemovedBody362_204 : StackLang.HolProg 64 :=
.seq RemovedBody362_98 RemovedBody362_203

def RemovedBody362_205 : StackLang.HolProg 64 :=
.seq RemovedBody362_97 RemovedBody362_204

def RemovedBody362_206 : StackLang.HolProg 64 :=
.seq RemovedBody362_96 RemovedBody362_205

def RemovedBody362_207 : StackLang.HolProg 64 :=
.seq RemovedBody362_95 RemovedBody362_206

def RemovedBody362_208 : StackLang.HolProg 64 :=
.seq RemovedBody362_94 RemovedBody362_207

def RemovedBody362_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody362_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody362_211 : StackLang.HolProg 64 :=
.seq RemovedBody362_209 RemovedBody362_210

def RemovedBody362_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody362_208 RemovedBody362_211

def RemovedBody362_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody362_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody362_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody362_216 : StackLang.HolProg 64 :=
.seq RemovedBody362_214 RemovedBody362_215

def RemovedBody362_217 : StackLang.HolProg 64 :=
.seq RemovedBody362_213 RemovedBody362_216

def RemovedBody362_218 : StackLang.HolProg 64 :=
.seq RemovedBody362_212 RemovedBody362_217

def RemovedBody362_219 : StackLang.HolProg 64 :=
.seq RemovedBody362_93 RemovedBody362_218

def RemovedBody362_220 : StackLang.HolProg 64 :=
.loop RemovedBody362_219

def RemovedBody362_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody362_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody362_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody362_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody362_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody362_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody362_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody362_228 : StackLang.HolProg 64 :=
.seq RemovedBody362_226 RemovedBody362_227

def RemovedBody362_229 : StackLang.HolProg 64 :=
.seq RemovedBody362_225 RemovedBody362_228

def RemovedBody362_230 : StackLang.HolProg 64 :=
.seq RemovedBody362_224 RemovedBody362_229

def RemovedBody362_231 : StackLang.HolProg 64 :=
.seq RemovedBody362_223 RemovedBody362_230

def RemovedBody362_232 : StackLang.HolProg 64 :=
.seq RemovedBody362_222 RemovedBody362_231

def RemovedBody362_233 : StackLang.HolProg 64 :=
.seq RemovedBody362_221 RemovedBody362_232

def RemovedBody362_234 : StackLang.HolProg 64 :=
.seq RemovedBody362_220 RemovedBody362_233

def RemovedBody362_235 : StackLang.HolProg 64 :=
.seq RemovedBody362_92 RemovedBody362_234

def RemovedBody362_236 : StackLang.HolProg 64 :=
.seq RemovedBody362_91 RemovedBody362_235

def RemovedBody362_237 : StackLang.HolProg 64 :=
.seq RemovedBody362_90 RemovedBody362_236

def RemovedBody362_238 : StackLang.HolProg 64 :=
.seq RemovedBody362_89 RemovedBody362_237

def RemovedBody362_239 : StackLang.HolProg 64 :=
.seq RemovedBody362_88 RemovedBody362_238

def RemovedBody362_240 : StackLang.HolProg 64 :=
.seq RemovedBody362_87 RemovedBody362_239

def RemovedBody362_241 : StackLang.HolProg 64 :=
.seq RemovedBody362_86 RemovedBody362_240

def RemovedBody362_242 : StackLang.HolProg 64 :=
.seq RemovedBody362_23 RemovedBody362_241

def RemovedBody362_243 : StackLang.HolProg 64 :=
.seq RemovedBody362_14 RemovedBody362_242

def RemovedBody362_244 : StackLang.HolProg 64 :=
.seq RemovedBody362_13 RemovedBody362_243

def RemovedBody362_245 : StackLang.HolProg 64 :=
.seq RemovedBody362_12 RemovedBody362_244

def RemovedBody362_246 : StackLang.HolProg 64 :=
.seq RemovedBody362_11 RemovedBody362_245

def RemovedBody362_247 : StackLang.HolProg 64 :=
.seq RemovedBody362_6 RemovedBody362_246

def Removed362 : Nat × StackLang.HolProg 64 := (362, RemovedBody362_247)
theorem Removed362_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc362 = Removed362 := by
  kernel_rfl
#print axioms Removed362_eq
end InitECandidate.Proofs.BackendStages
