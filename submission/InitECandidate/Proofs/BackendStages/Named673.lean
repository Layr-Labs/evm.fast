import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed673
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody673_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody673_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody673_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody673_3 : StackLang.HolProg 64 :=
.seq NamedBody673_1 NamedBody673_2

def NamedBody673_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody673_3 NamedBody673_4

def NamedBody673_6 : StackLang.HolProg 64 :=
.seq NamedBody673_0 NamedBody673_5

def NamedBody673_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody673_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody673_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody673_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody673_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody673_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody673_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody673_15 : StackLang.HolProg 64 :=
.seq NamedBody673_13 NamedBody673_14

def NamedBody673_16 : StackLang.HolProg 64 :=
.seq NamedBody673_12 NamedBody673_15

def NamedBody673_17 : StackLang.HolProg 64 :=
.seq NamedBody673_11 NamedBody673_16

def NamedBody673_18 : StackLang.HolProg 64 :=
.seq NamedBody673_10 NamedBody673_17

def NamedBody673_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody673_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody673_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody673_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody673_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody673_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody673_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody673_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody673_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 16#64))

def NamedBody673_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody673_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody673_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody673_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody673_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def NamedBody673_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody673_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def NamedBody673_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def NamedBody673_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody673_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody673_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody673_46 : StackLang.HolProg 64 :=
.seq NamedBody673_44 NamedBody673_45

def NamedBody673_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody673_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody673_49 : StackLang.HolProg 64 :=
.seq NamedBody673_47 NamedBody673_48

def NamedBody673_50 : StackLang.HolProg 64 :=
.seq NamedBody673_46 NamedBody673_49

def NamedBody673_51 : StackLang.HolProg 64 :=
.seq NamedBody673_43 NamedBody673_50

def NamedBody673_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2789#64)

def NamedBody673_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody673_55 : StackLang.HolProg 64 :=
.seq NamedBody673_53 NamedBody673_54

def NamedBody673_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody673_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody673_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody673_59 : StackLang.HolProg 64 :=
.seq NamedBody673_57 NamedBody673_58

def NamedBody673_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody673_59 NamedBody673_60

def NamedBody673_62 : StackLang.HolProg 64 :=
.seq NamedBody673_56 NamedBody673_61

def NamedBody673_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody673_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody673_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 673 3

def NamedBody673_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody673_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody673_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody673_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody673_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody673_72 : StackLang.HolProg 64 :=
.seq NamedBody673_70 NamedBody673_71

def NamedBody673_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody673_74 : StackLang.HolProg 64 :=
.seq NamedBody673_72 NamedBody673_73

def NamedBody673_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody673_76 : StackLang.HolProg 64 :=
.seq NamedBody673_74 NamedBody673_75

def NamedBody673_77 : StackLang.HolProg 64 :=
.seq NamedBody673_69 NamedBody673_76

def NamedBody673_78 : StackLang.HolProg 64 :=
.seq NamedBody673_68 NamedBody673_77

def NamedBody673_79 : StackLang.HolProg 64 :=
.seq NamedBody673_67 NamedBody673_78

def NamedBody673_80 : StackLang.HolProg 64 :=
.seq NamedBody673_66 NamedBody673_79

def NamedBody673_81 : StackLang.HolProg 64 :=
.seq NamedBody673_65 NamedBody673_80

def NamedBody673_82 : StackLang.HolProg 64 :=
.seq NamedBody673_64 NamedBody673_81

def NamedBody673_83 : StackLang.HolProg 64 :=
.seq NamedBody673_63 NamedBody673_82

def NamedBody673_84 : StackLang.HolProg 64 :=
.seq NamedBody673_62 NamedBody673_83

def NamedBody673_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody673_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody673_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody673_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody673_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody673_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody673_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody673_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody673_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody673_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody673_98 : StackLang.HolProg 64 :=
.seq NamedBody673_96 NamedBody673_97

def NamedBody673_99 : StackLang.HolProg 64 :=
.seq NamedBody673_95 NamedBody673_98

def NamedBody673_100 : StackLang.HolProg 64 :=
.seq NamedBody673_94 NamedBody673_99

def NamedBody673_101 : StackLang.HolProg 64 :=
.seq NamedBody673_93 NamedBody673_100

def NamedBody673_102 : StackLang.HolProg 64 :=
.seq NamedBody673_92 NamedBody673_101

def NamedBody673_103 : StackLang.HolProg 64 :=
.seq NamedBody673_91 NamedBody673_102

def NamedBody673_104 : StackLang.HolProg 64 :=
.seq NamedBody673_90 NamedBody673_103

def NamedBody673_105 : StackLang.HolProg 64 :=
.seq NamedBody673_89 NamedBody673_104

def NamedBody673_106 : StackLang.HolProg 64 :=
.seq NamedBody673_88 NamedBody673_105

def NamedBody673_107 : StackLang.HolProg 64 :=
.seq NamedBody673_87 NamedBody673_106

def NamedBody673_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody673_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody673_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody673_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody673_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody673_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody673_114 : StackLang.HolProg 64 :=
.seq NamedBody673_112 NamedBody673_113

def NamedBody673_115 : StackLang.HolProg 64 :=
.seq NamedBody673_111 NamedBody673_114

def NamedBody673_116 : StackLang.HolProg 64 :=
.seq NamedBody673_110 NamedBody673_115

def NamedBody673_117 : StackLang.HolProg 64 :=
.seq NamedBody673_109 NamedBody673_116

def NamedBody673_118 : StackLang.HolProg 64 :=
.seq NamedBody673_108 NamedBody673_117

def NamedBody673_119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody673_120 : StackLang.HolProg 64 :=
.seq NamedBody673_118 NamedBody673_119

def NamedBody673_121 : StackLang.HolProg 64 :=
.call (some (NamedBody673_107, 1, 673, 2)) (Sum.inl 659) (some (NamedBody673_120, 673, 3))

def NamedBody673_122 : StackLang.HolProg 64 :=
.seq NamedBody673_86 NamedBody673_121

def NamedBody673_123 : StackLang.HolProg 64 :=
.seq NamedBody673_85 NamedBody673_122

def NamedBody673_124 : StackLang.HolProg 64 :=
.seq NamedBody673_84 NamedBody673_123

def NamedBody673_125 : StackLang.HolProg 64 :=
.seq NamedBody673_55 NamedBody673_124

def NamedBody673_126 : StackLang.HolProg 64 :=
.seq NamedBody673_52 NamedBody673_125

def NamedBody673_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody673_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody673_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody673_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody673_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody673_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody673_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody673_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody673_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody673_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody673_144 : StackLang.HolProg 64 :=
.seq NamedBody673_142 NamedBody673_143

def NamedBody673_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody673_146 : StackLang.HolProg 64 :=
.seq NamedBody673_144 NamedBody673_145

def NamedBody673_147 : StackLang.HolProg 64 :=
.seq NamedBody673_141 NamedBody673_146

def NamedBody673_148 : StackLang.HolProg 64 :=
.seq NamedBody673_140 NamedBody673_147

def NamedBody673_149 : StackLang.HolProg 64 :=
.seq NamedBody673_139 NamedBody673_148

def NamedBody673_150 : StackLang.HolProg 64 :=
.seq NamedBody673_138 NamedBody673_149

def NamedBody673_151 : StackLang.HolProg 64 :=
.seq NamedBody673_137 NamedBody673_150

def NamedBody673_152 : StackLang.HolProg 64 :=
.seq NamedBody673_136 NamedBody673_151

def NamedBody673_153 : StackLang.HolProg 64 :=
.seq NamedBody673_135 NamedBody673_152

def NamedBody673_154 : StackLang.HolProg 64 :=
.seq NamedBody673_134 NamedBody673_153

def NamedBody673_155 : StackLang.HolProg 64 :=
.seq NamedBody673_133 NamedBody673_154

def NamedBody673_156 : StackLang.HolProg 64 :=
.seq NamedBody673_132 NamedBody673_155

def NamedBody673_157 : StackLang.HolProg 64 :=
.seq NamedBody673_131 NamedBody673_156

def NamedBody673_158 : StackLang.HolProg 64 :=
.seq NamedBody673_130 NamedBody673_157

def NamedBody673_159 : StackLang.HolProg 64 :=
.seq NamedBody673_129 NamedBody673_158

def NamedBody673_160 : StackLang.HolProg 64 :=
.seq NamedBody673_128 NamedBody673_159

def NamedBody673_161 : StackLang.HolProg 64 :=
.seq NamedBody673_127 NamedBody673_160

def NamedBody673_162 : StackLang.HolProg 64 :=
.seq NamedBody673_126 NamedBody673_161

def NamedBody673_163 : StackLang.HolProg 64 :=
.seq NamedBody673_51 NamedBody673_162

def NamedBody673_164 : StackLang.HolProg 64 :=
.seq NamedBody673_42 NamedBody673_163

def NamedBody673_165 : StackLang.HolProg 64 :=
.seq NamedBody673_41 NamedBody673_164

def NamedBody673_166 : StackLang.HolProg 64 :=
.seq NamedBody673_40 NamedBody673_165

def NamedBody673_167 : StackLang.HolProg 64 :=
.seq NamedBody673_39 NamedBody673_166

def NamedBody673_168 : StackLang.HolProg 64 :=
.seq NamedBody673_38 NamedBody673_167

def NamedBody673_169 : StackLang.HolProg 64 :=
.seq NamedBody673_37 NamedBody673_168

def NamedBody673_170 : StackLang.HolProg 64 :=
.seq NamedBody673_36 NamedBody673_169

def NamedBody673_171 : StackLang.HolProg 64 :=
.seq NamedBody673_35 NamedBody673_170

def NamedBody673_172 : StackLang.HolProg 64 :=
.seq NamedBody673_34 NamedBody673_171

def NamedBody673_173 : StackLang.HolProg 64 :=
.seq NamedBody673_33 NamedBody673_172

def NamedBody673_174 : StackLang.HolProg 64 :=
.seq NamedBody673_32 NamedBody673_173

def NamedBody673_175 : StackLang.HolProg 64 :=
.seq NamedBody673_31 NamedBody673_174

def NamedBody673_176 : StackLang.HolProg 64 :=
.seq NamedBody673_30 NamedBody673_175

def NamedBody673_177 : StackLang.HolProg 64 :=
.seq NamedBody673_29 NamedBody673_176

def NamedBody673_178 : StackLang.HolProg 64 :=
.seq NamedBody673_28 NamedBody673_177

def NamedBody673_179 : StackLang.HolProg 64 :=
.seq NamedBody673_27 NamedBody673_178

def NamedBody673_180 : StackLang.HolProg 64 :=
.seq NamedBody673_26 NamedBody673_179

def NamedBody673_181 : StackLang.HolProg 64 :=
.seq NamedBody673_25 NamedBody673_180

def NamedBody673_182 : StackLang.HolProg 64 :=
.seq NamedBody673_24 NamedBody673_181

def NamedBody673_183 : StackLang.HolProg 64 :=
.seq NamedBody673_23 NamedBody673_182

def NamedBody673_184 : StackLang.HolProg 64 :=
.seq NamedBody673_22 NamedBody673_183

def NamedBody673_185 : StackLang.HolProg 64 :=
.seq NamedBody673_21 NamedBody673_184

def NamedBody673_186 : StackLang.HolProg 64 :=
.seq NamedBody673_20 NamedBody673_185

def NamedBody673_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody673_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody673_189 : StackLang.HolProg 64 :=
.seq NamedBody673_187 NamedBody673_188

def NamedBody673_190 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody673_186 NamedBody673_189

def NamedBody673_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody673_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody673_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody673_194 : StackLang.HolProg 64 :=
.seq NamedBody673_192 NamedBody673_193

def NamedBody673_195 : StackLang.HolProg 64 :=
.seq NamedBody673_191 NamedBody673_194

def NamedBody673_196 : StackLang.HolProg 64 :=
.seq NamedBody673_190 NamedBody673_195

def NamedBody673_197 : StackLang.HolProg 64 :=
.seq NamedBody673_19 NamedBody673_196

def NamedBody673_198 : StackLang.HolProg 64 :=
.loop NamedBody673_197

def NamedBody673_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody673_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody673_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody673_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody673_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody673_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody673_205 : StackLang.HolProg 64 :=
.seq NamedBody673_203 NamedBody673_204

def NamedBody673_206 : StackLang.HolProg 64 :=
.seq NamedBody673_202 NamedBody673_205

def NamedBody673_207 : StackLang.HolProg 64 :=
.seq NamedBody673_201 NamedBody673_206

def NamedBody673_208 : StackLang.HolProg 64 :=
.seq NamedBody673_200 NamedBody673_207

def NamedBody673_209 : StackLang.HolProg 64 :=
.seq NamedBody673_199 NamedBody673_208

def NamedBody673_210 : StackLang.HolProg 64 :=
.seq NamedBody673_198 NamedBody673_209

def NamedBody673_211 : StackLang.HolProg 64 :=
.seq NamedBody673_18 NamedBody673_210

def NamedBody673_212 : StackLang.HolProg 64 :=
.seq NamedBody673_9 NamedBody673_211

def NamedBody673_213 : StackLang.HolProg 64 :=
.seq NamedBody673_8 NamedBody673_212

def NamedBody673_214 : StackLang.HolProg 64 :=
.seq NamedBody673_7 NamedBody673_213

def NamedBody673_215 : StackLang.HolProg 64 :=
.seq NamedBody673_6 NamedBody673_214

def Named673 : Nat × StackLang.HolProg 64 := (673, NamedBody673_215)
theorem Named673_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed673 = Named673 := by
  kernel_rfl
#print axioms Named673_eq
end InitECandidate.Proofs.BackendStages
