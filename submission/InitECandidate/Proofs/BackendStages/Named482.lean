import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed482
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody482_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody482_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody482_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody482_3 : StackLang.HolProg 64 :=
.seq NamedBody482_1 NamedBody482_2

def NamedBody482_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody482_3 NamedBody482_4

def NamedBody482_6 : StackLang.HolProg 64 :=
.seq NamedBody482_0 NamedBody482_5

def NamedBody482_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody482_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody482_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody482_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody482_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody482_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody482_14 : StackLang.HolProg 64 :=
.seq NamedBody482_12 NamedBody482_13

def NamedBody482_15 : StackLang.HolProg 64 :=
.seq NamedBody482_11 NamedBody482_14

def NamedBody482_16 : StackLang.HolProg 64 :=
.seq NamedBody482_10 NamedBody482_15

def NamedBody482_17 : StackLang.HolProg 64 :=
.seq NamedBody482_9 NamedBody482_16

def NamedBody482_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody482_17 NamedBody482_18

def NamedBody482_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody482_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody482_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody482_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody482_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody482_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody482_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody482_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 40#64))

def NamedBody482_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody482_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody482_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody482_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody482_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1024#64)))

def NamedBody482_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_40 : StackLang.HolProg 64 :=
.seq NamedBody482_38 NamedBody482_39

def NamedBody482_41 : StackLang.HolProg 64 :=
.seq NamedBody482_37 NamedBody482_40

def NamedBody482_42 : StackLang.HolProg 64 :=
.seq NamedBody482_36 NamedBody482_41

def NamedBody482_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody482_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_45 : StackLang.HolProg 64 :=
.seq NamedBody482_43 NamedBody482_44

def NamedBody482_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody482_42 NamedBody482_45

def NamedBody482_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody482_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody482_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody482_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody482_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody482_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody482_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody482_55 : StackLang.HolProg 64 :=
.seq NamedBody482_53 NamedBody482_54

def NamedBody482_56 : StackLang.HolProg 64 :=
.seq NamedBody482_52 NamedBody482_55

def NamedBody482_57 : StackLang.HolProg 64 :=
.seq NamedBody482_51 NamedBody482_56

def NamedBody482_58 : StackLang.HolProg 64 :=
.seq NamedBody482_50 NamedBody482_57

def NamedBody482_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1514#64)

def NamedBody482_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody482_62 : StackLang.HolProg 64 :=
.seq NamedBody482_60 NamedBody482_61

def NamedBody482_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody482_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody482_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody482_66 : StackLang.HolProg 64 :=
.seq NamedBody482_64 NamedBody482_65

def NamedBody482_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody482_66 NamedBody482_67

def NamedBody482_69 : StackLang.HolProg 64 :=
.seq NamedBody482_63 NamedBody482_68

def NamedBody482_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody482_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody482_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 482 3

def NamedBody482_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody482_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody482_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody482_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody482_79 : StackLang.HolProg 64 :=
.seq NamedBody482_77 NamedBody482_78

def NamedBody482_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody482_81 : StackLang.HolProg 64 :=
.seq NamedBody482_79 NamedBody482_80

def NamedBody482_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody482_83 : StackLang.HolProg 64 :=
.seq NamedBody482_81 NamedBody482_82

def NamedBody482_84 : StackLang.HolProg 64 :=
.seq NamedBody482_76 NamedBody482_83

def NamedBody482_85 : StackLang.HolProg 64 :=
.seq NamedBody482_75 NamedBody482_84

def NamedBody482_86 : StackLang.HolProg 64 :=
.seq NamedBody482_74 NamedBody482_85

def NamedBody482_87 : StackLang.HolProg 64 :=
.seq NamedBody482_73 NamedBody482_86

def NamedBody482_88 : StackLang.HolProg 64 :=
.seq NamedBody482_72 NamedBody482_87

def NamedBody482_89 : StackLang.HolProg 64 :=
.seq NamedBody482_71 NamedBody482_88

def NamedBody482_90 : StackLang.HolProg 64 :=
.seq NamedBody482_70 NamedBody482_89

def NamedBody482_91 : StackLang.HolProg 64 :=
.seq NamedBody482_69 NamedBody482_90

def NamedBody482_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody482_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody482_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody482_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody482_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody482_101 : StackLang.HolProg 64 :=
.seq NamedBody482_99 NamedBody482_100

def NamedBody482_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody482_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody482_104 : StackLang.HolProg 64 :=
.seq NamedBody482_102 NamedBody482_103

def NamedBody482_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody482_107 : StackLang.HolProg 64 :=
.seq NamedBody482_105 NamedBody482_106

def NamedBody482_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody482_109 : StackLang.HolProg 64 :=
.seq NamedBody482_107 NamedBody482_108

def NamedBody482_110 : StackLang.HolProg 64 :=
.seq NamedBody482_104 NamedBody482_109

def NamedBody482_111 : StackLang.HolProg 64 :=
.seq NamedBody482_101 NamedBody482_110

def NamedBody482_112 : StackLang.HolProg 64 :=
.seq NamedBody482_98 NamedBody482_111

def NamedBody482_113 : StackLang.HolProg 64 :=
.seq NamedBody482_97 NamedBody482_112

def NamedBody482_114 : StackLang.HolProg 64 :=
.seq NamedBody482_96 NamedBody482_113

def NamedBody482_115 : StackLang.HolProg 64 :=
.seq NamedBody482_95 NamedBody482_114

def NamedBody482_116 : StackLang.HolProg 64 :=
.seq NamedBody482_94 NamedBody482_115

def NamedBody482_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody482_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody482_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody482_120 : StackLang.HolProg 64 :=
.seq NamedBody482_118 NamedBody482_119

def NamedBody482_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody482_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody482_123 : StackLang.HolProg 64 :=
.seq NamedBody482_121 NamedBody482_122

def NamedBody482_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody482_126 : StackLang.HolProg 64 :=
.seq NamedBody482_124 NamedBody482_125

def NamedBody482_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody482_128 : StackLang.HolProg 64 :=
.seq NamedBody482_126 NamedBody482_127

def NamedBody482_129 : StackLang.HolProg 64 :=
.seq NamedBody482_123 NamedBody482_128

def NamedBody482_130 : StackLang.HolProg 64 :=
.seq NamedBody482_120 NamedBody482_129

def NamedBody482_131 : StackLang.HolProg 64 :=
.seq NamedBody482_117 NamedBody482_130

def NamedBody482_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody482_133 : StackLang.HolProg 64 :=
.seq NamedBody482_131 NamedBody482_132

def NamedBody482_134 : StackLang.HolProg 64 :=
.call (some (NamedBody482_116, 1, 482, 2)) (Sum.inl 71) (some (NamedBody482_133, 482, 3))

def NamedBody482_135 : StackLang.HolProg 64 :=
.seq NamedBody482_93 NamedBody482_134

def NamedBody482_136 : StackLang.HolProg 64 :=
.seq NamedBody482_92 NamedBody482_135

def NamedBody482_137 : StackLang.HolProg 64 :=
.seq NamedBody482_91 NamedBody482_136

def NamedBody482_138 : StackLang.HolProg 64 :=
.seq NamedBody482_62 NamedBody482_137

def NamedBody482_139 : StackLang.HolProg 64 :=
.seq NamedBody482_59 NamedBody482_138

def NamedBody482_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody482_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody482_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody482_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody482_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody482_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody482_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody482_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody482_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1515#64)

def NamedBody482_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody482_154 : StackLang.HolProg 64 :=
.seq NamedBody482_152 NamedBody482_153

def NamedBody482_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody482_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody482_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody482_158 : StackLang.HolProg 64 :=
.seq NamedBody482_156 NamedBody482_157

def NamedBody482_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_160 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody482_158 NamedBody482_159

def NamedBody482_161 : StackLang.HolProg 64 :=
.seq NamedBody482_155 NamedBody482_160

def NamedBody482_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody482_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody482_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 482 5

def NamedBody482_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody482_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody482_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody482_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody482_171 : StackLang.HolProg 64 :=
.seq NamedBody482_169 NamedBody482_170

def NamedBody482_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody482_173 : StackLang.HolProg 64 :=
.seq NamedBody482_171 NamedBody482_172

def NamedBody482_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody482_175 : StackLang.HolProg 64 :=
.seq NamedBody482_173 NamedBody482_174

def NamedBody482_176 : StackLang.HolProg 64 :=
.seq NamedBody482_168 NamedBody482_175

def NamedBody482_177 : StackLang.HolProg 64 :=
.seq NamedBody482_167 NamedBody482_176

def NamedBody482_178 : StackLang.HolProg 64 :=
.seq NamedBody482_166 NamedBody482_177

def NamedBody482_179 : StackLang.HolProg 64 :=
.seq NamedBody482_165 NamedBody482_178

def NamedBody482_180 : StackLang.HolProg 64 :=
.seq NamedBody482_164 NamedBody482_179

def NamedBody482_181 : StackLang.HolProg 64 :=
.seq NamedBody482_163 NamedBody482_180

def NamedBody482_182 : StackLang.HolProg 64 :=
.seq NamedBody482_162 NamedBody482_181

def NamedBody482_183 : StackLang.HolProg 64 :=
.seq NamedBody482_161 NamedBody482_182

def NamedBody482_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody482_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody482_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody482_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody482_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody482_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody482_194 : StackLang.HolProg 64 :=
.seq NamedBody482_192 NamedBody482_193

def NamedBody482_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_196 : StackLang.HolProg 64 :=
.seq NamedBody482_194 NamedBody482_195

def NamedBody482_197 : StackLang.HolProg 64 :=
.seq NamedBody482_191 NamedBody482_196

def NamedBody482_198 : StackLang.HolProg 64 :=
.seq NamedBody482_190 NamedBody482_197

def NamedBody482_199 : StackLang.HolProg 64 :=
.seq NamedBody482_189 NamedBody482_198

def NamedBody482_200 : StackLang.HolProg 64 :=
.seq NamedBody482_188 NamedBody482_199

def NamedBody482_201 : StackLang.HolProg 64 :=
.seq NamedBody482_187 NamedBody482_200

def NamedBody482_202 : StackLang.HolProg 64 :=
.seq NamedBody482_186 NamedBody482_201

def NamedBody482_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody482_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody482_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody482_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody482_207 : StackLang.HolProg 64 :=
.seq NamedBody482_205 NamedBody482_206

def NamedBody482_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_209 : StackLang.HolProg 64 :=
.seq NamedBody482_207 NamedBody482_208

def NamedBody482_210 : StackLang.HolProg 64 :=
.seq NamedBody482_204 NamedBody482_209

def NamedBody482_211 : StackLang.HolProg 64 :=
.seq NamedBody482_203 NamedBody482_210

def NamedBody482_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody482_213 : StackLang.HolProg 64 :=
.seq NamedBody482_211 NamedBody482_212

def NamedBody482_214 : StackLang.HolProg 64 :=
.call (some (NamedBody482_202, 1, 482, 4)) (Sum.inl 78) (some (NamedBody482_213, 482, 5))

def NamedBody482_215 : StackLang.HolProg 64 :=
.seq NamedBody482_185 NamedBody482_214

def NamedBody482_216 : StackLang.HolProg 64 :=
.seq NamedBody482_184 NamedBody482_215

def NamedBody482_217 : StackLang.HolProg 64 :=
.seq NamedBody482_183 NamedBody482_216

def NamedBody482_218 : StackLang.HolProg 64 :=
.seq NamedBody482_154 NamedBody482_217

def NamedBody482_219 : StackLang.HolProg 64 :=
.seq NamedBody482_151 NamedBody482_218

def NamedBody482_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody482_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody482_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody482_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody482_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody482_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody482_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody482_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_229 : StackLang.HolProg 64 :=
.seq NamedBody482_227 NamedBody482_228

def NamedBody482_230 : StackLang.HolProg 64 :=
.seq NamedBody482_226 NamedBody482_229

def NamedBody482_231 : StackLang.HolProg 64 :=
.seq NamedBody482_225 NamedBody482_230

def NamedBody482_232 : StackLang.HolProg 64 :=
.seq NamedBody482_224 NamedBody482_231

def NamedBody482_233 : StackLang.HolProg 64 :=
.seq NamedBody482_223 NamedBody482_232

def NamedBody482_234 : StackLang.HolProg 64 :=
.seq NamedBody482_222 NamedBody482_233

def NamedBody482_235 : StackLang.HolProg 64 :=
.seq NamedBody482_221 NamedBody482_234

def NamedBody482_236 : StackLang.HolProg 64 :=
.seq NamedBody482_220 NamedBody482_235

def NamedBody482_237 : StackLang.HolProg 64 :=
.seq NamedBody482_219 NamedBody482_236

def NamedBody482_238 : StackLang.HolProg 64 :=
.seq NamedBody482_150 NamedBody482_237

def NamedBody482_239 : StackLang.HolProg 64 :=
.seq NamedBody482_149 NamedBody482_238

def NamedBody482_240 : StackLang.HolProg 64 :=
.seq NamedBody482_148 NamedBody482_239

def NamedBody482_241 : StackLang.HolProg 64 :=
.seq NamedBody482_147 NamedBody482_240

def NamedBody482_242 : StackLang.HolProg 64 :=
.seq NamedBody482_146 NamedBody482_241

def NamedBody482_243 : StackLang.HolProg 64 :=
.seq NamedBody482_145 NamedBody482_242

def NamedBody482_244 : StackLang.HolProg 64 :=
.seq NamedBody482_144 NamedBody482_243

def NamedBody482_245 : StackLang.HolProg 64 :=
.seq NamedBody482_143 NamedBody482_244

def NamedBody482_246 : StackLang.HolProg 64 :=
.seq NamedBody482_142 NamedBody482_245

def NamedBody482_247 : StackLang.HolProg 64 :=
.seq NamedBody482_141 NamedBody482_246

def NamedBody482_248 : StackLang.HolProg 64 :=
.seq NamedBody482_140 NamedBody482_247

def NamedBody482_249 : StackLang.HolProg 64 :=
.seq NamedBody482_139 NamedBody482_248

def NamedBody482_250 : StackLang.HolProg 64 :=
.seq NamedBody482_58 NamedBody482_249

def NamedBody482_251 : StackLang.HolProg 64 :=
.seq NamedBody482_49 NamedBody482_250

def NamedBody482_252 : StackLang.HolProg 64 :=
.seq NamedBody482_48 NamedBody482_251

def NamedBody482_253 : StackLang.HolProg 64 :=
.seq NamedBody482_47 NamedBody482_252

def NamedBody482_254 : StackLang.HolProg 64 :=
.seq NamedBody482_46 NamedBody482_253

def NamedBody482_255 : StackLang.HolProg 64 :=
.seq NamedBody482_35 NamedBody482_254

def NamedBody482_256 : StackLang.HolProg 64 :=
.seq NamedBody482_34 NamedBody482_255

def NamedBody482_257 : StackLang.HolProg 64 :=
.seq NamedBody482_33 NamedBody482_256

def NamedBody482_258 : StackLang.HolProg 64 :=
.seq NamedBody482_32 NamedBody482_257

def NamedBody482_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody482_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody482_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody482_262 : StackLang.HolProg 64 :=
.seq NamedBody482_260 NamedBody482_261

def NamedBody482_263 : StackLang.HolProg 64 :=
.seq NamedBody482_259 NamedBody482_262

def NamedBody482_264 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody482_258 NamedBody482_263

def NamedBody482_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody482_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody482_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody482_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody482_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody482_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody482_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody482_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1516#64)

def NamedBody482_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody482_277 : StackLang.HolProg 64 :=
.seq NamedBody482_275 NamedBody482_276

def NamedBody482_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody482_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody482_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody482_281 : StackLang.HolProg 64 :=
.seq NamedBody482_279 NamedBody482_280

def NamedBody482_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_283 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody482_281 NamedBody482_282

def NamedBody482_284 : StackLang.HolProg 64 :=
.seq NamedBody482_278 NamedBody482_283

def NamedBody482_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody482_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody482_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 482 7

def NamedBody482_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody482_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody482_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody482_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody482_294 : StackLang.HolProg 64 :=
.seq NamedBody482_292 NamedBody482_293

def NamedBody482_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody482_296 : StackLang.HolProg 64 :=
.seq NamedBody482_294 NamedBody482_295

def NamedBody482_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody482_298 : StackLang.HolProg 64 :=
.seq NamedBody482_296 NamedBody482_297

def NamedBody482_299 : StackLang.HolProg 64 :=
.seq NamedBody482_291 NamedBody482_298

def NamedBody482_300 : StackLang.HolProg 64 :=
.seq NamedBody482_290 NamedBody482_299

def NamedBody482_301 : StackLang.HolProg 64 :=
.seq NamedBody482_289 NamedBody482_300

def NamedBody482_302 : StackLang.HolProg 64 :=
.seq NamedBody482_288 NamedBody482_301

def NamedBody482_303 : StackLang.HolProg 64 :=
.seq NamedBody482_287 NamedBody482_302

def NamedBody482_304 : StackLang.HolProg 64 :=
.seq NamedBody482_286 NamedBody482_303

def NamedBody482_305 : StackLang.HolProg 64 :=
.seq NamedBody482_285 NamedBody482_304

def NamedBody482_306 : StackLang.HolProg 64 :=
.seq NamedBody482_284 NamedBody482_305

def NamedBody482_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody482_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody482_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody482_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody482_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody482_315 : StackLang.HolProg 64 :=
.seq NamedBody482_313 NamedBody482_314

def NamedBody482_316 : StackLang.HolProg 64 :=
.seq NamedBody482_312 NamedBody482_315

def NamedBody482_317 : StackLang.HolProg 64 :=
.seq NamedBody482_311 NamedBody482_316

def NamedBody482_318 : StackLang.HolProg 64 :=
.seq NamedBody482_310 NamedBody482_317

def NamedBody482_319 : StackLang.HolProg 64 :=
.seq NamedBody482_309 NamedBody482_318

def NamedBody482_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody482_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody482_322 : StackLang.HolProg 64 :=
.seq NamedBody482_320 NamedBody482_321

def NamedBody482_323 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody482_324 : StackLang.HolProg 64 :=
.seq NamedBody482_322 NamedBody482_323

def NamedBody482_325 : StackLang.HolProg 64 :=
.call (some (NamedBody482_319, 1, 482, 6)) (Sum.inl 78) (some (NamedBody482_324, 482, 7))

def NamedBody482_326 : StackLang.HolProg 64 :=
.seq NamedBody482_308 NamedBody482_325

def NamedBody482_327 : StackLang.HolProg 64 :=
.seq NamedBody482_307 NamedBody482_326

def NamedBody482_328 : StackLang.HolProg 64 :=
.seq NamedBody482_306 NamedBody482_327

def NamedBody482_329 : StackLang.HolProg 64 :=
.seq NamedBody482_277 NamedBody482_328

def NamedBody482_330 : StackLang.HolProg 64 :=
.seq NamedBody482_274 NamedBody482_329

def NamedBody482_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody482_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody482_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody482_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody482_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody482_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody482_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody482_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody482_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody482_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody482_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody482_343 : StackLang.HolProg 64 :=
.seq NamedBody482_341 NamedBody482_342

def NamedBody482_344 : StackLang.HolProg 64 :=
.seq NamedBody482_340 NamedBody482_343

def NamedBody482_345 : StackLang.HolProg 64 :=
.seq NamedBody482_339 NamedBody482_344

def NamedBody482_346 : StackLang.HolProg 64 :=
.seq NamedBody482_338 NamedBody482_345

def NamedBody482_347 : StackLang.HolProg 64 :=
.seq NamedBody482_337 NamedBody482_346

def NamedBody482_348 : StackLang.HolProg 64 :=
.seq NamedBody482_336 NamedBody482_347

def NamedBody482_349 : StackLang.HolProg 64 :=
.seq NamedBody482_335 NamedBody482_348

def NamedBody482_350 : StackLang.HolProg 64 :=
.seq NamedBody482_334 NamedBody482_349

def NamedBody482_351 : StackLang.HolProg 64 :=
.seq NamedBody482_333 NamedBody482_350

def NamedBody482_352 : StackLang.HolProg 64 :=
.seq NamedBody482_332 NamedBody482_351

def NamedBody482_353 : StackLang.HolProg 64 :=
.seq NamedBody482_331 NamedBody482_352

def NamedBody482_354 : StackLang.HolProg 64 :=
.seq NamedBody482_330 NamedBody482_353

def NamedBody482_355 : StackLang.HolProg 64 :=
.seq NamedBody482_273 NamedBody482_354

def NamedBody482_356 : StackLang.HolProg 64 :=
.seq NamedBody482_272 NamedBody482_355

def NamedBody482_357 : StackLang.HolProg 64 :=
.seq NamedBody482_271 NamedBody482_356

def NamedBody482_358 : StackLang.HolProg 64 :=
.seq NamedBody482_270 NamedBody482_357

def NamedBody482_359 : StackLang.HolProg 64 :=
.seq NamedBody482_269 NamedBody482_358

def NamedBody482_360 : StackLang.HolProg 64 :=
.seq NamedBody482_268 NamedBody482_359

def NamedBody482_361 : StackLang.HolProg 64 :=
.seq NamedBody482_267 NamedBody482_360

def NamedBody482_362 : StackLang.HolProg 64 :=
.seq NamedBody482_266 NamedBody482_361

def NamedBody482_363 : StackLang.HolProg 64 :=
.seq NamedBody482_265 NamedBody482_362

def NamedBody482_364 : StackLang.HolProg 64 :=
.seq NamedBody482_264 NamedBody482_363

def NamedBody482_365 : StackLang.HolProg 64 :=
.seq NamedBody482_31 NamedBody482_364

def NamedBody482_366 : StackLang.HolProg 64 :=
.seq NamedBody482_30 NamedBody482_365

def NamedBody482_367 : StackLang.HolProg 64 :=
.seq NamedBody482_29 NamedBody482_366

def NamedBody482_368 : StackLang.HolProg 64 :=
.seq NamedBody482_28 NamedBody482_367

def NamedBody482_369 : StackLang.HolProg 64 :=
.seq NamedBody482_27 NamedBody482_368

def NamedBody482_370 : StackLang.HolProg 64 :=
.seq NamedBody482_26 NamedBody482_369

def NamedBody482_371 : StackLang.HolProg 64 :=
.seq NamedBody482_25 NamedBody482_370

def NamedBody482_372 : StackLang.HolProg 64 :=
.seq NamedBody482_24 NamedBody482_371

def NamedBody482_373 : StackLang.HolProg 64 :=
.seq NamedBody482_23 NamedBody482_372

def NamedBody482_374 : StackLang.HolProg 64 :=
.seq NamedBody482_22 NamedBody482_373

def NamedBody482_375 : StackLang.HolProg 64 :=
.seq NamedBody482_21 NamedBody482_374

def NamedBody482_376 : StackLang.HolProg 64 :=
.seq NamedBody482_20 NamedBody482_375

def NamedBody482_377 : StackLang.HolProg 64 :=
.seq NamedBody482_19 NamedBody482_376

def NamedBody482_378 : StackLang.HolProg 64 :=
.seq NamedBody482_8 NamedBody482_377

def NamedBody482_379 : StackLang.HolProg 64 :=
.seq NamedBody482_7 NamedBody482_378

def NamedBody482_380 : StackLang.HolProg 64 :=
.seq NamedBody482_6 NamedBody482_379

def Named482 : Nat × StackLang.HolProg 64 := (482, NamedBody482_380)
theorem Named482_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed482 = Named482 := by
  kernel_rfl
#print axioms Named482_eq
end InitECandidate.Proofs.BackendStages
