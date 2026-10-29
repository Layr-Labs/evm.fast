import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed667
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody667_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody667_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody667_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody667_3 : StackLang.HolProg 64 :=
.seq NamedBody667_1 NamedBody667_2

def NamedBody667_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody667_3 NamedBody667_4

def NamedBody667_6 : StackLang.HolProg 64 :=
.seq NamedBody667_0 NamedBody667_5

def NamedBody667_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 11#64)

def NamedBody667_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody667_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody667_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody667_12 : StackLang.HolProg 64 :=
.seq NamedBody667_10 NamedBody667_11

def NamedBody667_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody667_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody667_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody667_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def NamedBody667_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody667_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody667_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody667_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody667_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody667_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody667_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody667_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody667_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody667_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 82#64)

def NamedBody667_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody667_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody667_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_37 : StackLang.HolProg 64 :=
.seq NamedBody667_35 NamedBody667_36

def NamedBody667_38 : StackLang.HolProg 64 :=
.seq NamedBody667_34 NamedBody667_37

def NamedBody667_39 : StackLang.HolProg 64 :=
.seq NamedBody667_33 NamedBody667_38

def NamedBody667_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2762#64)

def NamedBody667_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody667_43 : StackLang.HolProg 64 :=
.seq NamedBody667_41 NamedBody667_42

def NamedBody667_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody667_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody667_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody667_47 : StackLang.HolProg 64 :=
.seq NamedBody667_45 NamedBody667_46

def NamedBody667_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_49 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody667_47 NamedBody667_48

def NamedBody667_50 : StackLang.HolProg 64 :=
.seq NamedBody667_44 NamedBody667_49

def NamedBody667_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody667_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody667_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 3

def NamedBody667_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody667_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody667_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody667_60 : StackLang.HolProg 64 :=
.seq NamedBody667_58 NamedBody667_59

def NamedBody667_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody667_62 : StackLang.HolProg 64 :=
.seq NamedBody667_60 NamedBody667_61

def NamedBody667_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody667_64 : StackLang.HolProg 64 :=
.seq NamedBody667_62 NamedBody667_63

def NamedBody667_65 : StackLang.HolProg 64 :=
.seq NamedBody667_57 NamedBody667_64

def NamedBody667_66 : StackLang.HolProg 64 :=
.seq NamedBody667_56 NamedBody667_65

def NamedBody667_67 : StackLang.HolProg 64 :=
.seq NamedBody667_55 NamedBody667_66

def NamedBody667_68 : StackLang.HolProg 64 :=
.seq NamedBody667_54 NamedBody667_67

def NamedBody667_69 : StackLang.HolProg 64 :=
.seq NamedBody667_53 NamedBody667_68

def NamedBody667_70 : StackLang.HolProg 64 :=
.seq NamedBody667_52 NamedBody667_69

def NamedBody667_71 : StackLang.HolProg 64 :=
.seq NamedBody667_51 NamedBody667_70

def NamedBody667_72 : StackLang.HolProg 64 :=
.seq NamedBody667_50 NamedBody667_71

def NamedBody667_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody667_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody667_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody667_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody667_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody667_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody667_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody667_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody667_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_87 : StackLang.HolProg 64 :=
.seq NamedBody667_85 NamedBody667_86

def NamedBody667_88 : StackLang.HolProg 64 :=
.seq NamedBody667_84 NamedBody667_87

def NamedBody667_89 : StackLang.HolProg 64 :=
.seq NamedBody667_83 NamedBody667_88

def NamedBody667_90 : StackLang.HolProg 64 :=
.seq NamedBody667_82 NamedBody667_89

def NamedBody667_91 : StackLang.HolProg 64 :=
.seq NamedBody667_81 NamedBody667_90

def NamedBody667_92 : StackLang.HolProg 64 :=
.seq NamedBody667_80 NamedBody667_91

def NamedBody667_93 : StackLang.HolProg 64 :=
.seq NamedBody667_79 NamedBody667_92

def NamedBody667_94 : StackLang.HolProg 64 :=
.seq NamedBody667_78 NamedBody667_93

def NamedBody667_95 : StackLang.HolProg 64 :=
.seq NamedBody667_77 NamedBody667_94

def NamedBody667_96 : StackLang.HolProg 64 :=
.seq NamedBody667_76 NamedBody667_95

def NamedBody667_97 : StackLang.HolProg 64 :=
.seq NamedBody667_75 NamedBody667_96

def NamedBody667_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody667_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody667_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_102 : StackLang.HolProg 64 :=
.seq NamedBody667_100 NamedBody667_101

def NamedBody667_103 : StackLang.HolProg 64 :=
.seq NamedBody667_99 NamedBody667_102

def NamedBody667_104 : StackLang.HolProg 64 :=
.seq NamedBody667_98 NamedBody667_103

def NamedBody667_105 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody667_106 : StackLang.HolProg 64 :=
.seq NamedBody667_104 NamedBody667_105

def NamedBody667_107 : StackLang.HolProg 64 :=
.call (some (NamedBody667_97, 1, 667, 2)) (Sum.inl 665) (some (NamedBody667_106, 667, 3))

def NamedBody667_108 : StackLang.HolProg 64 :=
.seq NamedBody667_74 NamedBody667_107

def NamedBody667_109 : StackLang.HolProg 64 :=
.seq NamedBody667_73 NamedBody667_108

def NamedBody667_110 : StackLang.HolProg 64 :=
.seq NamedBody667_72 NamedBody667_109

def NamedBody667_111 : StackLang.HolProg 64 :=
.seq NamedBody667_43 NamedBody667_110

def NamedBody667_112 : StackLang.HolProg 64 :=
.seq NamedBody667_40 NamedBody667_111

def NamedBody667_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody667_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody667_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18#64)

def NamedBody667_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody667_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody667_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_120 : StackLang.HolProg 64 :=
.seq NamedBody667_118 NamedBody667_119

def NamedBody667_121 : StackLang.HolProg 64 :=
.seq NamedBody667_117 NamedBody667_120

def NamedBody667_122 : StackLang.HolProg 64 :=
.seq NamedBody667_116 NamedBody667_121

def NamedBody667_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2763#64)

def NamedBody667_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody667_126 : StackLang.HolProg 64 :=
.seq NamedBody667_124 NamedBody667_125

def NamedBody667_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody667_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody667_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody667_130 : StackLang.HolProg 64 :=
.seq NamedBody667_128 NamedBody667_129

def NamedBody667_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody667_130 NamedBody667_131

def NamedBody667_133 : StackLang.HolProg 64 :=
.seq NamedBody667_127 NamedBody667_132

def NamedBody667_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody667_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody667_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 5

def NamedBody667_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody667_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody667_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody667_143 : StackLang.HolProg 64 :=
.seq NamedBody667_141 NamedBody667_142

def NamedBody667_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody667_145 : StackLang.HolProg 64 :=
.seq NamedBody667_143 NamedBody667_144

def NamedBody667_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody667_147 : StackLang.HolProg 64 :=
.seq NamedBody667_145 NamedBody667_146

def NamedBody667_148 : StackLang.HolProg 64 :=
.seq NamedBody667_140 NamedBody667_147

def NamedBody667_149 : StackLang.HolProg 64 :=
.seq NamedBody667_139 NamedBody667_148

def NamedBody667_150 : StackLang.HolProg 64 :=
.seq NamedBody667_138 NamedBody667_149

def NamedBody667_151 : StackLang.HolProg 64 :=
.seq NamedBody667_137 NamedBody667_150

def NamedBody667_152 : StackLang.HolProg 64 :=
.seq NamedBody667_136 NamedBody667_151

def NamedBody667_153 : StackLang.HolProg 64 :=
.seq NamedBody667_135 NamedBody667_152

def NamedBody667_154 : StackLang.HolProg 64 :=
.seq NamedBody667_134 NamedBody667_153

def NamedBody667_155 : StackLang.HolProg 64 :=
.seq NamedBody667_133 NamedBody667_154

def NamedBody667_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody667_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody667_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 29 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody667_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody667_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody667_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody667_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody667_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody667_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody667_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody667_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_172 : StackLang.HolProg 64 :=
.seq NamedBody667_170 NamedBody667_171

def NamedBody667_173 : StackLang.HolProg 64 :=
.seq NamedBody667_169 NamedBody667_172

def NamedBody667_174 : StackLang.HolProg 64 :=
.seq NamedBody667_168 NamedBody667_173

def NamedBody667_175 : StackLang.HolProg 64 :=
.seq NamedBody667_167 NamedBody667_174

def NamedBody667_176 : StackLang.HolProg 64 :=
.seq NamedBody667_166 NamedBody667_175

def NamedBody667_177 : StackLang.HolProg 64 :=
.seq NamedBody667_165 NamedBody667_176

def NamedBody667_178 : StackLang.HolProg 64 :=
.seq NamedBody667_164 NamedBody667_177

def NamedBody667_179 : StackLang.HolProg 64 :=
.seq NamedBody667_163 NamedBody667_178

def NamedBody667_180 : StackLang.HolProg 64 :=
.seq NamedBody667_162 NamedBody667_179

def NamedBody667_181 : StackLang.HolProg 64 :=
.seq NamedBody667_161 NamedBody667_180

def NamedBody667_182 : StackLang.HolProg 64 :=
.seq NamedBody667_160 NamedBody667_181

def NamedBody667_183 : StackLang.HolProg 64 :=
.seq NamedBody667_159 NamedBody667_182

def NamedBody667_184 : StackLang.HolProg 64 :=
.seq NamedBody667_158 NamedBody667_183

def NamedBody667_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody667_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody667_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody667_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody667_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_191 : StackLang.HolProg 64 :=
.seq NamedBody667_189 NamedBody667_190

def NamedBody667_192 : StackLang.HolProg 64 :=
.seq NamedBody667_188 NamedBody667_191

def NamedBody667_193 : StackLang.HolProg 64 :=
.seq NamedBody667_187 NamedBody667_192

def NamedBody667_194 : StackLang.HolProg 64 :=
.seq NamedBody667_186 NamedBody667_193

def NamedBody667_195 : StackLang.HolProg 64 :=
.seq NamedBody667_185 NamedBody667_194

def NamedBody667_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody667_197 : StackLang.HolProg 64 :=
.seq NamedBody667_195 NamedBody667_196

def NamedBody667_198 : StackLang.HolProg 64 :=
.call (some (NamedBody667_184, 1, 667, 4)) (Sum.inl 665) (some (NamedBody667_197, 667, 5))

def NamedBody667_199 : StackLang.HolProg 64 :=
.seq NamedBody667_157 NamedBody667_198

def NamedBody667_200 : StackLang.HolProg 64 :=
.seq NamedBody667_156 NamedBody667_199

def NamedBody667_201 : StackLang.HolProg 64 :=
.seq NamedBody667_155 NamedBody667_200

def NamedBody667_202 : StackLang.HolProg 64 :=
.seq NamedBody667_126 NamedBody667_201

def NamedBody667_203 : StackLang.HolProg 64 :=
.seq NamedBody667_123 NamedBody667_202

def NamedBody667_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody667_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody667_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody667_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody667_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody667_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody667_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody667_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody667_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody667_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody667_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody667_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody667_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_221 : StackLang.HolProg 64 :=
.seq NamedBody667_219 NamedBody667_220

def NamedBody667_222 : StackLang.HolProg 64 :=
.seq NamedBody667_218 NamedBody667_221

def NamedBody667_223 : StackLang.HolProg 64 :=
.seq NamedBody667_217 NamedBody667_222

def NamedBody667_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2764#64)

def NamedBody667_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody667_227 : StackLang.HolProg 64 :=
.seq NamedBody667_225 NamedBody667_226

def NamedBody667_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody667_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody667_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody667_231 : StackLang.HolProg 64 :=
.seq NamedBody667_229 NamedBody667_230

def NamedBody667_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_233 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody667_231 NamedBody667_232

def NamedBody667_234 : StackLang.HolProg 64 :=
.seq NamedBody667_228 NamedBody667_233

def NamedBody667_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody667_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody667_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 7

def NamedBody667_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody667_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody667_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody667_244 : StackLang.HolProg 64 :=
.seq NamedBody667_242 NamedBody667_243

def NamedBody667_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody667_246 : StackLang.HolProg 64 :=
.seq NamedBody667_244 NamedBody667_245

def NamedBody667_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody667_248 : StackLang.HolProg 64 :=
.seq NamedBody667_246 NamedBody667_247

def NamedBody667_249 : StackLang.HolProg 64 :=
.seq NamedBody667_241 NamedBody667_248

def NamedBody667_250 : StackLang.HolProg 64 :=
.seq NamedBody667_240 NamedBody667_249

def NamedBody667_251 : StackLang.HolProg 64 :=
.seq NamedBody667_239 NamedBody667_250

def NamedBody667_252 : StackLang.HolProg 64 :=
.seq NamedBody667_238 NamedBody667_251

def NamedBody667_253 : StackLang.HolProg 64 :=
.seq NamedBody667_237 NamedBody667_252

def NamedBody667_254 : StackLang.HolProg 64 :=
.seq NamedBody667_236 NamedBody667_253

def NamedBody667_255 : StackLang.HolProg 64 :=
.seq NamedBody667_235 NamedBody667_254

def NamedBody667_256 : StackLang.HolProg 64 :=
.seq NamedBody667_234 NamedBody667_255

def NamedBody667_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody667_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody667_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody667_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody667_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody667_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody667_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody667_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_270 : StackLang.HolProg 64 :=
.seq NamedBody667_268 NamedBody667_269

def NamedBody667_271 : StackLang.HolProg 64 :=
.seq NamedBody667_267 NamedBody667_270

def NamedBody667_272 : StackLang.HolProg 64 :=
.seq NamedBody667_266 NamedBody667_271

def NamedBody667_273 : StackLang.HolProg 64 :=
.seq NamedBody667_265 NamedBody667_272

def NamedBody667_274 : StackLang.HolProg 64 :=
.seq NamedBody667_264 NamedBody667_273

def NamedBody667_275 : StackLang.HolProg 64 :=
.seq NamedBody667_263 NamedBody667_274

def NamedBody667_276 : StackLang.HolProg 64 :=
.seq NamedBody667_262 NamedBody667_275

def NamedBody667_277 : StackLang.HolProg 64 :=
.seq NamedBody667_261 NamedBody667_276

def NamedBody667_278 : StackLang.HolProg 64 :=
.seq NamedBody667_260 NamedBody667_277

def NamedBody667_279 : StackLang.HolProg 64 :=
.seq NamedBody667_259 NamedBody667_278

def NamedBody667_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody667_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody667_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody667_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody667_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_286 : StackLang.HolProg 64 :=
.seq NamedBody667_284 NamedBody667_285

def NamedBody667_287 : StackLang.HolProg 64 :=
.seq NamedBody667_283 NamedBody667_286

def NamedBody667_288 : StackLang.HolProg 64 :=
.seq NamedBody667_282 NamedBody667_287

def NamedBody667_289 : StackLang.HolProg 64 :=
.seq NamedBody667_281 NamedBody667_288

def NamedBody667_290 : StackLang.HolProg 64 :=
.seq NamedBody667_280 NamedBody667_289

def NamedBody667_291 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody667_292 : StackLang.HolProg 64 :=
.seq NamedBody667_290 NamedBody667_291

def NamedBody667_293 : StackLang.HolProg 64 :=
.call (some (NamedBody667_279, 1, 667, 6)) (Sum.inl 659) (some (NamedBody667_292, 667, 7))

def NamedBody667_294 : StackLang.HolProg 64 :=
.seq NamedBody667_258 NamedBody667_293

def NamedBody667_295 : StackLang.HolProg 64 :=
.seq NamedBody667_257 NamedBody667_294

def NamedBody667_296 : StackLang.HolProg 64 :=
.seq NamedBody667_256 NamedBody667_295

def NamedBody667_297 : StackLang.HolProg 64 :=
.seq NamedBody667_227 NamedBody667_296

def NamedBody667_298 : StackLang.HolProg 64 :=
.seq NamedBody667_224 NamedBody667_297

def NamedBody667_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody667_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody667_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody667_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody667_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody667_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody667_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody667_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody667_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody667_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody667_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody667_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody667_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody667_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody667_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody667_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 16#64))

def NamedBody667_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody667_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2765#64)

def NamedBody667_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody667_329 : StackLang.HolProg 64 :=
.seq NamedBody667_327 NamedBody667_328

def NamedBody667_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody667_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody667_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody667_333 : StackLang.HolProg 64 :=
.seq NamedBody667_331 NamedBody667_332

def NamedBody667_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_335 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody667_333 NamedBody667_334

def NamedBody667_336 : StackLang.HolProg 64 :=
.seq NamedBody667_330 NamedBody667_335

def NamedBody667_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody667_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody667_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 9

def NamedBody667_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody667_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody667_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody667_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody667_346 : StackLang.HolProg 64 :=
.seq NamedBody667_344 NamedBody667_345

def NamedBody667_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody667_348 : StackLang.HolProg 64 :=
.seq NamedBody667_346 NamedBody667_347

def NamedBody667_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody667_350 : StackLang.HolProg 64 :=
.seq NamedBody667_348 NamedBody667_349

def NamedBody667_351 : StackLang.HolProg 64 :=
.seq NamedBody667_343 NamedBody667_350

def NamedBody667_352 : StackLang.HolProg 64 :=
.seq NamedBody667_342 NamedBody667_351

def NamedBody667_353 : StackLang.HolProg 64 :=
.seq NamedBody667_341 NamedBody667_352

def NamedBody667_354 : StackLang.HolProg 64 :=
.seq NamedBody667_340 NamedBody667_353

def NamedBody667_355 : StackLang.HolProg 64 :=
.seq NamedBody667_339 NamedBody667_354

def NamedBody667_356 : StackLang.HolProg 64 :=
.seq NamedBody667_338 NamedBody667_355

def NamedBody667_357 : StackLang.HolProg 64 :=
.seq NamedBody667_337 NamedBody667_356

def NamedBody667_358 : StackLang.HolProg 64 :=
.seq NamedBody667_336 NamedBody667_357

def NamedBody667_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody667_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody667_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody667_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody667_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody667_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody667_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody667_369 : StackLang.HolProg 64 :=
.seq NamedBody667_367 NamedBody667_368

def NamedBody667_370 : StackLang.HolProg 64 :=
.seq NamedBody667_366 NamedBody667_369

def NamedBody667_371 : StackLang.HolProg 64 :=
.seq NamedBody667_365 NamedBody667_370

def NamedBody667_372 : StackLang.HolProg 64 :=
.seq NamedBody667_364 NamedBody667_371

def NamedBody667_373 : StackLang.HolProg 64 :=
.seq NamedBody667_363 NamedBody667_372

def NamedBody667_374 : StackLang.HolProg 64 :=
.seq NamedBody667_362 NamedBody667_373

def NamedBody667_375 : StackLang.HolProg 64 :=
.seq NamedBody667_361 NamedBody667_374

def NamedBody667_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody667_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody667_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody667_379 : StackLang.HolProg 64 :=
.seq NamedBody667_377 NamedBody667_378

def NamedBody667_380 : StackLang.HolProg 64 :=
.seq NamedBody667_376 NamedBody667_379

def NamedBody667_381 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody667_382 : StackLang.HolProg 64 :=
.seq NamedBody667_380 NamedBody667_381

def NamedBody667_383 : StackLang.HolProg 64 :=
.call (some (NamedBody667_375, 1, 667, 8)) (Sum.inl 658) (some (NamedBody667_382, 667, 9))

def NamedBody667_384 : StackLang.HolProg 64 :=
.seq NamedBody667_360 NamedBody667_383

def NamedBody667_385 : StackLang.HolProg 64 :=
.seq NamedBody667_359 NamedBody667_384

def NamedBody667_386 : StackLang.HolProg 64 :=
.seq NamedBody667_358 NamedBody667_385

def NamedBody667_387 : StackLang.HolProg 64 :=
.seq NamedBody667_329 NamedBody667_386

def NamedBody667_388 : StackLang.HolProg 64 :=
.seq NamedBody667_326 NamedBody667_387

def NamedBody667_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody667_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody667_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody667_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody667_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody667_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody667_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody667_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody667_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody667_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody667_405 : StackLang.HolProg 64 :=
.seq NamedBody667_403 NamedBody667_404

def NamedBody667_406 : StackLang.HolProg 64 :=
.seq NamedBody667_402 NamedBody667_405

def NamedBody667_407 : StackLang.HolProg 64 :=
.seq NamedBody667_401 NamedBody667_406

def NamedBody667_408 : StackLang.HolProg 64 :=
.seq NamedBody667_400 NamedBody667_407

def NamedBody667_409 : StackLang.HolProg 64 :=
.seq NamedBody667_399 NamedBody667_408

def NamedBody667_410 : StackLang.HolProg 64 :=
.seq NamedBody667_398 NamedBody667_409

def NamedBody667_411 : StackLang.HolProg 64 :=
.seq NamedBody667_397 NamedBody667_410

def NamedBody667_412 : StackLang.HolProg 64 :=
.seq NamedBody667_396 NamedBody667_411

def NamedBody667_413 : StackLang.HolProg 64 :=
.seq NamedBody667_395 NamedBody667_412

def NamedBody667_414 : StackLang.HolProg 64 :=
.seq NamedBody667_394 NamedBody667_413

def NamedBody667_415 : StackLang.HolProg 64 :=
.seq NamedBody667_393 NamedBody667_414

def NamedBody667_416 : StackLang.HolProg 64 :=
.seq NamedBody667_392 NamedBody667_415

def NamedBody667_417 : StackLang.HolProg 64 :=
.seq NamedBody667_391 NamedBody667_416

def NamedBody667_418 : StackLang.HolProg 64 :=
.seq NamedBody667_390 NamedBody667_417

def NamedBody667_419 : StackLang.HolProg 64 :=
.seq NamedBody667_389 NamedBody667_418

def NamedBody667_420 : StackLang.HolProg 64 :=
.seq NamedBody667_388 NamedBody667_419

def NamedBody667_421 : StackLang.HolProg 64 :=
.seq NamedBody667_325 NamedBody667_420

def NamedBody667_422 : StackLang.HolProg 64 :=
.seq NamedBody667_324 NamedBody667_421

def NamedBody667_423 : StackLang.HolProg 64 :=
.seq NamedBody667_323 NamedBody667_422

def NamedBody667_424 : StackLang.HolProg 64 :=
.seq NamedBody667_322 NamedBody667_423

def NamedBody667_425 : StackLang.HolProg 64 :=
.seq NamedBody667_321 NamedBody667_424

def NamedBody667_426 : StackLang.HolProg 64 :=
.seq NamedBody667_320 NamedBody667_425

def NamedBody667_427 : StackLang.HolProg 64 :=
.seq NamedBody667_319 NamedBody667_426

def NamedBody667_428 : StackLang.HolProg 64 :=
.seq NamedBody667_318 NamedBody667_427

def NamedBody667_429 : StackLang.HolProg 64 :=
.seq NamedBody667_317 NamedBody667_428

def NamedBody667_430 : StackLang.HolProg 64 :=
.seq NamedBody667_316 NamedBody667_429

def NamedBody667_431 : StackLang.HolProg 64 :=
.seq NamedBody667_315 NamedBody667_430

def NamedBody667_432 : StackLang.HolProg 64 :=
.seq NamedBody667_314 NamedBody667_431

def NamedBody667_433 : StackLang.HolProg 64 :=
.seq NamedBody667_313 NamedBody667_432

def NamedBody667_434 : StackLang.HolProg 64 :=
.seq NamedBody667_312 NamedBody667_433

def NamedBody667_435 : StackLang.HolProg 64 :=
.seq NamedBody667_311 NamedBody667_434

def NamedBody667_436 : StackLang.HolProg 64 :=
.seq NamedBody667_310 NamedBody667_435

def NamedBody667_437 : StackLang.HolProg 64 :=
.seq NamedBody667_309 NamedBody667_436

def NamedBody667_438 : StackLang.HolProg 64 :=
.seq NamedBody667_308 NamedBody667_437

def NamedBody667_439 : StackLang.HolProg 64 :=
.seq NamedBody667_307 NamedBody667_438

def NamedBody667_440 : StackLang.HolProg 64 :=
.seq NamedBody667_306 NamedBody667_439

def NamedBody667_441 : StackLang.HolProg 64 :=
.seq NamedBody667_305 NamedBody667_440

def NamedBody667_442 : StackLang.HolProg 64 :=
.seq NamedBody667_304 NamedBody667_441

def NamedBody667_443 : StackLang.HolProg 64 :=
.seq NamedBody667_303 NamedBody667_442

def NamedBody667_444 : StackLang.HolProg 64 :=
.seq NamedBody667_302 NamedBody667_443

def NamedBody667_445 : StackLang.HolProg 64 :=
.seq NamedBody667_301 NamedBody667_444

def NamedBody667_446 : StackLang.HolProg 64 :=
.seq NamedBody667_300 NamedBody667_445

def NamedBody667_447 : StackLang.HolProg 64 :=
.seq NamedBody667_299 NamedBody667_446

def NamedBody667_448 : StackLang.HolProg 64 :=
.seq NamedBody667_298 NamedBody667_447

def NamedBody667_449 : StackLang.HolProg 64 :=
.seq NamedBody667_223 NamedBody667_448

def NamedBody667_450 : StackLang.HolProg 64 :=
.seq NamedBody667_216 NamedBody667_449

def NamedBody667_451 : StackLang.HolProg 64 :=
.seq NamedBody667_215 NamedBody667_450

def NamedBody667_452 : StackLang.HolProg 64 :=
.seq NamedBody667_214 NamedBody667_451

def NamedBody667_453 : StackLang.HolProg 64 :=
.seq NamedBody667_213 NamedBody667_452

def NamedBody667_454 : StackLang.HolProg 64 :=
.seq NamedBody667_212 NamedBody667_453

def NamedBody667_455 : StackLang.HolProg 64 :=
.seq NamedBody667_211 NamedBody667_454

def NamedBody667_456 : StackLang.HolProg 64 :=
.seq NamedBody667_210 NamedBody667_455

def NamedBody667_457 : StackLang.HolProg 64 :=
.seq NamedBody667_209 NamedBody667_456

def NamedBody667_458 : StackLang.HolProg 64 :=
.seq NamedBody667_208 NamedBody667_457

def NamedBody667_459 : StackLang.HolProg 64 :=
.seq NamedBody667_207 NamedBody667_458

def NamedBody667_460 : StackLang.HolProg 64 :=
.seq NamedBody667_206 NamedBody667_459

def NamedBody667_461 : StackLang.HolProg 64 :=
.seq NamedBody667_205 NamedBody667_460

def NamedBody667_462 : StackLang.HolProg 64 :=
.seq NamedBody667_204 NamedBody667_461

def NamedBody667_463 : StackLang.HolProg 64 :=
.seq NamedBody667_203 NamedBody667_462

def NamedBody667_464 : StackLang.HolProg 64 :=
.seq NamedBody667_122 NamedBody667_463

def NamedBody667_465 : StackLang.HolProg 64 :=
.seq NamedBody667_115 NamedBody667_464

def NamedBody667_466 : StackLang.HolProg 64 :=
.seq NamedBody667_114 NamedBody667_465

def NamedBody667_467 : StackLang.HolProg 64 :=
.seq NamedBody667_113 NamedBody667_466

def NamedBody667_468 : StackLang.HolProg 64 :=
.seq NamedBody667_112 NamedBody667_467

def NamedBody667_469 : StackLang.HolProg 64 :=
.seq NamedBody667_39 NamedBody667_468

def NamedBody667_470 : StackLang.HolProg 64 :=
.seq NamedBody667_32 NamedBody667_469

def NamedBody667_471 : StackLang.HolProg 64 :=
.seq NamedBody667_31 NamedBody667_470

def NamedBody667_472 : StackLang.HolProg 64 :=
.seq NamedBody667_30 NamedBody667_471

def NamedBody667_473 : StackLang.HolProg 64 :=
.seq NamedBody667_29 NamedBody667_472

def NamedBody667_474 : StackLang.HolProg 64 :=
.seq NamedBody667_28 NamedBody667_473

def NamedBody667_475 : StackLang.HolProg 64 :=
.seq NamedBody667_27 NamedBody667_474

def NamedBody667_476 : StackLang.HolProg 64 :=
.seq NamedBody667_26 NamedBody667_475

def NamedBody667_477 : StackLang.HolProg 64 :=
.seq NamedBody667_25 NamedBody667_476

def NamedBody667_478 : StackLang.HolProg 64 :=
.seq NamedBody667_24 NamedBody667_477

def NamedBody667_479 : StackLang.HolProg 64 :=
.seq NamedBody667_23 NamedBody667_478

def NamedBody667_480 : StackLang.HolProg 64 :=
.seq NamedBody667_22 NamedBody667_479

def NamedBody667_481 : StackLang.HolProg 64 :=
.seq NamedBody667_21 NamedBody667_480

def NamedBody667_482 : StackLang.HolProg 64 :=
.seq NamedBody667_20 NamedBody667_481

def NamedBody667_483 : StackLang.HolProg 64 :=
.seq NamedBody667_19 NamedBody667_482

def NamedBody667_484 : StackLang.HolProg 64 :=
.seq NamedBody667_18 NamedBody667_483

def NamedBody667_485 : StackLang.HolProg 64 :=
.seq NamedBody667_17 NamedBody667_484

def NamedBody667_486 : StackLang.HolProg 64 :=
.seq NamedBody667_16 NamedBody667_485

def NamedBody667_487 : StackLang.HolProg 64 :=
.seq NamedBody667_15 NamedBody667_486

def NamedBody667_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody667_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody667_490 : StackLang.HolProg 64 :=
.seq NamedBody667_488 NamedBody667_489

def NamedBody667_491 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody667_487 NamedBody667_490

def NamedBody667_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody667_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody667_494 : StackLang.HolProg 64 :=
.seq NamedBody667_492 NamedBody667_493

def NamedBody667_495 : StackLang.HolProg 64 :=
.seq NamedBody667_491 NamedBody667_494

def NamedBody667_496 : StackLang.HolProg 64 :=
.seq NamedBody667_14 NamedBody667_495

def NamedBody667_497 : StackLang.HolProg 64 :=
.seq NamedBody667_13 NamedBody667_496

def NamedBody667_498 : StackLang.HolProg 64 :=
.loop NamedBody667_497

def NamedBody667_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody667_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody667_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody667_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody667_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody667_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody667_505 : StackLang.HolProg 64 :=
.seq NamedBody667_503 NamedBody667_504

def NamedBody667_506 : StackLang.HolProg 64 :=
.seq NamedBody667_502 NamedBody667_505

def NamedBody667_507 : StackLang.HolProg 64 :=
.seq NamedBody667_501 NamedBody667_506

def NamedBody667_508 : StackLang.HolProg 64 :=
.seq NamedBody667_500 NamedBody667_507

def NamedBody667_509 : StackLang.HolProg 64 :=
.seq NamedBody667_499 NamedBody667_508

def NamedBody667_510 : StackLang.HolProg 64 :=
.seq NamedBody667_498 NamedBody667_509

def NamedBody667_511 : StackLang.HolProg 64 :=
.seq NamedBody667_12 NamedBody667_510

def NamedBody667_512 : StackLang.HolProg 64 :=
.seq NamedBody667_9 NamedBody667_511

def NamedBody667_513 : StackLang.HolProg 64 :=
.seq NamedBody667_8 NamedBody667_512

def NamedBody667_514 : StackLang.HolProg 64 :=
.seq NamedBody667_7 NamedBody667_513

def NamedBody667_515 : StackLang.HolProg 64 :=
.seq NamedBody667_6 NamedBody667_514

def Named667 : Nat × StackLang.HolProg 64 := (667, NamedBody667_515)
theorem Named667_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed667 = Named667 := by
  kernel_rfl
#print axioms Named667_eq
end InitECandidate.Proofs.BackendStages
