import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed377
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody377_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody377_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody377_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody377_3 : StackLang.HolProg 64 :=
.seq NamedBody377_1 NamedBody377_2

def NamedBody377_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody377_3 NamedBody377_4

def NamedBody377_6 : StackLang.HolProg 64 :=
.seq NamedBody377_0 NamedBody377_5

def NamedBody377_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody377_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody377_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody377_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody377_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody377_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody377_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody377_17 : StackLang.HolProg 64 :=
.seq NamedBody377_15 NamedBody377_16

def NamedBody377_18 : StackLang.HolProg 64 :=
.seq NamedBody377_14 NamedBody377_17

def NamedBody377_19 : StackLang.HolProg 64 :=
.seq NamedBody377_13 NamedBody377_18

def NamedBody377_20 : StackLang.HolProg 64 :=
.seq NamedBody377_12 NamedBody377_19

def NamedBody377_21 : StackLang.HolProg 64 :=
.seq NamedBody377_11 NamedBody377_20

def NamedBody377_22 : StackLang.HolProg 64 :=
.seq NamedBody377_10 NamedBody377_21

def NamedBody377_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody377_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody377_22 NamedBody377_23

def NamedBody377_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 288#64))

def NamedBody377_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 296#64))

def NamedBody377_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 304#64))

def NamedBody377_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 312#64))

def NamedBody377_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody377_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody377_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody377_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody377_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody377_40 : StackLang.HolProg 64 :=
.seq NamedBody377_38 NamedBody377_39

def NamedBody377_41 : StackLang.HolProg 64 :=
.seq NamedBody377_37 NamedBody377_40

def NamedBody377_42 : StackLang.HolProg 64 :=
.seq NamedBody377_36 NamedBody377_41

def NamedBody377_43 : StackLang.HolProg 64 :=
.seq NamedBody377_35 NamedBody377_42

def NamedBody377_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1089#64)

def NamedBody377_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody377_47 : StackLang.HolProg 64 :=
.seq NamedBody377_45 NamedBody377_46

def NamedBody377_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody377_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody377_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody377_51 : StackLang.HolProg 64 :=
.seq NamedBody377_49 NamedBody377_50

def NamedBody377_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_53 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody377_51 NamedBody377_52

def NamedBody377_54 : StackLang.HolProg 64 :=
.seq NamedBody377_48 NamedBody377_53

def NamedBody377_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody377_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody377_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 3

def NamedBody377_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody377_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody377_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody377_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody377_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody377_64 : StackLang.HolProg 64 :=
.seq NamedBody377_62 NamedBody377_63

def NamedBody377_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody377_66 : StackLang.HolProg 64 :=
.seq NamedBody377_64 NamedBody377_65

def NamedBody377_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody377_68 : StackLang.HolProg 64 :=
.seq NamedBody377_66 NamedBody377_67

def NamedBody377_69 : StackLang.HolProg 64 :=
.seq NamedBody377_61 NamedBody377_68

def NamedBody377_70 : StackLang.HolProg 64 :=
.seq NamedBody377_60 NamedBody377_69

def NamedBody377_71 : StackLang.HolProg 64 :=
.seq NamedBody377_59 NamedBody377_70

def NamedBody377_72 : StackLang.HolProg 64 :=
.seq NamedBody377_58 NamedBody377_71

def NamedBody377_73 : StackLang.HolProg 64 :=
.seq NamedBody377_57 NamedBody377_72

def NamedBody377_74 : StackLang.HolProg 64 :=
.seq NamedBody377_56 NamedBody377_73

def NamedBody377_75 : StackLang.HolProg 64 :=
.seq NamedBody377_55 NamedBody377_74

def NamedBody377_76 : StackLang.HolProg 64 :=
.seq NamedBody377_54 NamedBody377_75

def NamedBody377_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody377_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody377_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody377_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody377_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody377_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody377_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody377_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody377_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody377_89 : StackLang.HolProg 64 :=
.seq NamedBody377_87 NamedBody377_88

def NamedBody377_90 : StackLang.HolProg 64 :=
.seq NamedBody377_86 NamedBody377_89

def NamedBody377_91 : StackLang.HolProg 64 :=
.seq NamedBody377_85 NamedBody377_90

def NamedBody377_92 : StackLang.HolProg 64 :=
.seq NamedBody377_84 NamedBody377_91

def NamedBody377_93 : StackLang.HolProg 64 :=
.seq NamedBody377_83 NamedBody377_92

def NamedBody377_94 : StackLang.HolProg 64 :=
.seq NamedBody377_82 NamedBody377_93

def NamedBody377_95 : StackLang.HolProg 64 :=
.seq NamedBody377_81 NamedBody377_94

def NamedBody377_96 : StackLang.HolProg 64 :=
.seq NamedBody377_80 NamedBody377_95

def NamedBody377_97 : StackLang.HolProg 64 :=
.seq NamedBody377_79 NamedBody377_96

def NamedBody377_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody377_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody377_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody377_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody377_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody377_103 : StackLang.HolProg 64 :=
.seq NamedBody377_101 NamedBody377_102

def NamedBody377_104 : StackLang.HolProg 64 :=
.seq NamedBody377_100 NamedBody377_103

def NamedBody377_105 : StackLang.HolProg 64 :=
.seq NamedBody377_99 NamedBody377_104

def NamedBody377_106 : StackLang.HolProg 64 :=
.seq NamedBody377_98 NamedBody377_105

def NamedBody377_107 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody377_108 : StackLang.HolProg 64 :=
.seq NamedBody377_106 NamedBody377_107

def NamedBody377_109 : StackLang.HolProg 64 :=
.call (some (NamedBody377_97, 1, 377, 2)) (Sum.inl 101) (some (NamedBody377_108, 377, 3))

def NamedBody377_110 : StackLang.HolProg 64 :=
.seq NamedBody377_78 NamedBody377_109

def NamedBody377_111 : StackLang.HolProg 64 :=
.seq NamedBody377_77 NamedBody377_110

def NamedBody377_112 : StackLang.HolProg 64 :=
.seq NamedBody377_76 NamedBody377_111

def NamedBody377_113 : StackLang.HolProg 64 :=
.seq NamedBody377_47 NamedBody377_112

def NamedBody377_114 : StackLang.HolProg 64 :=
.seq NamedBody377_44 NamedBody377_113

def NamedBody377_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody377_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 27#64)

def NamedBody377_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody377_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_123 : StackLang.HolProg 64 :=
.seq NamedBody377_121 NamedBody377_122

def NamedBody377_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody377_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_126 : StackLang.HolProg 64 :=
.seq NamedBody377_124 NamedBody377_125

def NamedBody377_127 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody377_123 NamedBody377_126

def NamedBody377_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 28#64)

def NamedBody377_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody377_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_133 : StackLang.HolProg 64 :=
.seq NamedBody377_131 NamedBody377_132

def NamedBody377_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody377_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_136 : StackLang.HolProg 64 :=
.seq NamedBody377_134 NamedBody377_135

def NamedBody377_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody377_133 NamedBody377_136

def NamedBody377_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody377_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody377_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody377_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody377_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody377_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def NamedBody377_148 : StackLang.HolProg 64 :=
.seq NamedBody377_146 NamedBody377_147

def NamedBody377_149 : StackLang.HolProg 64 :=
.seq NamedBody377_145 NamedBody377_148

def NamedBody377_150 : StackLang.HolProg 64 :=
.seq NamedBody377_144 NamedBody377_149

def NamedBody377_151 : StackLang.HolProg 64 :=
.seq NamedBody377_143 NamedBody377_150

def NamedBody377_152 : StackLang.HolProg 64 :=
.seq NamedBody377_142 NamedBody377_151

def NamedBody377_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_154 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody377_152 NamedBody377_153

def NamedBody377_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 35#64)

def NamedBody377_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 44#64)

def NamedBody377_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody377_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody377_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody377_166 : StackLang.HolProg 64 :=
.seq NamedBody377_164 NamedBody377_165

def NamedBody377_167 : StackLang.HolProg 64 :=
.seq NamedBody377_163 NamedBody377_166

def NamedBody377_168 : StackLang.HolProg 64 :=
.seq NamedBody377_162 NamedBody377_167

def NamedBody377_169 : StackLang.HolProg 64 :=
.seq NamedBody377_161 NamedBody377_168

def NamedBody377_170 : StackLang.HolProg 64 :=
.seq NamedBody377_160 NamedBody377_169

def NamedBody377_171 : StackLang.HolProg 64 :=
.seq NamedBody377_159 NamedBody377_170

def NamedBody377_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_173 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody377_171 NamedBody377_172

def NamedBody377_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_177 : StackLang.HolProg 64 :=
.seq NamedBody377_175 NamedBody377_176

def NamedBody377_178 : StackLang.HolProg 64 :=
.seq NamedBody377_174 NamedBody377_177

def NamedBody377_179 : StackLang.HolProg 64 :=
.seq NamedBody377_173 NamedBody377_178

def NamedBody377_180 : StackLang.HolProg 64 :=
.seq NamedBody377_158 NamedBody377_179

def NamedBody377_181 : StackLang.HolProg 64 :=
.seq NamedBody377_157 NamedBody377_180

def NamedBody377_182 : StackLang.HolProg 64 :=
.seq NamedBody377_156 NamedBody377_181

def NamedBody377_183 : StackLang.HolProg 64 :=
.seq NamedBody377_155 NamedBody377_182

def NamedBody377_184 : StackLang.HolProg 64 :=
.seq NamedBody377_154 NamedBody377_183

def NamedBody377_185 : StackLang.HolProg 64 :=
.seq NamedBody377_141 NamedBody377_184

def NamedBody377_186 : StackLang.HolProg 64 :=
.seq NamedBody377_140 NamedBody377_185

def NamedBody377_187 : StackLang.HolProg 64 :=
.seq NamedBody377_139 NamedBody377_186

def NamedBody377_188 : StackLang.HolProg 64 :=
.seq NamedBody377_138 NamedBody377_187

def NamedBody377_189 : StackLang.HolProg 64 :=
.seq NamedBody377_137 NamedBody377_188

def NamedBody377_190 : StackLang.HolProg 64 :=
.seq NamedBody377_130 NamedBody377_189

def NamedBody377_191 : StackLang.HolProg 64 :=
.seq NamedBody377_129 NamedBody377_190

def NamedBody377_192 : StackLang.HolProg 64 :=
.seq NamedBody377_128 NamedBody377_191

def NamedBody377_193 : StackLang.HolProg 64 :=
.seq NamedBody377_127 NamedBody377_192

def NamedBody377_194 : StackLang.HolProg 64 :=
.seq NamedBody377_120 NamedBody377_193

def NamedBody377_195 : StackLang.HolProg 64 :=
.seq NamedBody377_119 NamedBody377_194

def NamedBody377_196 : StackLang.HolProg 64 :=
.seq NamedBody377_118 NamedBody377_195

def NamedBody377_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_199 : StackLang.HolProg 64 :=
.seq NamedBody377_197 NamedBody377_198

def NamedBody377_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody377_196 NamedBody377_199

def NamedBody377_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody377_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody377_204 : StackLang.HolProg 64 :=
.seq NamedBody377_202 NamedBody377_203

def NamedBody377_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody377_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody377_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody377_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 35#64)

def NamedBody377_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody377_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1090#64)

def NamedBody377_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody377_213 : StackLang.HolProg 64 :=
.seq NamedBody377_211 NamedBody377_212

def NamedBody377_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody377_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody377_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody377_217 : StackLang.HolProg 64 :=
.seq NamedBody377_215 NamedBody377_216

def NamedBody377_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_219 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody377_217 NamedBody377_218

def NamedBody377_220 : StackLang.HolProg 64 :=
.seq NamedBody377_214 NamedBody377_219

def NamedBody377_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody377_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody377_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 5

def NamedBody377_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody377_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody377_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody377_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody377_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody377_230 : StackLang.HolProg 64 :=
.seq NamedBody377_228 NamedBody377_229

def NamedBody377_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody377_232 : StackLang.HolProg 64 :=
.seq NamedBody377_230 NamedBody377_231

def NamedBody377_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody377_234 : StackLang.HolProg 64 :=
.seq NamedBody377_232 NamedBody377_233

def NamedBody377_235 : StackLang.HolProg 64 :=
.seq NamedBody377_227 NamedBody377_234

def NamedBody377_236 : StackLang.HolProg 64 :=
.seq NamedBody377_226 NamedBody377_235

def NamedBody377_237 : StackLang.HolProg 64 :=
.seq NamedBody377_225 NamedBody377_236

def NamedBody377_238 : StackLang.HolProg 64 :=
.seq NamedBody377_224 NamedBody377_237

def NamedBody377_239 : StackLang.HolProg 64 :=
.seq NamedBody377_223 NamedBody377_238

def NamedBody377_240 : StackLang.HolProg 64 :=
.seq NamedBody377_222 NamedBody377_239

def NamedBody377_241 : StackLang.HolProg 64 :=
.seq NamedBody377_221 NamedBody377_240

def NamedBody377_242 : StackLang.HolProg 64 :=
.seq NamedBody377_220 NamedBody377_241

def NamedBody377_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody377_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody377_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody377_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody377_250 : StackLang.HolProg 64 :=
.seq NamedBody377_248 NamedBody377_249

def NamedBody377_251 : StackLang.HolProg 64 :=
.seq NamedBody377_247 NamedBody377_250

def NamedBody377_252 : StackLang.HolProg 64 :=
.seq NamedBody377_246 NamedBody377_251

def NamedBody377_253 : StackLang.HolProg 64 :=
.seq NamedBody377_245 NamedBody377_252

def NamedBody377_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_255 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody377_256 : StackLang.HolProg 64 :=
.seq NamedBody377_254 NamedBody377_255

def NamedBody377_257 : StackLang.HolProg 64 :=
.call (some (NamedBody377_253, 1, 377, 4)) (Sum.inl 117) (some (NamedBody377_256, 377, 5))

def NamedBody377_258 : StackLang.HolProg 64 :=
.seq NamedBody377_244 NamedBody377_257

def NamedBody377_259 : StackLang.HolProg 64 :=
.seq NamedBody377_243 NamedBody377_258

def NamedBody377_260 : StackLang.HolProg 64 :=
.seq NamedBody377_242 NamedBody377_259

def NamedBody377_261 : StackLang.HolProg 64 :=
.seq NamedBody377_213 NamedBody377_260

def NamedBody377_262 : StackLang.HolProg 64 :=
.seq NamedBody377_210 NamedBody377_261

def NamedBody377_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody377_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def NamedBody377_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1091#64)

def NamedBody377_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody377_270 : StackLang.HolProg 64 :=
.seq NamedBody377_268 NamedBody377_269

def NamedBody377_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody377_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody377_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody377_274 : StackLang.HolProg 64 :=
.seq NamedBody377_272 NamedBody377_273

def NamedBody377_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_276 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody377_274 NamedBody377_275

def NamedBody377_277 : StackLang.HolProg 64 :=
.seq NamedBody377_271 NamedBody377_276

def NamedBody377_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody377_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody377_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 7

def NamedBody377_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody377_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody377_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody377_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody377_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody377_287 : StackLang.HolProg 64 :=
.seq NamedBody377_285 NamedBody377_286

def NamedBody377_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody377_289 : StackLang.HolProg 64 :=
.seq NamedBody377_287 NamedBody377_288

def NamedBody377_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody377_291 : StackLang.HolProg 64 :=
.seq NamedBody377_289 NamedBody377_290

def NamedBody377_292 : StackLang.HolProg 64 :=
.seq NamedBody377_284 NamedBody377_291

def NamedBody377_293 : StackLang.HolProg 64 :=
.seq NamedBody377_283 NamedBody377_292

def NamedBody377_294 : StackLang.HolProg 64 :=
.seq NamedBody377_282 NamedBody377_293

def NamedBody377_295 : StackLang.HolProg 64 :=
.seq NamedBody377_281 NamedBody377_294

def NamedBody377_296 : StackLang.HolProg 64 :=
.seq NamedBody377_280 NamedBody377_295

def NamedBody377_297 : StackLang.HolProg 64 :=
.seq NamedBody377_279 NamedBody377_296

def NamedBody377_298 : StackLang.HolProg 64 :=
.seq NamedBody377_278 NamedBody377_297

def NamedBody377_299 : StackLang.HolProg 64 :=
.seq NamedBody377_277 NamedBody377_298

def NamedBody377_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody377_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody377_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody377_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody377_307 : StackLang.HolProg 64 :=
.seq NamedBody377_305 NamedBody377_306

def NamedBody377_308 : StackLang.HolProg 64 :=
.seq NamedBody377_304 NamedBody377_307

def NamedBody377_309 : StackLang.HolProg 64 :=
.seq NamedBody377_303 NamedBody377_308

def NamedBody377_310 : StackLang.HolProg 64 :=
.seq NamedBody377_302 NamedBody377_309

def NamedBody377_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_312 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody377_313 : StackLang.HolProg 64 :=
.seq NamedBody377_311 NamedBody377_312

def NamedBody377_314 : StackLang.HolProg 64 :=
.call (some (NamedBody377_310, 1, 377, 6)) (Sum.inl 142) (some (NamedBody377_313, 377, 7))

def NamedBody377_315 : StackLang.HolProg 64 :=
.seq NamedBody377_301 NamedBody377_314

def NamedBody377_316 : StackLang.HolProg 64 :=
.seq NamedBody377_300 NamedBody377_315

def NamedBody377_317 : StackLang.HolProg 64 :=
.seq NamedBody377_299 NamedBody377_316

def NamedBody377_318 : StackLang.HolProg 64 :=
.seq NamedBody377_270 NamedBody377_317

def NamedBody377_319 : StackLang.HolProg 64 :=
.seq NamedBody377_267 NamedBody377_318

def NamedBody377_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody377_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody377_323 : StackLang.HolProg 64 :=
.seq NamedBody377_321 NamedBody377_322

def NamedBody377_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1092#64)

def NamedBody377_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody377_327 : StackLang.HolProg 64 :=
.seq NamedBody377_325 NamedBody377_326

def NamedBody377_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody377_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody377_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody377_331 : StackLang.HolProg 64 :=
.seq NamedBody377_329 NamedBody377_330

def NamedBody377_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_333 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody377_331 NamedBody377_332

def NamedBody377_334 : StackLang.HolProg 64 :=
.seq NamedBody377_328 NamedBody377_333

def NamedBody377_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody377_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody377_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 9

def NamedBody377_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody377_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody377_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody377_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody377_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody377_344 : StackLang.HolProg 64 :=
.seq NamedBody377_342 NamedBody377_343

def NamedBody377_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody377_346 : StackLang.HolProg 64 :=
.seq NamedBody377_344 NamedBody377_345

def NamedBody377_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody377_348 : StackLang.HolProg 64 :=
.seq NamedBody377_346 NamedBody377_347

def NamedBody377_349 : StackLang.HolProg 64 :=
.seq NamedBody377_341 NamedBody377_348

def NamedBody377_350 : StackLang.HolProg 64 :=
.seq NamedBody377_340 NamedBody377_349

def NamedBody377_351 : StackLang.HolProg 64 :=
.seq NamedBody377_339 NamedBody377_350

def NamedBody377_352 : StackLang.HolProg 64 :=
.seq NamedBody377_338 NamedBody377_351

def NamedBody377_353 : StackLang.HolProg 64 :=
.seq NamedBody377_337 NamedBody377_352

def NamedBody377_354 : StackLang.HolProg 64 :=
.seq NamedBody377_336 NamedBody377_353

def NamedBody377_355 : StackLang.HolProg 64 :=
.seq NamedBody377_335 NamedBody377_354

def NamedBody377_356 : StackLang.HolProg 64 :=
.seq NamedBody377_334 NamedBody377_355

def NamedBody377_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody377_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody377_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody377_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody377_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody377_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody377_366 : StackLang.HolProg 64 :=
.seq NamedBody377_364 NamedBody377_365

def NamedBody377_367 : StackLang.HolProg 64 :=
.seq NamedBody377_363 NamedBody377_366

def NamedBody377_368 : StackLang.HolProg 64 :=
.seq NamedBody377_362 NamedBody377_367

def NamedBody377_369 : StackLang.HolProg 64 :=
.seq NamedBody377_361 NamedBody377_368

def NamedBody377_370 : StackLang.HolProg 64 :=
.seq NamedBody377_360 NamedBody377_369

def NamedBody377_371 : StackLang.HolProg 64 :=
.seq NamedBody377_359 NamedBody377_370

def NamedBody377_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody377_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody377_374 : StackLang.HolProg 64 :=
.seq NamedBody377_372 NamedBody377_373

def NamedBody377_375 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody377_376 : StackLang.HolProg 64 :=
.seq NamedBody377_374 NamedBody377_375

def NamedBody377_377 : StackLang.HolProg 64 :=
.call (some (NamedBody377_371, 1, 377, 8)) (Sum.inl 101) (some (NamedBody377_376, 377, 9))

def NamedBody377_378 : StackLang.HolProg 64 :=
.seq NamedBody377_358 NamedBody377_377

def NamedBody377_379 : StackLang.HolProg 64 :=
.seq NamedBody377_357 NamedBody377_378

def NamedBody377_380 : StackLang.HolProg 64 :=
.seq NamedBody377_356 NamedBody377_379

def NamedBody377_381 : StackLang.HolProg 64 :=
.seq NamedBody377_327 NamedBody377_380

def NamedBody377_382 : StackLang.HolProg 64 :=
.seq NamedBody377_324 NamedBody377_381

def NamedBody377_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody377_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 45#64)

def NamedBody377_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody377_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody377_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_392 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody377_393 : StackLang.HolProg 64 :=
.seq NamedBody377_391 NamedBody377_392

def NamedBody377_394 : StackLang.HolProg 64 :=
.seq NamedBody377_390 NamedBody377_393

def NamedBody377_395 : StackLang.HolProg 64 :=
.seq NamedBody377_389 NamedBody377_394

def NamedBody377_396 : StackLang.HolProg 64 :=
.seq NamedBody377_388 NamedBody377_395

def NamedBody377_397 : StackLang.HolProg 64 :=
.seq NamedBody377_387 NamedBody377_396

def NamedBody377_398 : StackLang.HolProg 64 :=
.seq NamedBody377_386 NamedBody377_397

def NamedBody377_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_400 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody377_398 NamedBody377_399

def NamedBody377_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody377_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody377_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody377_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody377_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody377_407 : StackLang.HolProg 64 :=
.seq NamedBody377_405 NamedBody377_406

def NamedBody377_408 : StackLang.HolProg 64 :=
.seq NamedBody377_404 NamedBody377_407

def NamedBody377_409 : StackLang.HolProg 64 :=
.seq NamedBody377_403 NamedBody377_408

def NamedBody377_410 : StackLang.HolProg 64 :=
.seq NamedBody377_402 NamedBody377_409

def NamedBody377_411 : StackLang.HolProg 64 :=
.seq NamedBody377_401 NamedBody377_410

def NamedBody377_412 : StackLang.HolProg 64 :=
.seq NamedBody377_400 NamedBody377_411

def NamedBody377_413 : StackLang.HolProg 64 :=
.seq NamedBody377_385 NamedBody377_412

def NamedBody377_414 : StackLang.HolProg 64 :=
.seq NamedBody377_384 NamedBody377_413

def NamedBody377_415 : StackLang.HolProg 64 :=
.seq NamedBody377_383 NamedBody377_414

def NamedBody377_416 : StackLang.HolProg 64 :=
.seq NamedBody377_382 NamedBody377_415

def NamedBody377_417 : StackLang.HolProg 64 :=
.seq NamedBody377_323 NamedBody377_416

def NamedBody377_418 : StackLang.HolProg 64 :=
.seq NamedBody377_320 NamedBody377_417

def NamedBody377_419 : StackLang.HolProg 64 :=
.seq NamedBody377_319 NamedBody377_418

def NamedBody377_420 : StackLang.HolProg 64 :=
.seq NamedBody377_266 NamedBody377_419

def NamedBody377_421 : StackLang.HolProg 64 :=
.seq NamedBody377_265 NamedBody377_420

def NamedBody377_422 : StackLang.HolProg 64 :=
.seq NamedBody377_264 NamedBody377_421

def NamedBody377_423 : StackLang.HolProg 64 :=
.seq NamedBody377_263 NamedBody377_422

def NamedBody377_424 : StackLang.HolProg 64 :=
.seq NamedBody377_262 NamedBody377_423

def NamedBody377_425 : StackLang.HolProg 64 :=
.seq NamedBody377_209 NamedBody377_424

def NamedBody377_426 : StackLang.HolProg 64 :=
.seq NamedBody377_208 NamedBody377_425

def NamedBody377_427 : StackLang.HolProg 64 :=
.seq NamedBody377_207 NamedBody377_426

def NamedBody377_428 : StackLang.HolProg 64 :=
.seq NamedBody377_206 NamedBody377_427

def NamedBody377_429 : StackLang.HolProg 64 :=
.seq NamedBody377_205 NamedBody377_428

def NamedBody377_430 : StackLang.HolProg 64 :=
.seq NamedBody377_204 NamedBody377_429

def NamedBody377_431 : StackLang.HolProg 64 :=
.seq NamedBody377_201 NamedBody377_430

def NamedBody377_432 : StackLang.HolProg 64 :=
.seq NamedBody377_200 NamedBody377_431

def NamedBody377_433 : StackLang.HolProg 64 :=
.seq NamedBody377_117 NamedBody377_432

def NamedBody377_434 : StackLang.HolProg 64 :=
.seq NamedBody377_116 NamedBody377_433

def NamedBody377_435 : StackLang.HolProg 64 :=
.seq NamedBody377_115 NamedBody377_434

def NamedBody377_436 : StackLang.HolProg 64 :=
.seq NamedBody377_114 NamedBody377_435

def NamedBody377_437 : StackLang.HolProg 64 :=
.seq NamedBody377_43 NamedBody377_436

def NamedBody377_438 : StackLang.HolProg 64 :=
.seq NamedBody377_34 NamedBody377_437

def NamedBody377_439 : StackLang.HolProg 64 :=
.seq NamedBody377_33 NamedBody377_438

def NamedBody377_440 : StackLang.HolProg 64 :=
.seq NamedBody377_32 NamedBody377_439

def NamedBody377_441 : StackLang.HolProg 64 :=
.seq NamedBody377_31 NamedBody377_440

def NamedBody377_442 : StackLang.HolProg 64 :=
.seq NamedBody377_30 NamedBody377_441

def NamedBody377_443 : StackLang.HolProg 64 :=
.seq NamedBody377_29 NamedBody377_442

def NamedBody377_444 : StackLang.HolProg 64 :=
.seq NamedBody377_28 NamedBody377_443

def NamedBody377_445 : StackLang.HolProg 64 :=
.seq NamedBody377_27 NamedBody377_444

def NamedBody377_446 : StackLang.HolProg 64 :=
.seq NamedBody377_26 NamedBody377_445

def NamedBody377_447 : StackLang.HolProg 64 :=
.seq NamedBody377_25 NamedBody377_446

def NamedBody377_448 : StackLang.HolProg 64 :=
.seq NamedBody377_24 NamedBody377_447

def NamedBody377_449 : StackLang.HolProg 64 :=
.seq NamedBody377_9 NamedBody377_448

def NamedBody377_450 : StackLang.HolProg 64 :=
.seq NamedBody377_8 NamedBody377_449

def NamedBody377_451 : StackLang.HolProg 64 :=
.seq NamedBody377_7 NamedBody377_450

def NamedBody377_452 : StackLang.HolProg 64 :=
.seq NamedBody377_6 NamedBody377_451

def Named377 : Nat × StackLang.HolProg 64 := (377, NamedBody377_452)
theorem Named377_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed377 = Named377 := by
  kernel_rfl
#print axioms Named377_eq
end InitECandidate.Proofs.BackendStages
