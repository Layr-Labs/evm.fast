import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed675
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody675_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody675_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody675_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody675_3 : StackLang.HolProg 64 :=
.seq NamedBody675_1 NamedBody675_2

def NamedBody675_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody675_3 NamedBody675_4

def NamedBody675_6 : StackLang.HolProg 64 :=
.seq NamedBody675_0 NamedBody675_5

def NamedBody675_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody675_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody675_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody675_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody675_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody675_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody675_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody675_15 : StackLang.HolProg 64 :=
.seq NamedBody675_13 NamedBody675_14

def NamedBody675_16 : StackLang.HolProg 64 :=
.seq NamedBody675_12 NamedBody675_15

def NamedBody675_17 : StackLang.HolProg 64 :=
.seq NamedBody675_11 NamedBody675_16

def NamedBody675_18 : StackLang.HolProg 64 :=
.seq NamedBody675_10 NamedBody675_17

def NamedBody675_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody675_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody675_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody675_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody675_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody675_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody675_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody675_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody675_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 16#64))

def NamedBody675_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody675_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody675_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody675_35 : StackLang.HolProg 64 :=
.seq NamedBody675_33 NamedBody675_34

def NamedBody675_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody675_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody675_38 : StackLang.HolProg 64 :=
.seq NamedBody675_36 NamedBody675_37

def NamedBody675_39 : StackLang.HolProg 64 :=
.seq NamedBody675_35 NamedBody675_38

def NamedBody675_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2791#64)

def NamedBody675_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody675_43 : StackLang.HolProg 64 :=
.seq NamedBody675_41 NamedBody675_42

def NamedBody675_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody675_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody675_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody675_47 : StackLang.HolProg 64 :=
.seq NamedBody675_45 NamedBody675_46

def NamedBody675_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_49 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody675_47 NamedBody675_48

def NamedBody675_50 : StackLang.HolProg 64 :=
.seq NamedBody675_44 NamedBody675_49

def NamedBody675_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody675_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody675_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 675 3

def NamedBody675_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody675_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody675_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody675_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody675_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody675_60 : StackLang.HolProg 64 :=
.seq NamedBody675_58 NamedBody675_59

def NamedBody675_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody675_62 : StackLang.HolProg 64 :=
.seq NamedBody675_60 NamedBody675_61

def NamedBody675_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody675_64 : StackLang.HolProg 64 :=
.seq NamedBody675_62 NamedBody675_63

def NamedBody675_65 : StackLang.HolProg 64 :=
.seq NamedBody675_57 NamedBody675_64

def NamedBody675_66 : StackLang.HolProg 64 :=
.seq NamedBody675_56 NamedBody675_65

def NamedBody675_67 : StackLang.HolProg 64 :=
.seq NamedBody675_55 NamedBody675_66

def NamedBody675_68 : StackLang.HolProg 64 :=
.seq NamedBody675_54 NamedBody675_67

def NamedBody675_69 : StackLang.HolProg 64 :=
.seq NamedBody675_53 NamedBody675_68

def NamedBody675_70 : StackLang.HolProg 64 :=
.seq NamedBody675_52 NamedBody675_69

def NamedBody675_71 : StackLang.HolProg 64 :=
.seq NamedBody675_51 NamedBody675_70

def NamedBody675_72 : StackLang.HolProg 64 :=
.seq NamedBody675_50 NamedBody675_71

def NamedBody675_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody675_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody675_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody675_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody675_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody675_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody675_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody675_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody675_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody675_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody675_86 : StackLang.HolProg 64 :=
.seq NamedBody675_84 NamedBody675_85

def NamedBody675_87 : StackLang.HolProg 64 :=
.seq NamedBody675_83 NamedBody675_86

def NamedBody675_88 : StackLang.HolProg 64 :=
.seq NamedBody675_82 NamedBody675_87

def NamedBody675_89 : StackLang.HolProg 64 :=
.seq NamedBody675_81 NamedBody675_88

def NamedBody675_90 : StackLang.HolProg 64 :=
.seq NamedBody675_80 NamedBody675_89

def NamedBody675_91 : StackLang.HolProg 64 :=
.seq NamedBody675_79 NamedBody675_90

def NamedBody675_92 : StackLang.HolProg 64 :=
.seq NamedBody675_78 NamedBody675_91

def NamedBody675_93 : StackLang.HolProg 64 :=
.seq NamedBody675_77 NamedBody675_92

def NamedBody675_94 : StackLang.HolProg 64 :=
.seq NamedBody675_76 NamedBody675_93

def NamedBody675_95 : StackLang.HolProg 64 :=
.seq NamedBody675_75 NamedBody675_94

def NamedBody675_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody675_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody675_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody675_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody675_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody675_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody675_102 : StackLang.HolProg 64 :=
.seq NamedBody675_100 NamedBody675_101

def NamedBody675_103 : StackLang.HolProg 64 :=
.seq NamedBody675_99 NamedBody675_102

def NamedBody675_104 : StackLang.HolProg 64 :=
.seq NamedBody675_98 NamedBody675_103

def NamedBody675_105 : StackLang.HolProg 64 :=
.seq NamedBody675_97 NamedBody675_104

def NamedBody675_106 : StackLang.HolProg 64 :=
.seq NamedBody675_96 NamedBody675_105

def NamedBody675_107 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody675_108 : StackLang.HolProg 64 :=
.seq NamedBody675_106 NamedBody675_107

def NamedBody675_109 : StackLang.HolProg 64 :=
.call (some (NamedBody675_95, 1, 675, 2)) (Sum.inl 665) (some (NamedBody675_108, 675, 3))

def NamedBody675_110 : StackLang.HolProg 64 :=
.seq NamedBody675_74 NamedBody675_109

def NamedBody675_111 : StackLang.HolProg 64 :=
.seq NamedBody675_73 NamedBody675_110

def NamedBody675_112 : StackLang.HolProg 64 :=
.seq NamedBody675_72 NamedBody675_111

def NamedBody675_113 : StackLang.HolProg 64 :=
.seq NamedBody675_43 NamedBody675_112

def NamedBody675_114 : StackLang.HolProg 64 :=
.seq NamedBody675_40 NamedBody675_113

def NamedBody675_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody675_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody675_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody675_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody675_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody675_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody675_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody675_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody675_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody675_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody675_132 : StackLang.HolProg 64 :=
.seq NamedBody675_130 NamedBody675_131

def NamedBody675_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody675_134 : StackLang.HolProg 64 :=
.seq NamedBody675_132 NamedBody675_133

def NamedBody675_135 : StackLang.HolProg 64 :=
.seq NamedBody675_129 NamedBody675_134

def NamedBody675_136 : StackLang.HolProg 64 :=
.seq NamedBody675_128 NamedBody675_135

def NamedBody675_137 : StackLang.HolProg 64 :=
.seq NamedBody675_127 NamedBody675_136

def NamedBody675_138 : StackLang.HolProg 64 :=
.seq NamedBody675_126 NamedBody675_137

def NamedBody675_139 : StackLang.HolProg 64 :=
.seq NamedBody675_125 NamedBody675_138

def NamedBody675_140 : StackLang.HolProg 64 :=
.seq NamedBody675_124 NamedBody675_139

def NamedBody675_141 : StackLang.HolProg 64 :=
.seq NamedBody675_123 NamedBody675_140

def NamedBody675_142 : StackLang.HolProg 64 :=
.seq NamedBody675_122 NamedBody675_141

def NamedBody675_143 : StackLang.HolProg 64 :=
.seq NamedBody675_121 NamedBody675_142

def NamedBody675_144 : StackLang.HolProg 64 :=
.seq NamedBody675_120 NamedBody675_143

def NamedBody675_145 : StackLang.HolProg 64 :=
.seq NamedBody675_119 NamedBody675_144

def NamedBody675_146 : StackLang.HolProg 64 :=
.seq NamedBody675_118 NamedBody675_145

def NamedBody675_147 : StackLang.HolProg 64 :=
.seq NamedBody675_117 NamedBody675_146

def NamedBody675_148 : StackLang.HolProg 64 :=
.seq NamedBody675_116 NamedBody675_147

def NamedBody675_149 : StackLang.HolProg 64 :=
.seq NamedBody675_115 NamedBody675_148

def NamedBody675_150 : StackLang.HolProg 64 :=
.seq NamedBody675_114 NamedBody675_149

def NamedBody675_151 : StackLang.HolProg 64 :=
.seq NamedBody675_39 NamedBody675_150

def NamedBody675_152 : StackLang.HolProg 64 :=
.seq NamedBody675_32 NamedBody675_151

def NamedBody675_153 : StackLang.HolProg 64 :=
.seq NamedBody675_31 NamedBody675_152

def NamedBody675_154 : StackLang.HolProg 64 :=
.seq NamedBody675_30 NamedBody675_153

def NamedBody675_155 : StackLang.HolProg 64 :=
.seq NamedBody675_29 NamedBody675_154

def NamedBody675_156 : StackLang.HolProg 64 :=
.seq NamedBody675_28 NamedBody675_155

def NamedBody675_157 : StackLang.HolProg 64 :=
.seq NamedBody675_27 NamedBody675_156

def NamedBody675_158 : StackLang.HolProg 64 :=
.seq NamedBody675_26 NamedBody675_157

def NamedBody675_159 : StackLang.HolProg 64 :=
.seq NamedBody675_25 NamedBody675_158

def NamedBody675_160 : StackLang.HolProg 64 :=
.seq NamedBody675_24 NamedBody675_159

def NamedBody675_161 : StackLang.HolProg 64 :=
.seq NamedBody675_23 NamedBody675_160

def NamedBody675_162 : StackLang.HolProg 64 :=
.seq NamedBody675_22 NamedBody675_161

def NamedBody675_163 : StackLang.HolProg 64 :=
.seq NamedBody675_21 NamedBody675_162

def NamedBody675_164 : StackLang.HolProg 64 :=
.seq NamedBody675_20 NamedBody675_163

def NamedBody675_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody675_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody675_167 : StackLang.HolProg 64 :=
.seq NamedBody675_165 NamedBody675_166

def NamedBody675_168 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody675_164 NamedBody675_167

def NamedBody675_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody675_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody675_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody675_172 : StackLang.HolProg 64 :=
.seq NamedBody675_170 NamedBody675_171

def NamedBody675_173 : StackLang.HolProg 64 :=
.seq NamedBody675_169 NamedBody675_172

def NamedBody675_174 : StackLang.HolProg 64 :=
.seq NamedBody675_168 NamedBody675_173

def NamedBody675_175 : StackLang.HolProg 64 :=
.seq NamedBody675_19 NamedBody675_174

def NamedBody675_176 : StackLang.HolProg 64 :=
.loop NamedBody675_175

def NamedBody675_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody675_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody675_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody675_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody675_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody675_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody675_183 : StackLang.HolProg 64 :=
.seq NamedBody675_181 NamedBody675_182

def NamedBody675_184 : StackLang.HolProg 64 :=
.seq NamedBody675_180 NamedBody675_183

def NamedBody675_185 : StackLang.HolProg 64 :=
.seq NamedBody675_179 NamedBody675_184

def NamedBody675_186 : StackLang.HolProg 64 :=
.seq NamedBody675_178 NamedBody675_185

def NamedBody675_187 : StackLang.HolProg 64 :=
.seq NamedBody675_177 NamedBody675_186

def NamedBody675_188 : StackLang.HolProg 64 :=
.seq NamedBody675_176 NamedBody675_187

def NamedBody675_189 : StackLang.HolProg 64 :=
.seq NamedBody675_18 NamedBody675_188

def NamedBody675_190 : StackLang.HolProg 64 :=
.seq NamedBody675_9 NamedBody675_189

def NamedBody675_191 : StackLang.HolProg 64 :=
.seq NamedBody675_8 NamedBody675_190

def NamedBody675_192 : StackLang.HolProg 64 :=
.seq NamedBody675_7 NamedBody675_191

def NamedBody675_193 : StackLang.HolProg 64 :=
.seq NamedBody675_6 NamedBody675_192

def Named675 : Nat × StackLang.HolProg 64 := (675, NamedBody675_193)
theorem Named675_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed675 = Named675 := by
  kernel_rfl
#print axioms Named675_eq
end InitECandidate.Proofs.BackendStages
