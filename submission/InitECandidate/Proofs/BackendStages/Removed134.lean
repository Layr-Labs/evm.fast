import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc134
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody134_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody134_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody134_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody134_3 : StackLang.HolProg 64 :=
.seq RemovedBody134_1 RemovedBody134_2

def RemovedBody134_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody134_3 RemovedBody134_4

def RemovedBody134_6 : StackLang.HolProg 64 :=
.seq RemovedBody134_0 RemovedBody134_5

def RemovedBody134_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody134_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody134_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody134_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody134_11 : StackLang.HolProg 64 :=
.seq RemovedBody134_9 RemovedBody134_10

def RemovedBody134_12 : StackLang.HolProg 64 :=
.seq RemovedBody134_8 RemovedBody134_11

def RemovedBody134_13 : StackLang.HolProg 64 :=
.seq RemovedBody134_7 RemovedBody134_12

def RemovedBody134_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody134_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody134_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody134_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody134_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody134_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody134_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody134_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody134_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody134_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody134_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody134_28 : StackLang.HolProg 64 :=
.seq RemovedBody134_26 RemovedBody134_27

def RemovedBody134_29 : StackLang.HolProg 64 :=
.seq RemovedBody134_25 RemovedBody134_28

def RemovedBody134_30 : StackLang.HolProg 64 :=
.seq RemovedBody134_24 RemovedBody134_29

def RemovedBody134_31 : StackLang.HolProg 64 :=
.seq RemovedBody134_23 RemovedBody134_30

def RemovedBody134_32 : StackLang.HolProg 64 :=
.seq RemovedBody134_22 RemovedBody134_31

def RemovedBody134_33 : StackLang.HolProg 64 :=
.seq RemovedBody134_21 RemovedBody134_32

def RemovedBody134_34 : StackLang.HolProg 64 :=
.seq RemovedBody134_20 RemovedBody134_33

def RemovedBody134_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody134_34 RemovedBody134_35

def RemovedBody134_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody134_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody134_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def RemovedBody134_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody134_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody134_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody134_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody134_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody134_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody134_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody134_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody134_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody134_49 : StackLang.HolProg 64 :=
.seq RemovedBody134_47 RemovedBody134_48

def RemovedBody134_50 : StackLang.HolProg 64 :=
.seq RemovedBody134_46 RemovedBody134_49

def RemovedBody134_51 : StackLang.HolProg 64 :=
.seq RemovedBody134_45 RemovedBody134_50

def RemovedBody134_52 : StackLang.HolProg 64 :=
.seq RemovedBody134_44 RemovedBody134_51

def RemovedBody134_53 : StackLang.HolProg 64 :=
.seq RemovedBody134_43 RemovedBody134_52

def RemovedBody134_54 : StackLang.HolProg 64 :=
.seq RemovedBody134_42 RemovedBody134_53

def RemovedBody134_55 : StackLang.HolProg 64 :=
.seq RemovedBody134_41 RemovedBody134_54

def RemovedBody134_56 : StackLang.HolProg 64 :=
.seq RemovedBody134_40 RemovedBody134_55

def RemovedBody134_57 : StackLang.HolProg 64 :=
.seq RemovedBody134_39 RemovedBody134_56

def RemovedBody134_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 87#64)

def RemovedBody134_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody134_61 : StackLang.HolProg 64 :=
.seq RemovedBody134_59 RemovedBody134_60

def RemovedBody134_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody134_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody134_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody134_65 : StackLang.HolProg 64 :=
.seq RemovedBody134_63 RemovedBody134_64

def RemovedBody134_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody134_65 RemovedBody134_66

def RemovedBody134_68 : StackLang.HolProg 64 :=
.seq RemovedBody134_62 RemovedBody134_67

def RemovedBody134_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody134_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody134_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 134 3

def RemovedBody134_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody134_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody134_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody134_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody134_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody134_78 : StackLang.HolProg 64 :=
.seq RemovedBody134_76 RemovedBody134_77

def RemovedBody134_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody134_80 : StackLang.HolProg 64 :=
.seq RemovedBody134_78 RemovedBody134_79

def RemovedBody134_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody134_82 : StackLang.HolProg 64 :=
.seq RemovedBody134_80 RemovedBody134_81

def RemovedBody134_83 : StackLang.HolProg 64 :=
.seq RemovedBody134_75 RemovedBody134_82

def RemovedBody134_84 : StackLang.HolProg 64 :=
.seq RemovedBody134_74 RemovedBody134_83

def RemovedBody134_85 : StackLang.HolProg 64 :=
.seq RemovedBody134_73 RemovedBody134_84

def RemovedBody134_86 : StackLang.HolProg 64 :=
.seq RemovedBody134_72 RemovedBody134_85

def RemovedBody134_87 : StackLang.HolProg 64 :=
.seq RemovedBody134_71 RemovedBody134_86

def RemovedBody134_88 : StackLang.HolProg 64 :=
.seq RemovedBody134_70 RemovedBody134_87

def RemovedBody134_89 : StackLang.HolProg 64 :=
.seq RemovedBody134_69 RemovedBody134_88

def RemovedBody134_90 : StackLang.HolProg 64 :=
.seq RemovedBody134_68 RemovedBody134_89

def RemovedBody134_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody134_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody134_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody134_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody134_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody134_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody134_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody134_101 : StackLang.HolProg 64 :=
.seq RemovedBody134_99 RemovedBody134_100

def RemovedBody134_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody134_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody134_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody134_105 : StackLang.HolProg 64 :=
.seq RemovedBody134_103 RemovedBody134_104

def RemovedBody134_106 : StackLang.HolProg 64 :=
.seq RemovedBody134_102 RemovedBody134_105

def RemovedBody134_107 : StackLang.HolProg 64 :=
.seq RemovedBody134_101 RemovedBody134_106

def RemovedBody134_108 : StackLang.HolProg 64 :=
.seq RemovedBody134_98 RemovedBody134_107

def RemovedBody134_109 : StackLang.HolProg 64 :=
.seq RemovedBody134_97 RemovedBody134_108

def RemovedBody134_110 : StackLang.HolProg 64 :=
.seq RemovedBody134_96 RemovedBody134_109

def RemovedBody134_111 : StackLang.HolProg 64 :=
.seq RemovedBody134_95 RemovedBody134_110

def RemovedBody134_112 : StackLang.HolProg 64 :=
.seq RemovedBody134_94 RemovedBody134_111

def RemovedBody134_113 : StackLang.HolProg 64 :=
.seq RemovedBody134_93 RemovedBody134_112

def RemovedBody134_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody134_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody134_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody134_117 : StackLang.HolProg 64 :=
.seq RemovedBody134_115 RemovedBody134_116

def RemovedBody134_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody134_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody134_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody134_121 : StackLang.HolProg 64 :=
.seq RemovedBody134_119 RemovedBody134_120

def RemovedBody134_122 : StackLang.HolProg 64 :=
.seq RemovedBody134_118 RemovedBody134_121

def RemovedBody134_123 : StackLang.HolProg 64 :=
.seq RemovedBody134_117 RemovedBody134_122

def RemovedBody134_124 : StackLang.HolProg 64 :=
.seq RemovedBody134_114 RemovedBody134_123

def RemovedBody134_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody134_126 : StackLang.HolProg 64 :=
.seq RemovedBody134_124 RemovedBody134_125

def RemovedBody134_127 : StackLang.HolProg 64 :=
.call (some (RemovedBody134_113, 0, 134, 2)) (Sum.inl 132) (some (RemovedBody134_126, 134, 3))

def RemovedBody134_128 : StackLang.HolProg 64 :=
.seq RemovedBody134_92 RemovedBody134_127

def RemovedBody134_129 : StackLang.HolProg 64 :=
.seq RemovedBody134_91 RemovedBody134_128

def RemovedBody134_130 : StackLang.HolProg 64 :=
.seq RemovedBody134_90 RemovedBody134_129

def RemovedBody134_131 : StackLang.HolProg 64 :=
.seq RemovedBody134_61 RemovedBody134_130

def RemovedBody134_132 : StackLang.HolProg 64 :=
.seq RemovedBody134_58 RemovedBody134_131

def RemovedBody134_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody134_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody134_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody134_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody134_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody134_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody134_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody134_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody134_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody134_142 : StackLang.HolProg 64 :=
.seq RemovedBody134_140 RemovedBody134_141

def RemovedBody134_143 : StackLang.HolProg 64 :=
.seq RemovedBody134_139 RemovedBody134_142

def RemovedBody134_144 : StackLang.HolProg 64 :=
.seq RemovedBody134_138 RemovedBody134_143

def RemovedBody134_145 : StackLang.HolProg 64 :=
.seq RemovedBody134_137 RemovedBody134_144

def RemovedBody134_146 : StackLang.HolProg 64 :=
.seq RemovedBody134_136 RemovedBody134_145

def RemovedBody134_147 : StackLang.HolProg 64 :=
.seq RemovedBody134_135 RemovedBody134_146

def RemovedBody134_148 : StackLang.HolProg 64 :=
.seq RemovedBody134_134 RemovedBody134_147

def RemovedBody134_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 88#64)

def RemovedBody134_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody134_152 : StackLang.HolProg 64 :=
.seq RemovedBody134_150 RemovedBody134_151

def RemovedBody134_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody134_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody134_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody134_156 : StackLang.HolProg 64 :=
.seq RemovedBody134_154 RemovedBody134_155

def RemovedBody134_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_158 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody134_156 RemovedBody134_157

def RemovedBody134_159 : StackLang.HolProg 64 :=
.seq RemovedBody134_153 RemovedBody134_158

def RemovedBody134_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody134_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody134_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 134 5

def RemovedBody134_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody134_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody134_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody134_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody134_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody134_169 : StackLang.HolProg 64 :=
.seq RemovedBody134_167 RemovedBody134_168

def RemovedBody134_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody134_171 : StackLang.HolProg 64 :=
.seq RemovedBody134_169 RemovedBody134_170

def RemovedBody134_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody134_173 : StackLang.HolProg 64 :=
.seq RemovedBody134_171 RemovedBody134_172

def RemovedBody134_174 : StackLang.HolProg 64 :=
.seq RemovedBody134_166 RemovedBody134_173

def RemovedBody134_175 : StackLang.HolProg 64 :=
.seq RemovedBody134_165 RemovedBody134_174

def RemovedBody134_176 : StackLang.HolProg 64 :=
.seq RemovedBody134_164 RemovedBody134_175

def RemovedBody134_177 : StackLang.HolProg 64 :=
.seq RemovedBody134_163 RemovedBody134_176

def RemovedBody134_178 : StackLang.HolProg 64 :=
.seq RemovedBody134_162 RemovedBody134_177

def RemovedBody134_179 : StackLang.HolProg 64 :=
.seq RemovedBody134_161 RemovedBody134_178

def RemovedBody134_180 : StackLang.HolProg 64 :=
.seq RemovedBody134_160 RemovedBody134_179

def RemovedBody134_181 : StackLang.HolProg 64 :=
.seq RemovedBody134_159 RemovedBody134_180

def RemovedBody134_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody134_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody134_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody134_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody134_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody134_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody134_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody134_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody134_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody134_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody134_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody134_196 : StackLang.HolProg 64 :=
.seq RemovedBody134_194 RemovedBody134_195

def RemovedBody134_197 : StackLang.HolProg 64 :=
.seq RemovedBody134_193 RemovedBody134_196

def RemovedBody134_198 : StackLang.HolProg 64 :=
.seq RemovedBody134_192 RemovedBody134_197

def RemovedBody134_199 : StackLang.HolProg 64 :=
.seq RemovedBody134_191 RemovedBody134_198

def RemovedBody134_200 : StackLang.HolProg 64 :=
.seq RemovedBody134_190 RemovedBody134_199

def RemovedBody134_201 : StackLang.HolProg 64 :=
.seq RemovedBody134_189 RemovedBody134_200

def RemovedBody134_202 : StackLang.HolProg 64 :=
.seq RemovedBody134_188 RemovedBody134_201

def RemovedBody134_203 : StackLang.HolProg 64 :=
.seq RemovedBody134_187 RemovedBody134_202

def RemovedBody134_204 : StackLang.HolProg 64 :=
.seq RemovedBody134_186 RemovedBody134_203

def RemovedBody134_205 : StackLang.HolProg 64 :=
.seq RemovedBody134_185 RemovedBody134_204

def RemovedBody134_206 : StackLang.HolProg 64 :=
.seq RemovedBody134_184 RemovedBody134_205

def RemovedBody134_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody134_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody134_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody134_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody134_211 : StackLang.HolProg 64 :=
.seq RemovedBody134_209 RemovedBody134_210

def RemovedBody134_212 : StackLang.HolProg 64 :=
.seq RemovedBody134_208 RemovedBody134_211

def RemovedBody134_213 : StackLang.HolProg 64 :=
.seq RemovedBody134_207 RemovedBody134_212

def RemovedBody134_214 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody134_215 : StackLang.HolProg 64 :=
.seq RemovedBody134_213 RemovedBody134_214

def RemovedBody134_216 : StackLang.HolProg 64 :=
.call (some (RemovedBody134_206, 0, 134, 4)) (Sum.inl 132) (some (RemovedBody134_215, 134, 5))

def RemovedBody134_217 : StackLang.HolProg 64 :=
.seq RemovedBody134_183 RemovedBody134_216

def RemovedBody134_218 : StackLang.HolProg 64 :=
.seq RemovedBody134_182 RemovedBody134_217

def RemovedBody134_219 : StackLang.HolProg 64 :=
.seq RemovedBody134_181 RemovedBody134_218

def RemovedBody134_220 : StackLang.HolProg 64 :=
.seq RemovedBody134_152 RemovedBody134_219

def RemovedBody134_221 : StackLang.HolProg 64 :=
.seq RemovedBody134_149 RemovedBody134_220

def RemovedBody134_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody134_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody134_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 89#64)

def RemovedBody134_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody134_227 : StackLang.HolProg 64 :=
.seq RemovedBody134_225 RemovedBody134_226

def RemovedBody134_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody134_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody134_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody134_231 : StackLang.HolProg 64 :=
.seq RemovedBody134_229 RemovedBody134_230

def RemovedBody134_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_233 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody134_231 RemovedBody134_232

def RemovedBody134_234 : StackLang.HolProg 64 :=
.seq RemovedBody134_228 RemovedBody134_233

def RemovedBody134_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody134_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody134_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 134 7

def RemovedBody134_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody134_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody134_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody134_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody134_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody134_244 : StackLang.HolProg 64 :=
.seq RemovedBody134_242 RemovedBody134_243

def RemovedBody134_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody134_246 : StackLang.HolProg 64 :=
.seq RemovedBody134_244 RemovedBody134_245

def RemovedBody134_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody134_248 : StackLang.HolProg 64 :=
.seq RemovedBody134_246 RemovedBody134_247

def RemovedBody134_249 : StackLang.HolProg 64 :=
.seq RemovedBody134_241 RemovedBody134_248

def RemovedBody134_250 : StackLang.HolProg 64 :=
.seq RemovedBody134_240 RemovedBody134_249

def RemovedBody134_251 : StackLang.HolProg 64 :=
.seq RemovedBody134_239 RemovedBody134_250

def RemovedBody134_252 : StackLang.HolProg 64 :=
.seq RemovedBody134_238 RemovedBody134_251

def RemovedBody134_253 : StackLang.HolProg 64 :=
.seq RemovedBody134_237 RemovedBody134_252

def RemovedBody134_254 : StackLang.HolProg 64 :=
.seq RemovedBody134_236 RemovedBody134_253

def RemovedBody134_255 : StackLang.HolProg 64 :=
.seq RemovedBody134_235 RemovedBody134_254

def RemovedBody134_256 : StackLang.HolProg 64 :=
.seq RemovedBody134_234 RemovedBody134_255

def RemovedBody134_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody134_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody134_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody134_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody134_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody134_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody134_266 : StackLang.HolProg 64 :=
.seq RemovedBody134_264 RemovedBody134_265

def RemovedBody134_267 : StackLang.HolProg 64 :=
.seq RemovedBody134_263 RemovedBody134_266

def RemovedBody134_268 : StackLang.HolProg 64 :=
.seq RemovedBody134_262 RemovedBody134_267

def RemovedBody134_269 : StackLang.HolProg 64 :=
.seq RemovedBody134_261 RemovedBody134_268

def RemovedBody134_270 : StackLang.HolProg 64 :=
.seq RemovedBody134_260 RemovedBody134_269

def RemovedBody134_271 : StackLang.HolProg 64 :=
.seq RemovedBody134_259 RemovedBody134_270

def RemovedBody134_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody134_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody134_274 : StackLang.HolProg 64 :=
.seq RemovedBody134_272 RemovedBody134_273

def RemovedBody134_275 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody134_276 : StackLang.HolProg 64 :=
.seq RemovedBody134_274 RemovedBody134_275

def RemovedBody134_277 : StackLang.HolProg 64 :=
.call (some (RemovedBody134_271, 0, 134, 6)) (Sum.inl 131) (some (RemovedBody134_276, 134, 7))

def RemovedBody134_278 : StackLang.HolProg 64 :=
.seq RemovedBody134_258 RemovedBody134_277

def RemovedBody134_279 : StackLang.HolProg 64 :=
.seq RemovedBody134_257 RemovedBody134_278

def RemovedBody134_280 : StackLang.HolProg 64 :=
.seq RemovedBody134_256 RemovedBody134_279

def RemovedBody134_281 : StackLang.HolProg 64 :=
.seq RemovedBody134_227 RemovedBody134_280

def RemovedBody134_282 : StackLang.HolProg 64 :=
.seq RemovedBody134_224 RemovedBody134_281

def RemovedBody134_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody134_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody134_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def RemovedBody134_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody134_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody134_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody134_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 118

def RemovedBody134_292 : StackLang.HolProg 64 :=
.seq RemovedBody134_290 RemovedBody134_291

def RemovedBody134_293 : StackLang.HolProg 64 :=
.seq RemovedBody134_289 RemovedBody134_292

def RemovedBody134_294 : StackLang.HolProg 64 :=
.seq RemovedBody134_288 RemovedBody134_293

def RemovedBody134_295 : StackLang.HolProg 64 :=
.seq RemovedBody134_287 RemovedBody134_294

def RemovedBody134_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody134_297 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody134_295 RemovedBody134_296

def RemovedBody134_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody134_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody134_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody134_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody134_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody134_303 : StackLang.HolProg 64 :=
.seq RemovedBody134_301 RemovedBody134_302

def RemovedBody134_304 : StackLang.HolProg 64 :=
.seq RemovedBody134_300 RemovedBody134_303

def RemovedBody134_305 : StackLang.HolProg 64 :=
.seq RemovedBody134_299 RemovedBody134_304

def RemovedBody134_306 : StackLang.HolProg 64 :=
.seq RemovedBody134_298 RemovedBody134_305

def RemovedBody134_307 : StackLang.HolProg 64 :=
.seq RemovedBody134_297 RemovedBody134_306

def RemovedBody134_308 : StackLang.HolProg 64 :=
.seq RemovedBody134_286 RemovedBody134_307

def RemovedBody134_309 : StackLang.HolProg 64 :=
.seq RemovedBody134_285 RemovedBody134_308

def RemovedBody134_310 : StackLang.HolProg 64 :=
.seq RemovedBody134_284 RemovedBody134_309

def RemovedBody134_311 : StackLang.HolProg 64 :=
.seq RemovedBody134_283 RemovedBody134_310

def RemovedBody134_312 : StackLang.HolProg 64 :=
.seq RemovedBody134_282 RemovedBody134_311

def RemovedBody134_313 : StackLang.HolProg 64 :=
.seq RemovedBody134_223 RemovedBody134_312

def RemovedBody134_314 : StackLang.HolProg 64 :=
.seq RemovedBody134_222 RemovedBody134_313

def RemovedBody134_315 : StackLang.HolProg 64 :=
.seq RemovedBody134_221 RemovedBody134_314

def RemovedBody134_316 : StackLang.HolProg 64 :=
.seq RemovedBody134_148 RemovedBody134_315

def RemovedBody134_317 : StackLang.HolProg 64 :=
.seq RemovedBody134_133 RemovedBody134_316

def RemovedBody134_318 : StackLang.HolProg 64 :=
.seq RemovedBody134_132 RemovedBody134_317

def RemovedBody134_319 : StackLang.HolProg 64 :=
.seq RemovedBody134_57 RemovedBody134_318

def RemovedBody134_320 : StackLang.HolProg 64 :=
.seq RemovedBody134_38 RemovedBody134_319

def RemovedBody134_321 : StackLang.HolProg 64 :=
.seq RemovedBody134_37 RemovedBody134_320

def RemovedBody134_322 : StackLang.HolProg 64 :=
.seq RemovedBody134_36 RemovedBody134_321

def RemovedBody134_323 : StackLang.HolProg 64 :=
.seq RemovedBody134_19 RemovedBody134_322

def RemovedBody134_324 : StackLang.HolProg 64 :=
.seq RemovedBody134_18 RemovedBody134_323

def RemovedBody134_325 : StackLang.HolProg 64 :=
.seq RemovedBody134_17 RemovedBody134_324

def RemovedBody134_326 : StackLang.HolProg 64 :=
.seq RemovedBody134_16 RemovedBody134_325

def RemovedBody134_327 : StackLang.HolProg 64 :=
.seq RemovedBody134_15 RemovedBody134_326

def RemovedBody134_328 : StackLang.HolProg 64 :=
.seq RemovedBody134_14 RemovedBody134_327

def RemovedBody134_329 : StackLang.HolProg 64 :=
.seq RemovedBody134_13 RemovedBody134_328

def RemovedBody134_330 : StackLang.HolProg 64 :=
.seq RemovedBody134_6 RemovedBody134_329

def Removed134 : Nat × StackLang.HolProg 64 := (134, RemovedBody134_330)
theorem Removed134_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc134 = Removed134 := by
  kernel_rfl
#print axioms Removed134_eq
end InitECandidate.Proofs.BackendStages
