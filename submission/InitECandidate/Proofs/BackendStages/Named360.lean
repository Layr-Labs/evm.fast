import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed360
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody360_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody360_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody360_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody360_3 : StackLang.HolProg 64 :=
.seq NamedBody360_1 NamedBody360_2

def NamedBody360_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody360_3 NamedBody360_4

def NamedBody360_6 : StackLang.HolProg 64 :=
.seq NamedBody360_0 NamedBody360_5

def NamedBody360_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody360_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody360_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody360_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody360_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody360_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody360_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody360_15 : StackLang.HolProg 64 :=
.seq NamedBody360_13 NamedBody360_14

def NamedBody360_16 : StackLang.HolProg 64 :=
.seq NamedBody360_12 NamedBody360_15

def NamedBody360_17 : StackLang.HolProg 64 :=
.seq NamedBody360_11 NamedBody360_16

def NamedBody360_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody360_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 24#64)

def NamedBody360_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody360_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody360_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody360_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody360_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 33#64)

def NamedBody360_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody360_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody360_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody360_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody360_33 : StackLang.HolProg 64 :=
.seq NamedBody360_31 NamedBody360_32

def NamedBody360_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody360_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody360_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody360_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody360_38 : StackLang.HolProg 64 :=
.seq NamedBody360_36 NamedBody360_37

def NamedBody360_39 : StackLang.HolProg 64 :=
.seq NamedBody360_35 NamedBody360_38

def NamedBody360_40 : StackLang.HolProg 64 :=
.seq NamedBody360_34 NamedBody360_39

def NamedBody360_41 : StackLang.HolProg 64 :=
.seq NamedBody360_33 NamedBody360_40

def NamedBody360_42 : StackLang.HolProg 64 :=
.seq NamedBody360_30 NamedBody360_41

def NamedBody360_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1033#64)

def NamedBody360_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody360_46 : StackLang.HolProg 64 :=
.seq NamedBody360_44 NamedBody360_45

def NamedBody360_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody360_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody360_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody360_50 : StackLang.HolProg 64 :=
.seq NamedBody360_48 NamedBody360_49

def NamedBody360_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_52 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody360_50 NamedBody360_51

def NamedBody360_53 : StackLang.HolProg 64 :=
.seq NamedBody360_47 NamedBody360_52

def NamedBody360_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody360_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody360_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 360 3

def NamedBody360_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody360_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody360_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody360_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody360_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody360_63 : StackLang.HolProg 64 :=
.seq NamedBody360_61 NamedBody360_62

def NamedBody360_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody360_65 : StackLang.HolProg 64 :=
.seq NamedBody360_63 NamedBody360_64

def NamedBody360_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody360_67 : StackLang.HolProg 64 :=
.seq NamedBody360_65 NamedBody360_66

def NamedBody360_68 : StackLang.HolProg 64 :=
.seq NamedBody360_60 NamedBody360_67

def NamedBody360_69 : StackLang.HolProg 64 :=
.seq NamedBody360_59 NamedBody360_68

def NamedBody360_70 : StackLang.HolProg 64 :=
.seq NamedBody360_58 NamedBody360_69

def NamedBody360_71 : StackLang.HolProg 64 :=
.seq NamedBody360_57 NamedBody360_70

def NamedBody360_72 : StackLang.HolProg 64 :=
.seq NamedBody360_56 NamedBody360_71

def NamedBody360_73 : StackLang.HolProg 64 :=
.seq NamedBody360_55 NamedBody360_72

def NamedBody360_74 : StackLang.HolProg 64 :=
.seq NamedBody360_54 NamedBody360_73

def NamedBody360_75 : StackLang.HolProg 64 :=
.seq NamedBody360_53 NamedBody360_74

def NamedBody360_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody360_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody360_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody360_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody360_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody360_84 : StackLang.HolProg 64 :=
.seq NamedBody360_82 NamedBody360_83

def NamedBody360_85 : StackLang.HolProg 64 :=
.seq NamedBody360_81 NamedBody360_84

def NamedBody360_86 : StackLang.HolProg 64 :=
.seq NamedBody360_80 NamedBody360_85

def NamedBody360_87 : StackLang.HolProg 64 :=
.seq NamedBody360_79 NamedBody360_86

def NamedBody360_88 : StackLang.HolProg 64 :=
.seq NamedBody360_78 NamedBody360_87

def NamedBody360_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody360_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody360_91 : StackLang.HolProg 64 :=
.seq NamedBody360_89 NamedBody360_90

def NamedBody360_92 : StackLang.HolProg 64 :=
.call (some (NamedBody360_88, 1, 360, 2)) (Sum.inl 180) (some (NamedBody360_91, 360, 3))

def NamedBody360_93 : StackLang.HolProg 64 :=
.seq NamedBody360_77 NamedBody360_92

def NamedBody360_94 : StackLang.HolProg 64 :=
.seq NamedBody360_76 NamedBody360_93

def NamedBody360_95 : StackLang.HolProg 64 :=
.seq NamedBody360_75 NamedBody360_94

def NamedBody360_96 : StackLang.HolProg 64 :=
.seq NamedBody360_46 NamedBody360_95

def NamedBody360_97 : StackLang.HolProg 64 :=
.seq NamedBody360_43 NamedBody360_96

def NamedBody360_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody360_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody360_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 21#64)))

def NamedBody360_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody360_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1034#64)

def NamedBody360_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody360_106 : StackLang.HolProg 64 :=
.seq NamedBody360_104 NamedBody360_105

def NamedBody360_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody360_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody360_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody360_110 : StackLang.HolProg 64 :=
.seq NamedBody360_108 NamedBody360_109

def NamedBody360_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody360_110 NamedBody360_111

def NamedBody360_113 : StackLang.HolProg 64 :=
.seq NamedBody360_107 NamedBody360_112

def NamedBody360_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody360_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody360_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 360 5

def NamedBody360_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody360_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody360_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody360_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody360_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody360_123 : StackLang.HolProg 64 :=
.seq NamedBody360_121 NamedBody360_122

def NamedBody360_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody360_125 : StackLang.HolProg 64 :=
.seq NamedBody360_123 NamedBody360_124

def NamedBody360_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody360_127 : StackLang.HolProg 64 :=
.seq NamedBody360_125 NamedBody360_126

def NamedBody360_128 : StackLang.HolProg 64 :=
.seq NamedBody360_120 NamedBody360_127

def NamedBody360_129 : StackLang.HolProg 64 :=
.seq NamedBody360_119 NamedBody360_128

def NamedBody360_130 : StackLang.HolProg 64 :=
.seq NamedBody360_118 NamedBody360_129

def NamedBody360_131 : StackLang.HolProg 64 :=
.seq NamedBody360_117 NamedBody360_130

def NamedBody360_132 : StackLang.HolProg 64 :=
.seq NamedBody360_116 NamedBody360_131

def NamedBody360_133 : StackLang.HolProg 64 :=
.seq NamedBody360_115 NamedBody360_132

def NamedBody360_134 : StackLang.HolProg 64 :=
.seq NamedBody360_114 NamedBody360_133

def NamedBody360_135 : StackLang.HolProg 64 :=
.seq NamedBody360_113 NamedBody360_134

def NamedBody360_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody360_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody360_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody360_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody360_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody360_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody360_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody360_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody360_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody360_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody360_149 : StackLang.HolProg 64 :=
.seq NamedBody360_147 NamedBody360_148

def NamedBody360_150 : StackLang.HolProg 64 :=
.seq NamedBody360_146 NamedBody360_149

def NamedBody360_151 : StackLang.HolProg 64 :=
.seq NamedBody360_145 NamedBody360_150

def NamedBody360_152 : StackLang.HolProg 64 :=
.seq NamedBody360_144 NamedBody360_151

def NamedBody360_153 : StackLang.HolProg 64 :=
.seq NamedBody360_143 NamedBody360_152

def NamedBody360_154 : StackLang.HolProg 64 :=
.seq NamedBody360_142 NamedBody360_153

def NamedBody360_155 : StackLang.HolProg 64 :=
.seq NamedBody360_141 NamedBody360_154

def NamedBody360_156 : StackLang.HolProg 64 :=
.seq NamedBody360_140 NamedBody360_155

def NamedBody360_157 : StackLang.HolProg 64 :=
.seq NamedBody360_139 NamedBody360_156

def NamedBody360_158 : StackLang.HolProg 64 :=
.seq NamedBody360_138 NamedBody360_157

def NamedBody360_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody360_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody360_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody360_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody360_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody360_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody360_165 : StackLang.HolProg 64 :=
.seq NamedBody360_163 NamedBody360_164

def NamedBody360_166 : StackLang.HolProg 64 :=
.seq NamedBody360_162 NamedBody360_165

def NamedBody360_167 : StackLang.HolProg 64 :=
.seq NamedBody360_161 NamedBody360_166

def NamedBody360_168 : StackLang.HolProg 64 :=
.seq NamedBody360_160 NamedBody360_167

def NamedBody360_169 : StackLang.HolProg 64 :=
.seq NamedBody360_159 NamedBody360_168

def NamedBody360_170 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody360_171 : StackLang.HolProg 64 :=
.seq NamedBody360_169 NamedBody360_170

def NamedBody360_172 : StackLang.HolProg 64 :=
.call (some (NamedBody360_158, 1, 360, 4)) (Sum.inl 180) (some (NamedBody360_171, 360, 5))

def NamedBody360_173 : StackLang.HolProg 64 :=
.seq NamedBody360_137 NamedBody360_172

def NamedBody360_174 : StackLang.HolProg 64 :=
.seq NamedBody360_136 NamedBody360_173

def NamedBody360_175 : StackLang.HolProg 64 :=
.seq NamedBody360_135 NamedBody360_174

def NamedBody360_176 : StackLang.HolProg 64 :=
.seq NamedBody360_106 NamedBody360_175

def NamedBody360_177 : StackLang.HolProg 64 :=
.seq NamedBody360_103 NamedBody360_176

def NamedBody360_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody360_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody360_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody360_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody360_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody360_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody360_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody360_187 : StackLang.HolProg 64 :=
.seq NamedBody360_185 NamedBody360_186

def NamedBody360_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody360_189 : StackLang.HolProg 64 :=
.seq NamedBody360_187 NamedBody360_188

def NamedBody360_190 : StackLang.HolProg 64 :=
.seq NamedBody360_184 NamedBody360_189

def NamedBody360_191 : StackLang.HolProg 64 :=
.seq NamedBody360_183 NamedBody360_190

def NamedBody360_192 : StackLang.HolProg 64 :=
.seq NamedBody360_182 NamedBody360_191

def NamedBody360_193 : StackLang.HolProg 64 :=
.seq NamedBody360_181 NamedBody360_192

def NamedBody360_194 : StackLang.HolProg 64 :=
.seq NamedBody360_180 NamedBody360_193

def NamedBody360_195 : StackLang.HolProg 64 :=
.seq NamedBody360_179 NamedBody360_194

def NamedBody360_196 : StackLang.HolProg 64 :=
.seq NamedBody360_178 NamedBody360_195

def NamedBody360_197 : StackLang.HolProg 64 :=
.seq NamedBody360_177 NamedBody360_196

def NamedBody360_198 : StackLang.HolProg 64 :=
.seq NamedBody360_102 NamedBody360_197

def NamedBody360_199 : StackLang.HolProg 64 :=
.seq NamedBody360_101 NamedBody360_198

def NamedBody360_200 : StackLang.HolProg 64 :=
.seq NamedBody360_100 NamedBody360_199

def NamedBody360_201 : StackLang.HolProg 64 :=
.seq NamedBody360_99 NamedBody360_200

def NamedBody360_202 : StackLang.HolProg 64 :=
.seq NamedBody360_98 NamedBody360_201

def NamedBody360_203 : StackLang.HolProg 64 :=
.seq NamedBody360_97 NamedBody360_202

def NamedBody360_204 : StackLang.HolProg 64 :=
.seq NamedBody360_42 NamedBody360_203

def NamedBody360_205 : StackLang.HolProg 64 :=
.seq NamedBody360_29 NamedBody360_204

def NamedBody360_206 : StackLang.HolProg 64 :=
.seq NamedBody360_28 NamedBody360_205

def NamedBody360_207 : StackLang.HolProg 64 :=
.seq NamedBody360_27 NamedBody360_206

def NamedBody360_208 : StackLang.HolProg 64 :=
.seq NamedBody360_26 NamedBody360_207

def NamedBody360_209 : StackLang.HolProg 64 :=
.seq NamedBody360_25 NamedBody360_208

def NamedBody360_210 : StackLang.HolProg 64 :=
.seq NamedBody360_24 NamedBody360_209

def NamedBody360_211 : StackLang.HolProg 64 :=
.seq NamedBody360_23 NamedBody360_210

def NamedBody360_212 : StackLang.HolProg 64 :=
.seq NamedBody360_22 NamedBody360_211

def NamedBody360_213 : StackLang.HolProg 64 :=
.seq NamedBody360_21 NamedBody360_212

def NamedBody360_214 : StackLang.HolProg 64 :=
.seq NamedBody360_20 NamedBody360_213

def NamedBody360_215 : StackLang.HolProg 64 :=
.seq NamedBody360_19 NamedBody360_214

def NamedBody360_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody360_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody360_218 : StackLang.HolProg 64 :=
.seq NamedBody360_216 NamedBody360_217

def NamedBody360_219 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody360_215 NamedBody360_218

def NamedBody360_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody360_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody360_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody360_223 : StackLang.HolProg 64 :=
.seq NamedBody360_221 NamedBody360_222

def NamedBody360_224 : StackLang.HolProg 64 :=
.seq NamedBody360_220 NamedBody360_223

def NamedBody360_225 : StackLang.HolProg 64 :=
.seq NamedBody360_219 NamedBody360_224

def NamedBody360_226 : StackLang.HolProg 64 :=
.seq NamedBody360_18 NamedBody360_225

def NamedBody360_227 : StackLang.HolProg 64 :=
.loop NamedBody360_226

def NamedBody360_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody360_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody360_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody360_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody360_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody360_233 : StackLang.HolProg 64 :=
.seq NamedBody360_231 NamedBody360_232

def NamedBody360_234 : StackLang.HolProg 64 :=
.seq NamedBody360_230 NamedBody360_233

def NamedBody360_235 : StackLang.HolProg 64 :=
.seq NamedBody360_229 NamedBody360_234

def NamedBody360_236 : StackLang.HolProg 64 :=
.seq NamedBody360_228 NamedBody360_235

def NamedBody360_237 : StackLang.HolProg 64 :=
.seq NamedBody360_227 NamedBody360_236

def NamedBody360_238 : StackLang.HolProg 64 :=
.seq NamedBody360_17 NamedBody360_237

def NamedBody360_239 : StackLang.HolProg 64 :=
.seq NamedBody360_10 NamedBody360_238

def NamedBody360_240 : StackLang.HolProg 64 :=
.seq NamedBody360_9 NamedBody360_239

def NamedBody360_241 : StackLang.HolProg 64 :=
.seq NamedBody360_8 NamedBody360_240

def NamedBody360_242 : StackLang.HolProg 64 :=
.seq NamedBody360_7 NamedBody360_241

def NamedBody360_243 : StackLang.HolProg 64 :=
.seq NamedBody360_6 NamedBody360_242

def Named360 : Nat × StackLang.HolProg 64 := (360, NamedBody360_243)
theorem Named360_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed360 = Named360 := by
  kernel_rfl
#print axioms Named360_eq
end InitECandidate.Proofs.BackendStages
