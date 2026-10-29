import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed480
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody480_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody480_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody480_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody480_3 : StackLang.HolProg 64 :=
.seq NamedBody480_1 NamedBody480_2

def NamedBody480_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody480_3 NamedBody480_4

def NamedBody480_6 : StackLang.HolProg 64 :=
.seq NamedBody480_0 NamedBody480_5

def NamedBody480_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody480_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody480_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody480_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody480_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody480_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody480_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody480_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody480_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody480_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody480_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody480_20 : StackLang.HolProg 64 :=
.seq NamedBody480_18 NamedBody480_19

def NamedBody480_21 : StackLang.HolProg 64 :=
.seq NamedBody480_17 NamedBody480_20

def NamedBody480_22 : StackLang.HolProg 64 :=
.seq NamedBody480_16 NamedBody480_21

def NamedBody480_23 : StackLang.HolProg 64 :=
.seq NamedBody480_15 NamedBody480_22

def NamedBody480_24 : StackLang.HolProg 64 :=
.seq NamedBody480_14 NamedBody480_23

def NamedBody480_25 : StackLang.HolProg 64 :=
.seq NamedBody480_13 NamedBody480_24

def NamedBody480_26 : StackLang.HolProg 64 :=
.seq NamedBody480_12 NamedBody480_25

def NamedBody480_27 : StackLang.HolProg 64 :=
.seq NamedBody480_11 NamedBody480_26

def NamedBody480_28 : StackLang.HolProg 64 :=
.seq NamedBody480_10 NamedBody480_27

def NamedBody480_29 : StackLang.HolProg 64 :=
.seq NamedBody480_9 NamedBody480_28

def NamedBody480_30 : StackLang.HolProg 64 :=
.seq NamedBody480_8 NamedBody480_29

def NamedBody480_31 : StackLang.HolProg 64 :=
.seq NamedBody480_7 NamedBody480_30

def NamedBody480_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1504#64)

def NamedBody480_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_35 : StackLang.HolProg 64 :=
.seq NamedBody480_33 NamedBody480_34

def NamedBody480_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody480_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody480_39 : StackLang.HolProg 64 :=
.seq NamedBody480_37 NamedBody480_38

def NamedBody480_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody480_39 NamedBody480_40

def NamedBody480_42 : StackLang.HolProg 64 :=
.seq NamedBody480_36 NamedBody480_41

def NamedBody480_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody480_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 3

def NamedBody480_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody480_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody480_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody480_52 : StackLang.HolProg 64 :=
.seq NamedBody480_50 NamedBody480_51

def NamedBody480_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody480_54 : StackLang.HolProg 64 :=
.seq NamedBody480_52 NamedBody480_53

def NamedBody480_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_56 : StackLang.HolProg 64 :=
.seq NamedBody480_54 NamedBody480_55

def NamedBody480_57 : StackLang.HolProg 64 :=
.seq NamedBody480_49 NamedBody480_56

def NamedBody480_58 : StackLang.HolProg 64 :=
.seq NamedBody480_48 NamedBody480_57

def NamedBody480_59 : StackLang.HolProg 64 :=
.seq NamedBody480_47 NamedBody480_58

def NamedBody480_60 : StackLang.HolProg 64 :=
.seq NamedBody480_46 NamedBody480_59

def NamedBody480_61 : StackLang.HolProg 64 :=
.seq NamedBody480_45 NamedBody480_60

def NamedBody480_62 : StackLang.HolProg 64 :=
.seq NamedBody480_44 NamedBody480_61

def NamedBody480_63 : StackLang.HolProg 64 :=
.seq NamedBody480_43 NamedBody480_62

def NamedBody480_64 : StackLang.HolProg 64 :=
.seq NamedBody480_42 NamedBody480_63

def NamedBody480_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody480_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody480_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody480_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody480_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody480_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody480_77 : StackLang.HolProg 64 :=
.seq NamedBody480_75 NamedBody480_76

def NamedBody480_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody480_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody480_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody480_81 : StackLang.HolProg 64 :=
.seq NamedBody480_79 NamedBody480_80

def NamedBody480_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody480_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody480_85 : StackLang.HolProg 64 :=
.seq NamedBody480_83 NamedBody480_84

def NamedBody480_86 : StackLang.HolProg 64 :=
.seq NamedBody480_82 NamedBody480_85

def NamedBody480_87 : StackLang.HolProg 64 :=
.seq NamedBody480_81 NamedBody480_86

def NamedBody480_88 : StackLang.HolProg 64 :=
.seq NamedBody480_78 NamedBody480_87

def NamedBody480_89 : StackLang.HolProg 64 :=
.seq NamedBody480_77 NamedBody480_88

def NamedBody480_90 : StackLang.HolProg 64 :=
.seq NamedBody480_74 NamedBody480_89

def NamedBody480_91 : StackLang.HolProg 64 :=
.seq NamedBody480_73 NamedBody480_90

def NamedBody480_92 : StackLang.HolProg 64 :=
.seq NamedBody480_72 NamedBody480_91

def NamedBody480_93 : StackLang.HolProg 64 :=
.seq NamedBody480_71 NamedBody480_92

def NamedBody480_94 : StackLang.HolProg 64 :=
.seq NamedBody480_70 NamedBody480_93

def NamedBody480_95 : StackLang.HolProg 64 :=
.seq NamedBody480_69 NamedBody480_94

def NamedBody480_96 : StackLang.HolProg 64 :=
.seq NamedBody480_68 NamedBody480_95

def NamedBody480_97 : StackLang.HolProg 64 :=
.seq NamedBody480_67 NamedBody480_96

def NamedBody480_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody480_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody480_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody480_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody480_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody480_103 : StackLang.HolProg 64 :=
.seq NamedBody480_101 NamedBody480_102

def NamedBody480_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody480_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody480_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody480_107 : StackLang.HolProg 64 :=
.seq NamedBody480_105 NamedBody480_106

def NamedBody480_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody480_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody480_111 : StackLang.HolProg 64 :=
.seq NamedBody480_109 NamedBody480_110

def NamedBody480_112 : StackLang.HolProg 64 :=
.seq NamedBody480_108 NamedBody480_111

def NamedBody480_113 : StackLang.HolProg 64 :=
.seq NamedBody480_107 NamedBody480_112

def NamedBody480_114 : StackLang.HolProg 64 :=
.seq NamedBody480_104 NamedBody480_113

def NamedBody480_115 : StackLang.HolProg 64 :=
.seq NamedBody480_103 NamedBody480_114

def NamedBody480_116 : StackLang.HolProg 64 :=
.seq NamedBody480_100 NamedBody480_115

def NamedBody480_117 : StackLang.HolProg 64 :=
.seq NamedBody480_99 NamedBody480_116

def NamedBody480_118 : StackLang.HolProg 64 :=
.seq NamedBody480_98 NamedBody480_117

def NamedBody480_119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody480_120 : StackLang.HolProg 64 :=
.seq NamedBody480_118 NamedBody480_119

def NamedBody480_121 : StackLang.HolProg 64 :=
.call (some (NamedBody480_97, 1, 480, 2)) (Sum.inl 102) (some (NamedBody480_120, 480, 3))

def NamedBody480_122 : StackLang.HolProg 64 :=
.seq NamedBody480_66 NamedBody480_121

def NamedBody480_123 : StackLang.HolProg 64 :=
.seq NamedBody480_65 NamedBody480_122

def NamedBody480_124 : StackLang.HolProg 64 :=
.seq NamedBody480_64 NamedBody480_123

def NamedBody480_125 : StackLang.HolProg 64 :=
.seq NamedBody480_35 NamedBody480_124

def NamedBody480_126 : StackLang.HolProg 64 :=
.seq NamedBody480_32 NamedBody480_125

def NamedBody480_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody480_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody480_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody480_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody480_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def NamedBody480_136 : StackLang.HolProg 64 :=
.seq NamedBody480_134 NamedBody480_135

def NamedBody480_137 : StackLang.HolProg 64 :=
.seq NamedBody480_133 NamedBody480_136

def NamedBody480_138 : StackLang.HolProg 64 :=
.seq NamedBody480_132 NamedBody480_137

def NamedBody480_139 : StackLang.HolProg 64 :=
.seq NamedBody480_131 NamedBody480_138

def NamedBody480_140 : StackLang.HolProg 64 :=
.seq NamedBody480_130 NamedBody480_139

def NamedBody480_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_142 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody480_140 NamedBody480_141

def NamedBody480_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody480_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody480_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody480_148 : StackLang.HolProg 64 :=
.seq NamedBody480_146 NamedBody480_147

def NamedBody480_149 : StackLang.HolProg 64 :=
.seq NamedBody480_145 NamedBody480_148

def NamedBody480_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1505#64)

def NamedBody480_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_153 : StackLang.HolProg 64 :=
.seq NamedBody480_151 NamedBody480_152

def NamedBody480_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody480_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody480_157 : StackLang.HolProg 64 :=
.seq NamedBody480_155 NamedBody480_156

def NamedBody480_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_159 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody480_157 NamedBody480_158

def NamedBody480_160 : StackLang.HolProg 64 :=
.seq NamedBody480_154 NamedBody480_159

def NamedBody480_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody480_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 5

def NamedBody480_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody480_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody480_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody480_170 : StackLang.HolProg 64 :=
.seq NamedBody480_168 NamedBody480_169

def NamedBody480_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody480_172 : StackLang.HolProg 64 :=
.seq NamedBody480_170 NamedBody480_171

def NamedBody480_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_174 : StackLang.HolProg 64 :=
.seq NamedBody480_172 NamedBody480_173

def NamedBody480_175 : StackLang.HolProg 64 :=
.seq NamedBody480_167 NamedBody480_174

def NamedBody480_176 : StackLang.HolProg 64 :=
.seq NamedBody480_166 NamedBody480_175

def NamedBody480_177 : StackLang.HolProg 64 :=
.seq NamedBody480_165 NamedBody480_176

def NamedBody480_178 : StackLang.HolProg 64 :=
.seq NamedBody480_164 NamedBody480_177

def NamedBody480_179 : StackLang.HolProg 64 :=
.seq NamedBody480_163 NamedBody480_178

def NamedBody480_180 : StackLang.HolProg 64 :=
.seq NamedBody480_162 NamedBody480_179

def NamedBody480_181 : StackLang.HolProg 64 :=
.seq NamedBody480_161 NamedBody480_180

def NamedBody480_182 : StackLang.HolProg 64 :=
.seq NamedBody480_160 NamedBody480_181

def NamedBody480_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody480_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody480_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody480_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody480_194 : StackLang.HolProg 64 :=
.seq NamedBody480_192 NamedBody480_193

def NamedBody480_195 : StackLang.HolProg 64 :=
.seq NamedBody480_191 NamedBody480_194

def NamedBody480_196 : StackLang.HolProg 64 :=
.seq NamedBody480_190 NamedBody480_195

def NamedBody480_197 : StackLang.HolProg 64 :=
.seq NamedBody480_189 NamedBody480_196

def NamedBody480_198 : StackLang.HolProg 64 :=
.seq NamedBody480_188 NamedBody480_197

def NamedBody480_199 : StackLang.HolProg 64 :=
.seq NamedBody480_187 NamedBody480_198

def NamedBody480_200 : StackLang.HolProg 64 :=
.seq NamedBody480_186 NamedBody480_199

def NamedBody480_201 : StackLang.HolProg 64 :=
.seq NamedBody480_185 NamedBody480_200

def NamedBody480_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody480_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody480_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody480_206 : StackLang.HolProg 64 :=
.seq NamedBody480_204 NamedBody480_205

def NamedBody480_207 : StackLang.HolProg 64 :=
.seq NamedBody480_203 NamedBody480_206

def NamedBody480_208 : StackLang.HolProg 64 :=
.seq NamedBody480_202 NamedBody480_207

def NamedBody480_209 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody480_210 : StackLang.HolProg 64 :=
.seq NamedBody480_208 NamedBody480_209

def NamedBody480_211 : StackLang.HolProg 64 :=
.call (some (NamedBody480_201, 1, 480, 4)) (Sum.inl 462) (some (NamedBody480_210, 480, 5))

def NamedBody480_212 : StackLang.HolProg 64 :=
.seq NamedBody480_184 NamedBody480_211

def NamedBody480_213 : StackLang.HolProg 64 :=
.seq NamedBody480_183 NamedBody480_212

def NamedBody480_214 : StackLang.HolProg 64 :=
.seq NamedBody480_182 NamedBody480_213

def NamedBody480_215 : StackLang.HolProg 64 :=
.seq NamedBody480_153 NamedBody480_214

def NamedBody480_216 : StackLang.HolProg 64 :=
.seq NamedBody480_150 NamedBody480_215

def NamedBody480_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody480_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_220 : StackLang.HolProg 64 :=
.seq NamedBody480_218 NamedBody480_219

def NamedBody480_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1506#64)

def NamedBody480_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_224 : StackLang.HolProg 64 :=
.seq NamedBody480_222 NamedBody480_223

def NamedBody480_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody480_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody480_228 : StackLang.HolProg 64 :=
.seq NamedBody480_226 NamedBody480_227

def NamedBody480_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_230 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody480_228 NamedBody480_229

def NamedBody480_231 : StackLang.HolProg 64 :=
.seq NamedBody480_225 NamedBody480_230

def NamedBody480_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody480_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 7

def NamedBody480_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody480_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody480_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody480_241 : StackLang.HolProg 64 :=
.seq NamedBody480_239 NamedBody480_240

def NamedBody480_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody480_243 : StackLang.HolProg 64 :=
.seq NamedBody480_241 NamedBody480_242

def NamedBody480_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_245 : StackLang.HolProg 64 :=
.seq NamedBody480_243 NamedBody480_244

def NamedBody480_246 : StackLang.HolProg 64 :=
.seq NamedBody480_238 NamedBody480_245

def NamedBody480_247 : StackLang.HolProg 64 :=
.seq NamedBody480_237 NamedBody480_246

def NamedBody480_248 : StackLang.HolProg 64 :=
.seq NamedBody480_236 NamedBody480_247

def NamedBody480_249 : StackLang.HolProg 64 :=
.seq NamedBody480_235 NamedBody480_248

def NamedBody480_250 : StackLang.HolProg 64 :=
.seq NamedBody480_234 NamedBody480_249

def NamedBody480_251 : StackLang.HolProg 64 :=
.seq NamedBody480_233 NamedBody480_250

def NamedBody480_252 : StackLang.HolProg 64 :=
.seq NamedBody480_232 NamedBody480_251

def NamedBody480_253 : StackLang.HolProg 64 :=
.seq NamedBody480_231 NamedBody480_252

def NamedBody480_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody480_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_262 : StackLang.HolProg 64 :=
.seq NamedBody480_260 NamedBody480_261

def NamedBody480_263 : StackLang.HolProg 64 :=
.seq NamedBody480_259 NamedBody480_262

def NamedBody480_264 : StackLang.HolProg 64 :=
.seq NamedBody480_258 NamedBody480_263

def NamedBody480_265 : StackLang.HolProg 64 :=
.seq NamedBody480_257 NamedBody480_264

def NamedBody480_266 : StackLang.HolProg 64 :=
.seq NamedBody480_256 NamedBody480_265

def NamedBody480_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_268 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody480_269 : StackLang.HolProg 64 :=
.seq NamedBody480_267 NamedBody480_268

def NamedBody480_270 : StackLang.HolProg 64 :=
.call (some (NamedBody480_266, 1, 480, 6)) (Sum.inl 462) (some (NamedBody480_269, 480, 7))

def NamedBody480_271 : StackLang.HolProg 64 :=
.seq NamedBody480_255 NamedBody480_270

def NamedBody480_272 : StackLang.HolProg 64 :=
.seq NamedBody480_254 NamedBody480_271

def NamedBody480_273 : StackLang.HolProg 64 :=
.seq NamedBody480_253 NamedBody480_272

def NamedBody480_274 : StackLang.HolProg 64 :=
.seq NamedBody480_224 NamedBody480_273

def NamedBody480_275 : StackLang.HolProg 64 :=
.seq NamedBody480_221 NamedBody480_274

def NamedBody480_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody480_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1507#64)

def NamedBody480_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_281 : StackLang.HolProg 64 :=
.seq NamedBody480_279 NamedBody480_280

def NamedBody480_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody480_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody480_285 : StackLang.HolProg 64 :=
.seq NamedBody480_283 NamedBody480_284

def NamedBody480_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_287 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody480_285 NamedBody480_286

def NamedBody480_288 : StackLang.HolProg 64 :=
.seq NamedBody480_282 NamedBody480_287

def NamedBody480_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody480_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 9

def NamedBody480_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody480_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody480_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody480_298 : StackLang.HolProg 64 :=
.seq NamedBody480_296 NamedBody480_297

def NamedBody480_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody480_300 : StackLang.HolProg 64 :=
.seq NamedBody480_298 NamedBody480_299

def NamedBody480_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_302 : StackLang.HolProg 64 :=
.seq NamedBody480_300 NamedBody480_301

def NamedBody480_303 : StackLang.HolProg 64 :=
.seq NamedBody480_295 NamedBody480_302

def NamedBody480_304 : StackLang.HolProg 64 :=
.seq NamedBody480_294 NamedBody480_303

def NamedBody480_305 : StackLang.HolProg 64 :=
.seq NamedBody480_293 NamedBody480_304

def NamedBody480_306 : StackLang.HolProg 64 :=
.seq NamedBody480_292 NamedBody480_305

def NamedBody480_307 : StackLang.HolProg 64 :=
.seq NamedBody480_291 NamedBody480_306

def NamedBody480_308 : StackLang.HolProg 64 :=
.seq NamedBody480_290 NamedBody480_307

def NamedBody480_309 : StackLang.HolProg 64 :=
.seq NamedBody480_289 NamedBody480_308

def NamedBody480_310 : StackLang.HolProg 64 :=
.seq NamedBody480_288 NamedBody480_309

def NamedBody480_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody480_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody480_319 : StackLang.HolProg 64 :=
.seq NamedBody480_317 NamedBody480_318

def NamedBody480_320 : StackLang.HolProg 64 :=
.seq NamedBody480_316 NamedBody480_319

def NamedBody480_321 : StackLang.HolProg 64 :=
.seq NamedBody480_315 NamedBody480_320

def NamedBody480_322 : StackLang.HolProg 64 :=
.seq NamedBody480_314 NamedBody480_321

def NamedBody480_323 : StackLang.HolProg 64 :=
.seq NamedBody480_313 NamedBody480_322

def NamedBody480_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody480_325 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody480_326 : StackLang.HolProg 64 :=
.seq NamedBody480_324 NamedBody480_325

def NamedBody480_327 : StackLang.HolProg 64 :=
.call (some (NamedBody480_323, 1, 480, 8)) (Sum.inl 463) (some (NamedBody480_326, 480, 9))

def NamedBody480_328 : StackLang.HolProg 64 :=
.seq NamedBody480_312 NamedBody480_327

def NamedBody480_329 : StackLang.HolProg 64 :=
.seq NamedBody480_311 NamedBody480_328

def NamedBody480_330 : StackLang.HolProg 64 :=
.seq NamedBody480_310 NamedBody480_329

def NamedBody480_331 : StackLang.HolProg 64 :=
.seq NamedBody480_281 NamedBody480_330

def NamedBody480_332 : StackLang.HolProg 64 :=
.seq NamedBody480_278 NamedBody480_331

def NamedBody480_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody480_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody480_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody480_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody480_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody480_342 : StackLang.HolProg 64 :=
.seq NamedBody480_340 NamedBody480_341

def NamedBody480_343 : StackLang.HolProg 64 :=
.seq NamedBody480_339 NamedBody480_342

def NamedBody480_344 : StackLang.HolProg 64 :=
.seq NamedBody480_338 NamedBody480_343

def NamedBody480_345 : StackLang.HolProg 64 :=
.seq NamedBody480_337 NamedBody480_344

def NamedBody480_346 : StackLang.HolProg 64 :=
.seq NamedBody480_336 NamedBody480_345

def NamedBody480_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_348 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody480_346 NamedBody480_347

def NamedBody480_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody480_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody480_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody480_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody480_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody480_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody480_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_358 : StackLang.HolProg 64 :=
.seq NamedBody480_356 NamedBody480_357

def NamedBody480_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1508#64)

def NamedBody480_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_362 : StackLang.HolProg 64 :=
.seq NamedBody480_360 NamedBody480_361

def NamedBody480_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody480_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody480_366 : StackLang.HolProg 64 :=
.seq NamedBody480_364 NamedBody480_365

def NamedBody480_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_368 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody480_366 NamedBody480_367

def NamedBody480_369 : StackLang.HolProg 64 :=
.seq NamedBody480_363 NamedBody480_368

def NamedBody480_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody480_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 11

def NamedBody480_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody480_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody480_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody480_379 : StackLang.HolProg 64 :=
.seq NamedBody480_377 NamedBody480_378

def NamedBody480_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody480_381 : StackLang.HolProg 64 :=
.seq NamedBody480_379 NamedBody480_380

def NamedBody480_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_383 : StackLang.HolProg 64 :=
.seq NamedBody480_381 NamedBody480_382

def NamedBody480_384 : StackLang.HolProg 64 :=
.seq NamedBody480_376 NamedBody480_383

def NamedBody480_385 : StackLang.HolProg 64 :=
.seq NamedBody480_375 NamedBody480_384

def NamedBody480_386 : StackLang.HolProg 64 :=
.seq NamedBody480_374 NamedBody480_385

def NamedBody480_387 : StackLang.HolProg 64 :=
.seq NamedBody480_373 NamedBody480_386

def NamedBody480_388 : StackLang.HolProg 64 :=
.seq NamedBody480_372 NamedBody480_387

def NamedBody480_389 : StackLang.HolProg 64 :=
.seq NamedBody480_371 NamedBody480_388

def NamedBody480_390 : StackLang.HolProg 64 :=
.seq NamedBody480_370 NamedBody480_389

def NamedBody480_391 : StackLang.HolProg 64 :=
.seq NamedBody480_369 NamedBody480_390

def NamedBody480_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody480_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_400 : StackLang.HolProg 64 :=
.seq NamedBody480_398 NamedBody480_399

def NamedBody480_401 : StackLang.HolProg 64 :=
.seq NamedBody480_397 NamedBody480_400

def NamedBody480_402 : StackLang.HolProg 64 :=
.seq NamedBody480_396 NamedBody480_401

def NamedBody480_403 : StackLang.HolProg 64 :=
.seq NamedBody480_395 NamedBody480_402

def NamedBody480_404 : StackLang.HolProg 64 :=
.seq NamedBody480_394 NamedBody480_403

def NamedBody480_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_406 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody480_407 : StackLang.HolProg 64 :=
.seq NamedBody480_405 NamedBody480_406

def NamedBody480_408 : StackLang.HolProg 64 :=
.call (some (NamedBody480_404, 1, 480, 10)) (Sum.inl 464) (some (NamedBody480_407, 480, 11))

def NamedBody480_409 : StackLang.HolProg 64 :=
.seq NamedBody480_393 NamedBody480_408

def NamedBody480_410 : StackLang.HolProg 64 :=
.seq NamedBody480_392 NamedBody480_409

def NamedBody480_411 : StackLang.HolProg 64 :=
.seq NamedBody480_391 NamedBody480_410

def NamedBody480_412 : StackLang.HolProg 64 :=
.seq NamedBody480_362 NamedBody480_411

def NamedBody480_413 : StackLang.HolProg 64 :=
.seq NamedBody480_359 NamedBody480_412

def NamedBody480_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody480_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_417 : StackLang.HolProg 64 :=
.seq NamedBody480_415 NamedBody480_416

def NamedBody480_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1509#64)

def NamedBody480_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_421 : StackLang.HolProg 64 :=
.seq NamedBody480_419 NamedBody480_420

def NamedBody480_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody480_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody480_425 : StackLang.HolProg 64 :=
.seq NamedBody480_423 NamedBody480_424

def NamedBody480_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_427 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody480_425 NamedBody480_426

def NamedBody480_428 : StackLang.HolProg 64 :=
.seq NamedBody480_422 NamedBody480_427

def NamedBody480_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody480_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 13

def NamedBody480_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody480_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody480_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody480_438 : StackLang.HolProg 64 :=
.seq NamedBody480_436 NamedBody480_437

def NamedBody480_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody480_440 : StackLang.HolProg 64 :=
.seq NamedBody480_438 NamedBody480_439

def NamedBody480_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_442 : StackLang.HolProg 64 :=
.seq NamedBody480_440 NamedBody480_441

def NamedBody480_443 : StackLang.HolProg 64 :=
.seq NamedBody480_435 NamedBody480_442

def NamedBody480_444 : StackLang.HolProg 64 :=
.seq NamedBody480_434 NamedBody480_443

def NamedBody480_445 : StackLang.HolProg 64 :=
.seq NamedBody480_433 NamedBody480_444

def NamedBody480_446 : StackLang.HolProg 64 :=
.seq NamedBody480_432 NamedBody480_445

def NamedBody480_447 : StackLang.HolProg 64 :=
.seq NamedBody480_431 NamedBody480_446

def NamedBody480_448 : StackLang.HolProg 64 :=
.seq NamedBody480_430 NamedBody480_447

def NamedBody480_449 : StackLang.HolProg 64 :=
.seq NamedBody480_429 NamedBody480_448

def NamedBody480_450 : StackLang.HolProg 64 :=
.seq NamedBody480_428 NamedBody480_449

def NamedBody480_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody480_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody480_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_460 : StackLang.HolProg 64 :=
.seq NamedBody480_458 NamedBody480_459

def NamedBody480_461 : StackLang.HolProg 64 :=
.seq NamedBody480_457 NamedBody480_460

def NamedBody480_462 : StackLang.HolProg 64 :=
.seq NamedBody480_456 NamedBody480_461

def NamedBody480_463 : StackLang.HolProg 64 :=
.seq NamedBody480_455 NamedBody480_462

def NamedBody480_464 : StackLang.HolProg 64 :=
.seq NamedBody480_454 NamedBody480_463

def NamedBody480_465 : StackLang.HolProg 64 :=
.seq NamedBody480_453 NamedBody480_464

def NamedBody480_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody480_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_468 : StackLang.HolProg 64 :=
.seq NamedBody480_466 NamedBody480_467

def NamedBody480_469 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody480_470 : StackLang.HolProg 64 :=
.seq NamedBody480_468 NamedBody480_469

def NamedBody480_471 : StackLang.HolProg 64 :=
.call (some (NamedBody480_465, 1, 480, 12)) (Sum.inl 464) (some (NamedBody480_470, 480, 13))

def NamedBody480_472 : StackLang.HolProg 64 :=
.seq NamedBody480_452 NamedBody480_471

def NamedBody480_473 : StackLang.HolProg 64 :=
.seq NamedBody480_451 NamedBody480_472

def NamedBody480_474 : StackLang.HolProg 64 :=
.seq NamedBody480_450 NamedBody480_473

def NamedBody480_475 : StackLang.HolProg 64 :=
.seq NamedBody480_421 NamedBody480_474

def NamedBody480_476 : StackLang.HolProg 64 :=
.seq NamedBody480_418 NamedBody480_475

def NamedBody480_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody480_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody480_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody480_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody480_485 : StackLang.HolProg 64 :=
.seq NamedBody480_483 NamedBody480_484

def NamedBody480_486 : StackLang.HolProg 64 :=
.seq NamedBody480_482 NamedBody480_485

def NamedBody480_487 : StackLang.HolProg 64 :=
.seq NamedBody480_481 NamedBody480_486

def NamedBody480_488 : StackLang.HolProg 64 :=
.seq NamedBody480_480 NamedBody480_487

def NamedBody480_489 : StackLang.HolProg 64 :=
.seq NamedBody480_479 NamedBody480_488

def NamedBody480_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_491 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody480_489 NamedBody480_490

def NamedBody480_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody480_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody480_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody480_498 : StackLang.HolProg 64 :=
.seq NamedBody480_496 NamedBody480_497

def NamedBody480_499 : StackLang.HolProg 64 :=
.seq NamedBody480_495 NamedBody480_498

def NamedBody480_500 : StackLang.HolProg 64 :=
.seq NamedBody480_494 NamedBody480_499

def NamedBody480_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1510#64)

def NamedBody480_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_504 : StackLang.HolProg 64 :=
.seq NamedBody480_502 NamedBody480_503

def NamedBody480_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody480_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody480_508 : StackLang.HolProg 64 :=
.seq NamedBody480_506 NamedBody480_507

def NamedBody480_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_510 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody480_508 NamedBody480_509

def NamedBody480_511 : StackLang.HolProg 64 :=
.seq NamedBody480_505 NamedBody480_510

def NamedBody480_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody480_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 15

def NamedBody480_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody480_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody480_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody480_521 : StackLang.HolProg 64 :=
.seq NamedBody480_519 NamedBody480_520

def NamedBody480_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody480_523 : StackLang.HolProg 64 :=
.seq NamedBody480_521 NamedBody480_522

def NamedBody480_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_525 : StackLang.HolProg 64 :=
.seq NamedBody480_523 NamedBody480_524

def NamedBody480_526 : StackLang.HolProg 64 :=
.seq NamedBody480_518 NamedBody480_525

def NamedBody480_527 : StackLang.HolProg 64 :=
.seq NamedBody480_517 NamedBody480_526

def NamedBody480_528 : StackLang.HolProg 64 :=
.seq NamedBody480_516 NamedBody480_527

def NamedBody480_529 : StackLang.HolProg 64 :=
.seq NamedBody480_515 NamedBody480_528

def NamedBody480_530 : StackLang.HolProg 64 :=
.seq NamedBody480_514 NamedBody480_529

def NamedBody480_531 : StackLang.HolProg 64 :=
.seq NamedBody480_513 NamedBody480_530

def NamedBody480_532 : StackLang.HolProg 64 :=
.seq NamedBody480_512 NamedBody480_531

def NamedBody480_533 : StackLang.HolProg 64 :=
.seq NamedBody480_511 NamedBody480_532

def NamedBody480_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody480_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_542 : StackLang.HolProg 64 :=
.seq NamedBody480_540 NamedBody480_541

def NamedBody480_543 : StackLang.HolProg 64 :=
.seq NamedBody480_539 NamedBody480_542

def NamedBody480_544 : StackLang.HolProg 64 :=
.seq NamedBody480_538 NamedBody480_543

def NamedBody480_545 : StackLang.HolProg 64 :=
.seq NamedBody480_537 NamedBody480_544

def NamedBody480_546 : StackLang.HolProg 64 :=
.seq NamedBody480_536 NamedBody480_545

def NamedBody480_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_548 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody480_549 : StackLang.HolProg 64 :=
.seq NamedBody480_547 NamedBody480_548

def NamedBody480_550 : StackLang.HolProg 64 :=
.call (some (NamedBody480_546, 1, 480, 14)) (Sum.inl 479) (some (NamedBody480_549, 480, 15))

def NamedBody480_551 : StackLang.HolProg 64 :=
.seq NamedBody480_535 NamedBody480_550

def NamedBody480_552 : StackLang.HolProg 64 :=
.seq NamedBody480_534 NamedBody480_551

def NamedBody480_553 : StackLang.HolProg 64 :=
.seq NamedBody480_533 NamedBody480_552

def NamedBody480_554 : StackLang.HolProg 64 :=
.seq NamedBody480_504 NamedBody480_553

def NamedBody480_555 : StackLang.HolProg 64 :=
.seq NamedBody480_501 NamedBody480_554

def NamedBody480_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody480_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody480_560 : StackLang.HolProg 64 :=
.seq NamedBody480_558 NamedBody480_559

def NamedBody480_561 : StackLang.HolProg 64 :=
.seq NamedBody480_557 NamedBody480_560

def NamedBody480_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1511#64)

def NamedBody480_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_565 : StackLang.HolProg 64 :=
.seq NamedBody480_563 NamedBody480_564

def NamedBody480_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody480_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody480_569 : StackLang.HolProg 64 :=
.seq NamedBody480_567 NamedBody480_568

def NamedBody480_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_571 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody480_569 NamedBody480_570

def NamedBody480_572 : StackLang.HolProg 64 :=
.seq NamedBody480_566 NamedBody480_571

def NamedBody480_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody480_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody480_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 17

def NamedBody480_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody480_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody480_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody480_582 : StackLang.HolProg 64 :=
.seq NamedBody480_580 NamedBody480_581

def NamedBody480_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody480_584 : StackLang.HolProg 64 :=
.seq NamedBody480_582 NamedBody480_583

def NamedBody480_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_586 : StackLang.HolProg 64 :=
.seq NamedBody480_584 NamedBody480_585

def NamedBody480_587 : StackLang.HolProg 64 :=
.seq NamedBody480_579 NamedBody480_586

def NamedBody480_588 : StackLang.HolProg 64 :=
.seq NamedBody480_578 NamedBody480_587

def NamedBody480_589 : StackLang.HolProg 64 :=
.seq NamedBody480_577 NamedBody480_588

def NamedBody480_590 : StackLang.HolProg 64 :=
.seq NamedBody480_576 NamedBody480_589

def NamedBody480_591 : StackLang.HolProg 64 :=
.seq NamedBody480_575 NamedBody480_590

def NamedBody480_592 : StackLang.HolProg 64 :=
.seq NamedBody480_574 NamedBody480_591

def NamedBody480_593 : StackLang.HolProg 64 :=
.seq NamedBody480_573 NamedBody480_592

def NamedBody480_594 : StackLang.HolProg 64 :=
.seq NamedBody480_572 NamedBody480_593

def NamedBody480_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody480_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody480_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody480_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody480_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody480_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody480_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody480_606 : StackLang.HolProg 64 :=
.seq NamedBody480_604 NamedBody480_605

def NamedBody480_607 : StackLang.HolProg 64 :=
.seq NamedBody480_603 NamedBody480_606

def NamedBody480_608 : StackLang.HolProg 64 :=
.seq NamedBody480_602 NamedBody480_607

def NamedBody480_609 : StackLang.HolProg 64 :=
.seq NamedBody480_601 NamedBody480_608

def NamedBody480_610 : StackLang.HolProg 64 :=
.seq NamedBody480_600 NamedBody480_609

def NamedBody480_611 : StackLang.HolProg 64 :=
.seq NamedBody480_599 NamedBody480_610

def NamedBody480_612 : StackLang.HolProg 64 :=
.seq NamedBody480_598 NamedBody480_611

def NamedBody480_613 : StackLang.HolProg 64 :=
.seq NamedBody480_597 NamedBody480_612

def NamedBody480_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody480_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody480_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody480_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody480_618 : StackLang.HolProg 64 :=
.seq NamedBody480_616 NamedBody480_617

def NamedBody480_619 : StackLang.HolProg 64 :=
.seq NamedBody480_615 NamedBody480_618

def NamedBody480_620 : StackLang.HolProg 64 :=
.seq NamedBody480_614 NamedBody480_619

def NamedBody480_621 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody480_622 : StackLang.HolProg 64 :=
.seq NamedBody480_620 NamedBody480_621

def NamedBody480_623 : StackLang.HolProg 64 :=
.call (some (NamedBody480_613, 1, 480, 16)) (Sum.inl 479) (some (NamedBody480_622, 480, 17))

def NamedBody480_624 : StackLang.HolProg 64 :=
.seq NamedBody480_596 NamedBody480_623

def NamedBody480_625 : StackLang.HolProg 64 :=
.seq NamedBody480_595 NamedBody480_624

def NamedBody480_626 : StackLang.HolProg 64 :=
.seq NamedBody480_594 NamedBody480_625

def NamedBody480_627 : StackLang.HolProg 64 :=
.seq NamedBody480_565 NamedBody480_626

def NamedBody480_628 : StackLang.HolProg 64 :=
.seq NamedBody480_562 NamedBody480_627

def NamedBody480_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody480_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody480_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody480_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody480_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody480_638 : StackLang.HolProg 64 :=
.seq NamedBody480_636 NamedBody480_637

def NamedBody480_639 : StackLang.HolProg 64 :=
.seq NamedBody480_635 NamedBody480_638

def NamedBody480_640 : StackLang.HolProg 64 :=
.seq NamedBody480_634 NamedBody480_639

def NamedBody480_641 : StackLang.HolProg 64 :=
.seq NamedBody480_633 NamedBody480_640

def NamedBody480_642 : StackLang.HolProg 64 :=
.seq NamedBody480_632 NamedBody480_641

def NamedBody480_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_644 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody480_642 NamedBody480_643

def NamedBody480_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody480_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody480_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody480_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody480_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody480_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody480_654 : StackLang.HolProg 64 :=
.seq NamedBody480_652 NamedBody480_653

def NamedBody480_655 : StackLang.HolProg 64 :=
.seq NamedBody480_651 NamedBody480_654

def NamedBody480_656 : StackLang.HolProg 64 :=
.seq NamedBody480_650 NamedBody480_655

def NamedBody480_657 : StackLang.HolProg 64 :=
.seq NamedBody480_649 NamedBody480_656

def NamedBody480_658 : StackLang.HolProg 64 :=
.seq NamedBody480_648 NamedBody480_657

def NamedBody480_659 : StackLang.HolProg 64 :=
.seq NamedBody480_647 NamedBody480_658

def NamedBody480_660 : StackLang.HolProg 64 :=
.seq NamedBody480_646 NamedBody480_659

def NamedBody480_661 : StackLang.HolProg 64 :=
.seq NamedBody480_645 NamedBody480_660

def NamedBody480_662 : StackLang.HolProg 64 :=
.seq NamedBody480_644 NamedBody480_661

def NamedBody480_663 : StackLang.HolProg 64 :=
.seq NamedBody480_631 NamedBody480_662

def NamedBody480_664 : StackLang.HolProg 64 :=
.seq NamedBody480_630 NamedBody480_663

def NamedBody480_665 : StackLang.HolProg 64 :=
.seq NamedBody480_629 NamedBody480_664

def NamedBody480_666 : StackLang.HolProg 64 :=
.seq NamedBody480_628 NamedBody480_665

def NamedBody480_667 : StackLang.HolProg 64 :=
.seq NamedBody480_561 NamedBody480_666

def NamedBody480_668 : StackLang.HolProg 64 :=
.seq NamedBody480_556 NamedBody480_667

def NamedBody480_669 : StackLang.HolProg 64 :=
.seq NamedBody480_555 NamedBody480_668

def NamedBody480_670 : StackLang.HolProg 64 :=
.seq NamedBody480_500 NamedBody480_669

def NamedBody480_671 : StackLang.HolProg 64 :=
.seq NamedBody480_493 NamedBody480_670

def NamedBody480_672 : StackLang.HolProg 64 :=
.seq NamedBody480_492 NamedBody480_671

def NamedBody480_673 : StackLang.HolProg 64 :=
.seq NamedBody480_491 NamedBody480_672

def NamedBody480_674 : StackLang.HolProg 64 :=
.seq NamedBody480_478 NamedBody480_673

def NamedBody480_675 : StackLang.HolProg 64 :=
.seq NamedBody480_477 NamedBody480_674

def NamedBody480_676 : StackLang.HolProg 64 :=
.seq NamedBody480_476 NamedBody480_675

def NamedBody480_677 : StackLang.HolProg 64 :=
.seq NamedBody480_417 NamedBody480_676

def NamedBody480_678 : StackLang.HolProg 64 :=
.seq NamedBody480_414 NamedBody480_677

def NamedBody480_679 : StackLang.HolProg 64 :=
.seq NamedBody480_413 NamedBody480_678

def NamedBody480_680 : StackLang.HolProg 64 :=
.seq NamedBody480_358 NamedBody480_679

def NamedBody480_681 : StackLang.HolProg 64 :=
.seq NamedBody480_355 NamedBody480_680

def NamedBody480_682 : StackLang.HolProg 64 :=
.seq NamedBody480_354 NamedBody480_681

def NamedBody480_683 : StackLang.HolProg 64 :=
.seq NamedBody480_353 NamedBody480_682

def NamedBody480_684 : StackLang.HolProg 64 :=
.seq NamedBody480_352 NamedBody480_683

def NamedBody480_685 : StackLang.HolProg 64 :=
.seq NamedBody480_351 NamedBody480_684

def NamedBody480_686 : StackLang.HolProg 64 :=
.seq NamedBody480_350 NamedBody480_685

def NamedBody480_687 : StackLang.HolProg 64 :=
.seq NamedBody480_349 NamedBody480_686

def NamedBody480_688 : StackLang.HolProg 64 :=
.seq NamedBody480_348 NamedBody480_687

def NamedBody480_689 : StackLang.HolProg 64 :=
.seq NamedBody480_335 NamedBody480_688

def NamedBody480_690 : StackLang.HolProg 64 :=
.seq NamedBody480_334 NamedBody480_689

def NamedBody480_691 : StackLang.HolProg 64 :=
.seq NamedBody480_333 NamedBody480_690

def NamedBody480_692 : StackLang.HolProg 64 :=
.seq NamedBody480_332 NamedBody480_691

def NamedBody480_693 : StackLang.HolProg 64 :=
.seq NamedBody480_277 NamedBody480_692

def NamedBody480_694 : StackLang.HolProg 64 :=
.seq NamedBody480_276 NamedBody480_693

def NamedBody480_695 : StackLang.HolProg 64 :=
.seq NamedBody480_275 NamedBody480_694

def NamedBody480_696 : StackLang.HolProg 64 :=
.seq NamedBody480_220 NamedBody480_695

def NamedBody480_697 : StackLang.HolProg 64 :=
.seq NamedBody480_217 NamedBody480_696

def NamedBody480_698 : StackLang.HolProg 64 :=
.seq NamedBody480_216 NamedBody480_697

def NamedBody480_699 : StackLang.HolProg 64 :=
.seq NamedBody480_149 NamedBody480_698

def NamedBody480_700 : StackLang.HolProg 64 :=
.seq NamedBody480_144 NamedBody480_699

def NamedBody480_701 : StackLang.HolProg 64 :=
.seq NamedBody480_143 NamedBody480_700

def NamedBody480_702 : StackLang.HolProg 64 :=
.seq NamedBody480_142 NamedBody480_701

def NamedBody480_703 : StackLang.HolProg 64 :=
.seq NamedBody480_129 NamedBody480_702

def NamedBody480_704 : StackLang.HolProg 64 :=
.seq NamedBody480_128 NamedBody480_703

def NamedBody480_705 : StackLang.HolProg 64 :=
.seq NamedBody480_127 NamedBody480_704

def NamedBody480_706 : StackLang.HolProg 64 :=
.seq NamedBody480_126 NamedBody480_705

def NamedBody480_707 : StackLang.HolProg 64 :=
.seq NamedBody480_31 NamedBody480_706

def NamedBody480_708 : StackLang.HolProg 64 :=
.seq NamedBody480_6 NamedBody480_707

def Named480 : Nat × StackLang.HolProg 64 := (480, NamedBody480_708)
theorem Named480_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed480 = Named480 := by
  kernel_rfl
#print axioms Named480_eq
end InitECandidate.Proofs.BackendStages
