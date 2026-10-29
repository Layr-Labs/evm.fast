import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc133
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody133_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody133_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody133_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody133_3 : StackLang.HolProg 64 :=
.seq RemovedBody133_1 RemovedBody133_2

def RemovedBody133_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody133_3 RemovedBody133_4

def RemovedBody133_6 : StackLang.HolProg 64 :=
.seq RemovedBody133_0 RemovedBody133_5

def RemovedBody133_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody133_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody133_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody133_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody133_11 : StackLang.HolProg 64 :=
.seq RemovedBody133_9 RemovedBody133_10

def RemovedBody133_12 : StackLang.HolProg 64 :=
.seq RemovedBody133_8 RemovedBody133_11

def RemovedBody133_13 : StackLang.HolProg 64 :=
.seq RemovedBody133_7 RemovedBody133_12

def RemovedBody133_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody133_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody133_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody133_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody133_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody133_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody133_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody133_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody133_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody133_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody133_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody133_28 : StackLang.HolProg 64 :=
.seq RemovedBody133_26 RemovedBody133_27

def RemovedBody133_29 : StackLang.HolProg 64 :=
.seq RemovedBody133_25 RemovedBody133_28

def RemovedBody133_30 : StackLang.HolProg 64 :=
.seq RemovedBody133_24 RemovedBody133_29

def RemovedBody133_31 : StackLang.HolProg 64 :=
.seq RemovedBody133_23 RemovedBody133_30

def RemovedBody133_32 : StackLang.HolProg 64 :=
.seq RemovedBody133_22 RemovedBody133_31

def RemovedBody133_33 : StackLang.HolProg 64 :=
.seq RemovedBody133_21 RemovedBody133_32

def RemovedBody133_34 : StackLang.HolProg 64 :=
.seq RemovedBody133_20 RemovedBody133_33

def RemovedBody133_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody133_34 RemovedBody133_35

def RemovedBody133_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody133_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody133_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def RemovedBody133_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody133_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody133_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody133_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody133_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody133_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody133_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody133_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody133_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody133_49 : StackLang.HolProg 64 :=
.seq RemovedBody133_47 RemovedBody133_48

def RemovedBody133_50 : StackLang.HolProg 64 :=
.seq RemovedBody133_46 RemovedBody133_49

def RemovedBody133_51 : StackLang.HolProg 64 :=
.seq RemovedBody133_45 RemovedBody133_50

def RemovedBody133_52 : StackLang.HolProg 64 :=
.seq RemovedBody133_44 RemovedBody133_51

def RemovedBody133_53 : StackLang.HolProg 64 :=
.seq RemovedBody133_43 RemovedBody133_52

def RemovedBody133_54 : StackLang.HolProg 64 :=
.seq RemovedBody133_42 RemovedBody133_53

def RemovedBody133_55 : StackLang.HolProg 64 :=
.seq RemovedBody133_41 RemovedBody133_54

def RemovedBody133_56 : StackLang.HolProg 64 :=
.seq RemovedBody133_40 RemovedBody133_55

def RemovedBody133_57 : StackLang.HolProg 64 :=
.seq RemovedBody133_39 RemovedBody133_56

def RemovedBody133_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 84#64)

def RemovedBody133_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody133_61 : StackLang.HolProg 64 :=
.seq RemovedBody133_59 RemovedBody133_60

def RemovedBody133_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody133_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody133_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody133_65 : StackLang.HolProg 64 :=
.seq RemovedBody133_63 RemovedBody133_64

def RemovedBody133_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody133_65 RemovedBody133_66

def RemovedBody133_68 : StackLang.HolProg 64 :=
.seq RemovedBody133_62 RemovedBody133_67

def RemovedBody133_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody133_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody133_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 133 3

def RemovedBody133_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody133_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody133_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody133_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody133_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody133_78 : StackLang.HolProg 64 :=
.seq RemovedBody133_76 RemovedBody133_77

def RemovedBody133_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody133_80 : StackLang.HolProg 64 :=
.seq RemovedBody133_78 RemovedBody133_79

def RemovedBody133_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody133_82 : StackLang.HolProg 64 :=
.seq RemovedBody133_80 RemovedBody133_81

def RemovedBody133_83 : StackLang.HolProg 64 :=
.seq RemovedBody133_75 RemovedBody133_82

def RemovedBody133_84 : StackLang.HolProg 64 :=
.seq RemovedBody133_74 RemovedBody133_83

def RemovedBody133_85 : StackLang.HolProg 64 :=
.seq RemovedBody133_73 RemovedBody133_84

def RemovedBody133_86 : StackLang.HolProg 64 :=
.seq RemovedBody133_72 RemovedBody133_85

def RemovedBody133_87 : StackLang.HolProg 64 :=
.seq RemovedBody133_71 RemovedBody133_86

def RemovedBody133_88 : StackLang.HolProg 64 :=
.seq RemovedBody133_70 RemovedBody133_87

def RemovedBody133_89 : StackLang.HolProg 64 :=
.seq RemovedBody133_69 RemovedBody133_88

def RemovedBody133_90 : StackLang.HolProg 64 :=
.seq RemovedBody133_68 RemovedBody133_89

def RemovedBody133_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody133_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody133_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody133_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody133_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody133_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody133_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody133_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody133_102 : StackLang.HolProg 64 :=
.seq RemovedBody133_100 RemovedBody133_101

def RemovedBody133_103 : StackLang.HolProg 64 :=
.seq RemovedBody133_99 RemovedBody133_102

def RemovedBody133_104 : StackLang.HolProg 64 :=
.seq RemovedBody133_98 RemovedBody133_103

def RemovedBody133_105 : StackLang.HolProg 64 :=
.seq RemovedBody133_97 RemovedBody133_104

def RemovedBody133_106 : StackLang.HolProg 64 :=
.seq RemovedBody133_96 RemovedBody133_105

def RemovedBody133_107 : StackLang.HolProg 64 :=
.seq RemovedBody133_95 RemovedBody133_106

def RemovedBody133_108 : StackLang.HolProg 64 :=
.seq RemovedBody133_94 RemovedBody133_107

def RemovedBody133_109 : StackLang.HolProg 64 :=
.seq RemovedBody133_93 RemovedBody133_108

def RemovedBody133_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody133_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody133_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody133_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody133_114 : StackLang.HolProg 64 :=
.seq RemovedBody133_112 RemovedBody133_113

def RemovedBody133_115 : StackLang.HolProg 64 :=
.seq RemovedBody133_111 RemovedBody133_114

def RemovedBody133_116 : StackLang.HolProg 64 :=
.seq RemovedBody133_110 RemovedBody133_115

def RemovedBody133_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody133_118 : StackLang.HolProg 64 :=
.seq RemovedBody133_116 RemovedBody133_117

def RemovedBody133_119 : StackLang.HolProg 64 :=
.call (some (RemovedBody133_109, 0, 133, 2)) (Sum.inl 132) (some (RemovedBody133_118, 133, 3))

def RemovedBody133_120 : StackLang.HolProg 64 :=
.seq RemovedBody133_92 RemovedBody133_119

def RemovedBody133_121 : StackLang.HolProg 64 :=
.seq RemovedBody133_91 RemovedBody133_120

def RemovedBody133_122 : StackLang.HolProg 64 :=
.seq RemovedBody133_90 RemovedBody133_121

def RemovedBody133_123 : StackLang.HolProg 64 :=
.seq RemovedBody133_61 RemovedBody133_122

def RemovedBody133_124 : StackLang.HolProg 64 :=
.seq RemovedBody133_58 RemovedBody133_123

def RemovedBody133_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody133_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody133_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody133_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody133_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody133_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody133_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody133_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody133_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody133_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody133_135 : StackLang.HolProg 64 :=
.seq RemovedBody133_133 RemovedBody133_134

def RemovedBody133_136 : StackLang.HolProg 64 :=
.seq RemovedBody133_132 RemovedBody133_135

def RemovedBody133_137 : StackLang.HolProg 64 :=
.seq RemovedBody133_131 RemovedBody133_136

def RemovedBody133_138 : StackLang.HolProg 64 :=
.seq RemovedBody133_130 RemovedBody133_137

def RemovedBody133_139 : StackLang.HolProg 64 :=
.seq RemovedBody133_129 RemovedBody133_138

def RemovedBody133_140 : StackLang.HolProg 64 :=
.seq RemovedBody133_128 RemovedBody133_139

def RemovedBody133_141 : StackLang.HolProg 64 :=
.seq RemovedBody133_127 RemovedBody133_140

def RemovedBody133_142 : StackLang.HolProg 64 :=
.seq RemovedBody133_126 RemovedBody133_141

def RemovedBody133_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 85#64)

def RemovedBody133_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody133_146 : StackLang.HolProg 64 :=
.seq RemovedBody133_144 RemovedBody133_145

def RemovedBody133_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody133_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody133_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody133_150 : StackLang.HolProg 64 :=
.seq RemovedBody133_148 RemovedBody133_149

def RemovedBody133_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody133_150 RemovedBody133_151

def RemovedBody133_153 : StackLang.HolProg 64 :=
.seq RemovedBody133_147 RemovedBody133_152

def RemovedBody133_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody133_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody133_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 133 5

def RemovedBody133_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody133_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody133_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody133_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody133_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody133_163 : StackLang.HolProg 64 :=
.seq RemovedBody133_161 RemovedBody133_162

def RemovedBody133_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody133_165 : StackLang.HolProg 64 :=
.seq RemovedBody133_163 RemovedBody133_164

def RemovedBody133_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody133_167 : StackLang.HolProg 64 :=
.seq RemovedBody133_165 RemovedBody133_166

def RemovedBody133_168 : StackLang.HolProg 64 :=
.seq RemovedBody133_160 RemovedBody133_167

def RemovedBody133_169 : StackLang.HolProg 64 :=
.seq RemovedBody133_159 RemovedBody133_168

def RemovedBody133_170 : StackLang.HolProg 64 :=
.seq RemovedBody133_158 RemovedBody133_169

def RemovedBody133_171 : StackLang.HolProg 64 :=
.seq RemovedBody133_157 RemovedBody133_170

def RemovedBody133_172 : StackLang.HolProg 64 :=
.seq RemovedBody133_156 RemovedBody133_171

def RemovedBody133_173 : StackLang.HolProg 64 :=
.seq RemovedBody133_155 RemovedBody133_172

def RemovedBody133_174 : StackLang.HolProg 64 :=
.seq RemovedBody133_154 RemovedBody133_173

def RemovedBody133_175 : StackLang.HolProg 64 :=
.seq RemovedBody133_153 RemovedBody133_174

def RemovedBody133_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody133_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody133_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody133_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody133_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody133_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody133_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody133_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody133_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody133_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody133_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody133_190 : StackLang.HolProg 64 :=
.seq RemovedBody133_188 RemovedBody133_189

def RemovedBody133_191 : StackLang.HolProg 64 :=
.seq RemovedBody133_187 RemovedBody133_190

def RemovedBody133_192 : StackLang.HolProg 64 :=
.seq RemovedBody133_186 RemovedBody133_191

def RemovedBody133_193 : StackLang.HolProg 64 :=
.seq RemovedBody133_185 RemovedBody133_192

def RemovedBody133_194 : StackLang.HolProg 64 :=
.seq RemovedBody133_184 RemovedBody133_193

def RemovedBody133_195 : StackLang.HolProg 64 :=
.seq RemovedBody133_183 RemovedBody133_194

def RemovedBody133_196 : StackLang.HolProg 64 :=
.seq RemovedBody133_182 RemovedBody133_195

def RemovedBody133_197 : StackLang.HolProg 64 :=
.seq RemovedBody133_181 RemovedBody133_196

def RemovedBody133_198 : StackLang.HolProg 64 :=
.seq RemovedBody133_180 RemovedBody133_197

def RemovedBody133_199 : StackLang.HolProg 64 :=
.seq RemovedBody133_179 RemovedBody133_198

def RemovedBody133_200 : StackLang.HolProg 64 :=
.seq RemovedBody133_178 RemovedBody133_199

def RemovedBody133_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody133_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody133_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody133_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody133_205 : StackLang.HolProg 64 :=
.seq RemovedBody133_203 RemovedBody133_204

def RemovedBody133_206 : StackLang.HolProg 64 :=
.seq RemovedBody133_202 RemovedBody133_205

def RemovedBody133_207 : StackLang.HolProg 64 :=
.seq RemovedBody133_201 RemovedBody133_206

def RemovedBody133_208 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody133_209 : StackLang.HolProg 64 :=
.seq RemovedBody133_207 RemovedBody133_208

def RemovedBody133_210 : StackLang.HolProg 64 :=
.call (some (RemovedBody133_200, 0, 133, 4)) (Sum.inl 132) (some (RemovedBody133_209, 133, 5))

def RemovedBody133_211 : StackLang.HolProg 64 :=
.seq RemovedBody133_177 RemovedBody133_210

def RemovedBody133_212 : StackLang.HolProg 64 :=
.seq RemovedBody133_176 RemovedBody133_211

def RemovedBody133_213 : StackLang.HolProg 64 :=
.seq RemovedBody133_175 RemovedBody133_212

def RemovedBody133_214 : StackLang.HolProg 64 :=
.seq RemovedBody133_146 RemovedBody133_213

def RemovedBody133_215 : StackLang.HolProg 64 :=
.seq RemovedBody133_143 RemovedBody133_214

def RemovedBody133_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody133_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody133_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 86#64)

def RemovedBody133_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody133_221 : StackLang.HolProg 64 :=
.seq RemovedBody133_219 RemovedBody133_220

def RemovedBody133_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody133_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody133_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody133_225 : StackLang.HolProg 64 :=
.seq RemovedBody133_223 RemovedBody133_224

def RemovedBody133_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_227 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody133_225 RemovedBody133_226

def RemovedBody133_228 : StackLang.HolProg 64 :=
.seq RemovedBody133_222 RemovedBody133_227

def RemovedBody133_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody133_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody133_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 133 7

def RemovedBody133_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody133_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody133_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody133_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody133_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody133_238 : StackLang.HolProg 64 :=
.seq RemovedBody133_236 RemovedBody133_237

def RemovedBody133_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody133_240 : StackLang.HolProg 64 :=
.seq RemovedBody133_238 RemovedBody133_239

def RemovedBody133_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody133_242 : StackLang.HolProg 64 :=
.seq RemovedBody133_240 RemovedBody133_241

def RemovedBody133_243 : StackLang.HolProg 64 :=
.seq RemovedBody133_235 RemovedBody133_242

def RemovedBody133_244 : StackLang.HolProg 64 :=
.seq RemovedBody133_234 RemovedBody133_243

def RemovedBody133_245 : StackLang.HolProg 64 :=
.seq RemovedBody133_233 RemovedBody133_244

def RemovedBody133_246 : StackLang.HolProg 64 :=
.seq RemovedBody133_232 RemovedBody133_245

def RemovedBody133_247 : StackLang.HolProg 64 :=
.seq RemovedBody133_231 RemovedBody133_246

def RemovedBody133_248 : StackLang.HolProg 64 :=
.seq RemovedBody133_230 RemovedBody133_247

def RemovedBody133_249 : StackLang.HolProg 64 :=
.seq RemovedBody133_229 RemovedBody133_248

def RemovedBody133_250 : StackLang.HolProg 64 :=
.seq RemovedBody133_228 RemovedBody133_249

def RemovedBody133_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody133_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody133_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody133_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody133_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody133_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody133_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody133_261 : StackLang.HolProg 64 :=
.seq RemovedBody133_259 RemovedBody133_260

def RemovedBody133_262 : StackLang.HolProg 64 :=
.seq RemovedBody133_258 RemovedBody133_261

def RemovedBody133_263 : StackLang.HolProg 64 :=
.seq RemovedBody133_257 RemovedBody133_262

def RemovedBody133_264 : StackLang.HolProg 64 :=
.seq RemovedBody133_256 RemovedBody133_263

def RemovedBody133_265 : StackLang.HolProg 64 :=
.seq RemovedBody133_255 RemovedBody133_264

def RemovedBody133_266 : StackLang.HolProg 64 :=
.seq RemovedBody133_254 RemovedBody133_265

def RemovedBody133_267 : StackLang.HolProg 64 :=
.seq RemovedBody133_253 RemovedBody133_266

def RemovedBody133_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody133_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody133_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody133_271 : StackLang.HolProg 64 :=
.seq RemovedBody133_269 RemovedBody133_270

def RemovedBody133_272 : StackLang.HolProg 64 :=
.seq RemovedBody133_268 RemovedBody133_271

def RemovedBody133_273 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody133_274 : StackLang.HolProg 64 :=
.seq RemovedBody133_272 RemovedBody133_273

def RemovedBody133_275 : StackLang.HolProg 64 :=
.call (some (RemovedBody133_267, 0, 133, 6)) (Sum.inl 130) (some (RemovedBody133_274, 133, 7))

def RemovedBody133_276 : StackLang.HolProg 64 :=
.seq RemovedBody133_252 RemovedBody133_275

def RemovedBody133_277 : StackLang.HolProg 64 :=
.seq RemovedBody133_251 RemovedBody133_276

def RemovedBody133_278 : StackLang.HolProg 64 :=
.seq RemovedBody133_250 RemovedBody133_277

def RemovedBody133_279 : StackLang.HolProg 64 :=
.seq RemovedBody133_221 RemovedBody133_278

def RemovedBody133_280 : StackLang.HolProg 64 :=
.seq RemovedBody133_218 RemovedBody133_279

def RemovedBody133_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody133_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody133_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody133_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def RemovedBody133_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody133_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody133_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody133_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 118

def RemovedBody133_291 : StackLang.HolProg 64 :=
.seq RemovedBody133_289 RemovedBody133_290

def RemovedBody133_292 : StackLang.HolProg 64 :=
.seq RemovedBody133_288 RemovedBody133_291

def RemovedBody133_293 : StackLang.HolProg 64 :=
.seq RemovedBody133_287 RemovedBody133_292

def RemovedBody133_294 : StackLang.HolProg 64 :=
.seq RemovedBody133_286 RemovedBody133_293

def RemovedBody133_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody133_296 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody133_294 RemovedBody133_295

def RemovedBody133_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody133_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody133_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody133_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody133_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody133_302 : StackLang.HolProg 64 :=
.seq RemovedBody133_300 RemovedBody133_301

def RemovedBody133_303 : StackLang.HolProg 64 :=
.seq RemovedBody133_299 RemovedBody133_302

def RemovedBody133_304 : StackLang.HolProg 64 :=
.seq RemovedBody133_298 RemovedBody133_303

def RemovedBody133_305 : StackLang.HolProg 64 :=
.seq RemovedBody133_297 RemovedBody133_304

def RemovedBody133_306 : StackLang.HolProg 64 :=
.seq RemovedBody133_296 RemovedBody133_305

def RemovedBody133_307 : StackLang.HolProg 64 :=
.seq RemovedBody133_285 RemovedBody133_306

def RemovedBody133_308 : StackLang.HolProg 64 :=
.seq RemovedBody133_284 RemovedBody133_307

def RemovedBody133_309 : StackLang.HolProg 64 :=
.seq RemovedBody133_283 RemovedBody133_308

def RemovedBody133_310 : StackLang.HolProg 64 :=
.seq RemovedBody133_282 RemovedBody133_309

def RemovedBody133_311 : StackLang.HolProg 64 :=
.seq RemovedBody133_281 RemovedBody133_310

def RemovedBody133_312 : StackLang.HolProg 64 :=
.seq RemovedBody133_280 RemovedBody133_311

def RemovedBody133_313 : StackLang.HolProg 64 :=
.seq RemovedBody133_217 RemovedBody133_312

def RemovedBody133_314 : StackLang.HolProg 64 :=
.seq RemovedBody133_216 RemovedBody133_313

def RemovedBody133_315 : StackLang.HolProg 64 :=
.seq RemovedBody133_215 RemovedBody133_314

def RemovedBody133_316 : StackLang.HolProg 64 :=
.seq RemovedBody133_142 RemovedBody133_315

def RemovedBody133_317 : StackLang.HolProg 64 :=
.seq RemovedBody133_125 RemovedBody133_316

def RemovedBody133_318 : StackLang.HolProg 64 :=
.seq RemovedBody133_124 RemovedBody133_317

def RemovedBody133_319 : StackLang.HolProg 64 :=
.seq RemovedBody133_57 RemovedBody133_318

def RemovedBody133_320 : StackLang.HolProg 64 :=
.seq RemovedBody133_38 RemovedBody133_319

def RemovedBody133_321 : StackLang.HolProg 64 :=
.seq RemovedBody133_37 RemovedBody133_320

def RemovedBody133_322 : StackLang.HolProg 64 :=
.seq RemovedBody133_36 RemovedBody133_321

def RemovedBody133_323 : StackLang.HolProg 64 :=
.seq RemovedBody133_19 RemovedBody133_322

def RemovedBody133_324 : StackLang.HolProg 64 :=
.seq RemovedBody133_18 RemovedBody133_323

def RemovedBody133_325 : StackLang.HolProg 64 :=
.seq RemovedBody133_17 RemovedBody133_324

def RemovedBody133_326 : StackLang.HolProg 64 :=
.seq RemovedBody133_16 RemovedBody133_325

def RemovedBody133_327 : StackLang.HolProg 64 :=
.seq RemovedBody133_15 RemovedBody133_326

def RemovedBody133_328 : StackLang.HolProg 64 :=
.seq RemovedBody133_14 RemovedBody133_327

def RemovedBody133_329 : StackLang.HolProg 64 :=
.seq RemovedBody133_13 RemovedBody133_328

def RemovedBody133_330 : StackLang.HolProg 64 :=
.seq RemovedBody133_6 RemovedBody133_329

def Removed133 : Nat × StackLang.HolProg 64 := (133, RemovedBody133_330)
theorem Removed133_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc133 = Removed133 := by
  kernel_rfl
#print axioms Removed133_eq
end InitECandidate.Proofs.BackendStages
