import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed672
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody672_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody672_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody672_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody672_3 : StackLang.HolProg 64 :=
.seq NamedBody672_1 NamedBody672_2

def NamedBody672_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody672_3 NamedBody672_4

def NamedBody672_6 : StackLang.HolProg 64 :=
.seq NamedBody672_0 NamedBody672_5

def NamedBody672_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody672_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody672_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody672_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody672_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody672_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody672_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody672_15 : StackLang.HolProg 64 :=
.seq NamedBody672_13 NamedBody672_14

def NamedBody672_16 : StackLang.HolProg 64 :=
.seq NamedBody672_12 NamedBody672_15

def NamedBody672_17 : StackLang.HolProg 64 :=
.seq NamedBody672_11 NamedBody672_16

def NamedBody672_18 : StackLang.HolProg 64 :=
.seq NamedBody672_10 NamedBody672_17

def NamedBody672_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody672_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody672_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody672_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody672_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody672_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody672_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody672_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody672_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 16#64))

def NamedBody672_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody672_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody672_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody672_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody672_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def NamedBody672_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody672_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def NamedBody672_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def NamedBody672_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody672_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody672_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody672_46 : StackLang.HolProg 64 :=
.seq NamedBody672_44 NamedBody672_45

def NamedBody672_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody672_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody672_49 : StackLang.HolProg 64 :=
.seq NamedBody672_47 NamedBody672_48

def NamedBody672_50 : StackLang.HolProg 64 :=
.seq NamedBody672_46 NamedBody672_49

def NamedBody672_51 : StackLang.HolProg 64 :=
.seq NamedBody672_43 NamedBody672_50

def NamedBody672_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2788#64)

def NamedBody672_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody672_55 : StackLang.HolProg 64 :=
.seq NamedBody672_53 NamedBody672_54

def NamedBody672_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody672_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody672_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody672_59 : StackLang.HolProg 64 :=
.seq NamedBody672_57 NamedBody672_58

def NamedBody672_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody672_59 NamedBody672_60

def NamedBody672_62 : StackLang.HolProg 64 :=
.seq NamedBody672_56 NamedBody672_61

def NamedBody672_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody672_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody672_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 672 3

def NamedBody672_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody672_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody672_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody672_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody672_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody672_72 : StackLang.HolProg 64 :=
.seq NamedBody672_70 NamedBody672_71

def NamedBody672_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody672_74 : StackLang.HolProg 64 :=
.seq NamedBody672_72 NamedBody672_73

def NamedBody672_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody672_76 : StackLang.HolProg 64 :=
.seq NamedBody672_74 NamedBody672_75

def NamedBody672_77 : StackLang.HolProg 64 :=
.seq NamedBody672_69 NamedBody672_76

def NamedBody672_78 : StackLang.HolProg 64 :=
.seq NamedBody672_68 NamedBody672_77

def NamedBody672_79 : StackLang.HolProg 64 :=
.seq NamedBody672_67 NamedBody672_78

def NamedBody672_80 : StackLang.HolProg 64 :=
.seq NamedBody672_66 NamedBody672_79

def NamedBody672_81 : StackLang.HolProg 64 :=
.seq NamedBody672_65 NamedBody672_80

def NamedBody672_82 : StackLang.HolProg 64 :=
.seq NamedBody672_64 NamedBody672_81

def NamedBody672_83 : StackLang.HolProg 64 :=
.seq NamedBody672_63 NamedBody672_82

def NamedBody672_84 : StackLang.HolProg 64 :=
.seq NamedBody672_62 NamedBody672_83

def NamedBody672_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody672_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody672_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody672_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody672_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody672_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody672_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody672_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody672_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody672_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody672_98 : StackLang.HolProg 64 :=
.seq NamedBody672_96 NamedBody672_97

def NamedBody672_99 : StackLang.HolProg 64 :=
.seq NamedBody672_95 NamedBody672_98

def NamedBody672_100 : StackLang.HolProg 64 :=
.seq NamedBody672_94 NamedBody672_99

def NamedBody672_101 : StackLang.HolProg 64 :=
.seq NamedBody672_93 NamedBody672_100

def NamedBody672_102 : StackLang.HolProg 64 :=
.seq NamedBody672_92 NamedBody672_101

def NamedBody672_103 : StackLang.HolProg 64 :=
.seq NamedBody672_91 NamedBody672_102

def NamedBody672_104 : StackLang.HolProg 64 :=
.seq NamedBody672_90 NamedBody672_103

def NamedBody672_105 : StackLang.HolProg 64 :=
.seq NamedBody672_89 NamedBody672_104

def NamedBody672_106 : StackLang.HolProg 64 :=
.seq NamedBody672_88 NamedBody672_105

def NamedBody672_107 : StackLang.HolProg 64 :=
.seq NamedBody672_87 NamedBody672_106

def NamedBody672_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody672_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody672_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody672_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody672_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody672_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody672_114 : StackLang.HolProg 64 :=
.seq NamedBody672_112 NamedBody672_113

def NamedBody672_115 : StackLang.HolProg 64 :=
.seq NamedBody672_111 NamedBody672_114

def NamedBody672_116 : StackLang.HolProg 64 :=
.seq NamedBody672_110 NamedBody672_115

def NamedBody672_117 : StackLang.HolProg 64 :=
.seq NamedBody672_109 NamedBody672_116

def NamedBody672_118 : StackLang.HolProg 64 :=
.seq NamedBody672_108 NamedBody672_117

def NamedBody672_119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody672_120 : StackLang.HolProg 64 :=
.seq NamedBody672_118 NamedBody672_119

def NamedBody672_121 : StackLang.HolProg 64 :=
.call (some (NamedBody672_107, 1, 672, 2)) (Sum.inl 658) (some (NamedBody672_120, 672, 3))

def NamedBody672_122 : StackLang.HolProg 64 :=
.seq NamedBody672_86 NamedBody672_121

def NamedBody672_123 : StackLang.HolProg 64 :=
.seq NamedBody672_85 NamedBody672_122

def NamedBody672_124 : StackLang.HolProg 64 :=
.seq NamedBody672_84 NamedBody672_123

def NamedBody672_125 : StackLang.HolProg 64 :=
.seq NamedBody672_55 NamedBody672_124

def NamedBody672_126 : StackLang.HolProg 64 :=
.seq NamedBody672_52 NamedBody672_125

def NamedBody672_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody672_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody672_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody672_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody672_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody672_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody672_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody672_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody672_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody672_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody672_144 : StackLang.HolProg 64 :=
.seq NamedBody672_142 NamedBody672_143

def NamedBody672_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody672_146 : StackLang.HolProg 64 :=
.seq NamedBody672_144 NamedBody672_145

def NamedBody672_147 : StackLang.HolProg 64 :=
.seq NamedBody672_141 NamedBody672_146

def NamedBody672_148 : StackLang.HolProg 64 :=
.seq NamedBody672_140 NamedBody672_147

def NamedBody672_149 : StackLang.HolProg 64 :=
.seq NamedBody672_139 NamedBody672_148

def NamedBody672_150 : StackLang.HolProg 64 :=
.seq NamedBody672_138 NamedBody672_149

def NamedBody672_151 : StackLang.HolProg 64 :=
.seq NamedBody672_137 NamedBody672_150

def NamedBody672_152 : StackLang.HolProg 64 :=
.seq NamedBody672_136 NamedBody672_151

def NamedBody672_153 : StackLang.HolProg 64 :=
.seq NamedBody672_135 NamedBody672_152

def NamedBody672_154 : StackLang.HolProg 64 :=
.seq NamedBody672_134 NamedBody672_153

def NamedBody672_155 : StackLang.HolProg 64 :=
.seq NamedBody672_133 NamedBody672_154

def NamedBody672_156 : StackLang.HolProg 64 :=
.seq NamedBody672_132 NamedBody672_155

def NamedBody672_157 : StackLang.HolProg 64 :=
.seq NamedBody672_131 NamedBody672_156

def NamedBody672_158 : StackLang.HolProg 64 :=
.seq NamedBody672_130 NamedBody672_157

def NamedBody672_159 : StackLang.HolProg 64 :=
.seq NamedBody672_129 NamedBody672_158

def NamedBody672_160 : StackLang.HolProg 64 :=
.seq NamedBody672_128 NamedBody672_159

def NamedBody672_161 : StackLang.HolProg 64 :=
.seq NamedBody672_127 NamedBody672_160

def NamedBody672_162 : StackLang.HolProg 64 :=
.seq NamedBody672_126 NamedBody672_161

def NamedBody672_163 : StackLang.HolProg 64 :=
.seq NamedBody672_51 NamedBody672_162

def NamedBody672_164 : StackLang.HolProg 64 :=
.seq NamedBody672_42 NamedBody672_163

def NamedBody672_165 : StackLang.HolProg 64 :=
.seq NamedBody672_41 NamedBody672_164

def NamedBody672_166 : StackLang.HolProg 64 :=
.seq NamedBody672_40 NamedBody672_165

def NamedBody672_167 : StackLang.HolProg 64 :=
.seq NamedBody672_39 NamedBody672_166

def NamedBody672_168 : StackLang.HolProg 64 :=
.seq NamedBody672_38 NamedBody672_167

def NamedBody672_169 : StackLang.HolProg 64 :=
.seq NamedBody672_37 NamedBody672_168

def NamedBody672_170 : StackLang.HolProg 64 :=
.seq NamedBody672_36 NamedBody672_169

def NamedBody672_171 : StackLang.HolProg 64 :=
.seq NamedBody672_35 NamedBody672_170

def NamedBody672_172 : StackLang.HolProg 64 :=
.seq NamedBody672_34 NamedBody672_171

def NamedBody672_173 : StackLang.HolProg 64 :=
.seq NamedBody672_33 NamedBody672_172

def NamedBody672_174 : StackLang.HolProg 64 :=
.seq NamedBody672_32 NamedBody672_173

def NamedBody672_175 : StackLang.HolProg 64 :=
.seq NamedBody672_31 NamedBody672_174

def NamedBody672_176 : StackLang.HolProg 64 :=
.seq NamedBody672_30 NamedBody672_175

def NamedBody672_177 : StackLang.HolProg 64 :=
.seq NamedBody672_29 NamedBody672_176

def NamedBody672_178 : StackLang.HolProg 64 :=
.seq NamedBody672_28 NamedBody672_177

def NamedBody672_179 : StackLang.HolProg 64 :=
.seq NamedBody672_27 NamedBody672_178

def NamedBody672_180 : StackLang.HolProg 64 :=
.seq NamedBody672_26 NamedBody672_179

def NamedBody672_181 : StackLang.HolProg 64 :=
.seq NamedBody672_25 NamedBody672_180

def NamedBody672_182 : StackLang.HolProg 64 :=
.seq NamedBody672_24 NamedBody672_181

def NamedBody672_183 : StackLang.HolProg 64 :=
.seq NamedBody672_23 NamedBody672_182

def NamedBody672_184 : StackLang.HolProg 64 :=
.seq NamedBody672_22 NamedBody672_183

def NamedBody672_185 : StackLang.HolProg 64 :=
.seq NamedBody672_21 NamedBody672_184

def NamedBody672_186 : StackLang.HolProg 64 :=
.seq NamedBody672_20 NamedBody672_185

def NamedBody672_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody672_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody672_189 : StackLang.HolProg 64 :=
.seq NamedBody672_187 NamedBody672_188

def NamedBody672_190 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody672_186 NamedBody672_189

def NamedBody672_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody672_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody672_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody672_194 : StackLang.HolProg 64 :=
.seq NamedBody672_192 NamedBody672_193

def NamedBody672_195 : StackLang.HolProg 64 :=
.seq NamedBody672_191 NamedBody672_194

def NamedBody672_196 : StackLang.HolProg 64 :=
.seq NamedBody672_190 NamedBody672_195

def NamedBody672_197 : StackLang.HolProg 64 :=
.seq NamedBody672_19 NamedBody672_196

def NamedBody672_198 : StackLang.HolProg 64 :=
.loop NamedBody672_197

def NamedBody672_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody672_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody672_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody672_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody672_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody672_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody672_205 : StackLang.HolProg 64 :=
.seq NamedBody672_203 NamedBody672_204

def NamedBody672_206 : StackLang.HolProg 64 :=
.seq NamedBody672_202 NamedBody672_205

def NamedBody672_207 : StackLang.HolProg 64 :=
.seq NamedBody672_201 NamedBody672_206

def NamedBody672_208 : StackLang.HolProg 64 :=
.seq NamedBody672_200 NamedBody672_207

def NamedBody672_209 : StackLang.HolProg 64 :=
.seq NamedBody672_199 NamedBody672_208

def NamedBody672_210 : StackLang.HolProg 64 :=
.seq NamedBody672_198 NamedBody672_209

def NamedBody672_211 : StackLang.HolProg 64 :=
.seq NamedBody672_18 NamedBody672_210

def NamedBody672_212 : StackLang.HolProg 64 :=
.seq NamedBody672_9 NamedBody672_211

def NamedBody672_213 : StackLang.HolProg 64 :=
.seq NamedBody672_8 NamedBody672_212

def NamedBody672_214 : StackLang.HolProg 64 :=
.seq NamedBody672_7 NamedBody672_213

def NamedBody672_215 : StackLang.HolProg 64 :=
.seq NamedBody672_6 NamedBody672_214

def Named672 : Nat × StackLang.HolProg 64 := (672, NamedBody672_215)
theorem Named672_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed672 = Named672 := by
  kernel_rfl
#print axioms Named672_eq
end InitECandidate.Proofs.BackendStages
