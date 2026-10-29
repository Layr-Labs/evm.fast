import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed738
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody738_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody738_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody738_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody738_3 : StackLang.HolProg 64 :=
.seq NamedBody738_1 NamedBody738_2

def NamedBody738_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody738_3 NamedBody738_4

def NamedBody738_6 : StackLang.HolProg 64 :=
.seq NamedBody738_0 NamedBody738_5

def NamedBody738_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody738_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody738_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody738_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 8#64))

def NamedBody738_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 16#64))

def NamedBody738_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 24#64))

def NamedBody738_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 32#64))

def NamedBody738_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 40#64))

def NamedBody738_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 48#64))

def NamedBody738_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 56#64))

def NamedBody738_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 64#64))

def NamedBody738_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 72#64))

def NamedBody738_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 80#64))

def NamedBody738_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 88#64))

def NamedBody738_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody738_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody738_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody738_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody738_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody738_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody738_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody738_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody738_39 : StackLang.HolProg 64 :=
.seq NamedBody738_37 NamedBody738_38

def NamedBody738_40 : StackLang.HolProg 64 :=
.seq NamedBody738_36 NamedBody738_39

def NamedBody738_41 : StackLang.HolProg 64 :=
.seq NamedBody738_35 NamedBody738_40

def NamedBody738_42 : StackLang.HolProg 64 :=
.seq NamedBody738_34 NamedBody738_41

def NamedBody738_43 : StackLang.HolProg 64 :=
.seq NamedBody738_33 NamedBody738_42

def NamedBody738_44 : StackLang.HolProg 64 :=
.seq NamedBody738_32 NamedBody738_43

def NamedBody738_45 : StackLang.HolProg 64 :=
.seq NamedBody738_31 NamedBody738_44

def NamedBody738_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3270#64)

def NamedBody738_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody738_49 : StackLang.HolProg 64 :=
.seq NamedBody738_47 NamedBody738_48

def NamedBody738_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody738_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody738_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody738_53 : StackLang.HolProg 64 :=
.seq NamedBody738_51 NamedBody738_52

def NamedBody738_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_55 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody738_53 NamedBody738_54

def NamedBody738_56 : StackLang.HolProg 64 :=
.seq NamedBody738_50 NamedBody738_55

def NamedBody738_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody738_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody738_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 738 3

def NamedBody738_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody738_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody738_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody738_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody738_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody738_66 : StackLang.HolProg 64 :=
.seq NamedBody738_64 NamedBody738_65

def NamedBody738_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody738_68 : StackLang.HolProg 64 :=
.seq NamedBody738_66 NamedBody738_67

def NamedBody738_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody738_70 : StackLang.HolProg 64 :=
.seq NamedBody738_68 NamedBody738_69

def NamedBody738_71 : StackLang.HolProg 64 :=
.seq NamedBody738_63 NamedBody738_70

def NamedBody738_72 : StackLang.HolProg 64 :=
.seq NamedBody738_62 NamedBody738_71

def NamedBody738_73 : StackLang.HolProg 64 :=
.seq NamedBody738_61 NamedBody738_72

def NamedBody738_74 : StackLang.HolProg 64 :=
.seq NamedBody738_60 NamedBody738_73

def NamedBody738_75 : StackLang.HolProg 64 :=
.seq NamedBody738_59 NamedBody738_74

def NamedBody738_76 : StackLang.HolProg 64 :=
.seq NamedBody738_58 NamedBody738_75

def NamedBody738_77 : StackLang.HolProg 64 :=
.seq NamedBody738_57 NamedBody738_76

def NamedBody738_78 : StackLang.HolProg 64 :=
.seq NamedBody738_56 NamedBody738_77

def NamedBody738_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody738_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody738_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody738_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody738_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody738_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody738_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody738_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody738_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody738_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody738_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody738_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody738_94 : StackLang.HolProg 64 :=
.seq NamedBody738_92 NamedBody738_93

def NamedBody738_95 : StackLang.HolProg 64 :=
.seq NamedBody738_91 NamedBody738_94

def NamedBody738_96 : StackLang.HolProg 64 :=
.seq NamedBody738_90 NamedBody738_95

def NamedBody738_97 : StackLang.HolProg 64 :=
.seq NamedBody738_89 NamedBody738_96

def NamedBody738_98 : StackLang.HolProg 64 :=
.seq NamedBody738_88 NamedBody738_97

def NamedBody738_99 : StackLang.HolProg 64 :=
.seq NamedBody738_87 NamedBody738_98

def NamedBody738_100 : StackLang.HolProg 64 :=
.seq NamedBody738_86 NamedBody738_99

def NamedBody738_101 : StackLang.HolProg 64 :=
.seq NamedBody738_85 NamedBody738_100

def NamedBody738_102 : StackLang.HolProg 64 :=
.seq NamedBody738_84 NamedBody738_101

def NamedBody738_103 : StackLang.HolProg 64 :=
.seq NamedBody738_83 NamedBody738_102

def NamedBody738_104 : StackLang.HolProg 64 :=
.seq NamedBody738_82 NamedBody738_103

def NamedBody738_105 : StackLang.HolProg 64 :=
.seq NamedBody738_81 NamedBody738_104

def NamedBody738_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody738_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody738_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody738_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody738_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody738_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody738_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody738_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody738_114 : StackLang.HolProg 64 :=
.seq NamedBody738_112 NamedBody738_113

def NamedBody738_115 : StackLang.HolProg 64 :=
.seq NamedBody738_111 NamedBody738_114

def NamedBody738_116 : StackLang.HolProg 64 :=
.seq NamedBody738_110 NamedBody738_115

def NamedBody738_117 : StackLang.HolProg 64 :=
.seq NamedBody738_109 NamedBody738_116

def NamedBody738_118 : StackLang.HolProg 64 :=
.seq NamedBody738_108 NamedBody738_117

def NamedBody738_119 : StackLang.HolProg 64 :=
.seq NamedBody738_107 NamedBody738_118

def NamedBody738_120 : StackLang.HolProg 64 :=
.seq NamedBody738_106 NamedBody738_119

def NamedBody738_121 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody738_122 : StackLang.HolProg 64 :=
.seq NamedBody738_120 NamedBody738_121

def NamedBody738_123 : StackLang.HolProg 64 :=
.call (some (NamedBody738_105, 1, 738, 2)) (Sum.inl 712) (some (NamedBody738_122, 738, 3))

def NamedBody738_124 : StackLang.HolProg 64 :=
.seq NamedBody738_80 NamedBody738_123

def NamedBody738_125 : StackLang.HolProg 64 :=
.seq NamedBody738_79 NamedBody738_124

def NamedBody738_126 : StackLang.HolProg 64 :=
.seq NamedBody738_78 NamedBody738_125

def NamedBody738_127 : StackLang.HolProg 64 :=
.seq NamedBody738_49 NamedBody738_126

def NamedBody738_128 : StackLang.HolProg 64 :=
.seq NamedBody738_46 NamedBody738_127

def NamedBody738_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody738_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def NamedBody738_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 8#64))

def NamedBody738_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 16#64))

def NamedBody738_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 24#64))

def NamedBody738_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 32#64))

def NamedBody738_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 40#64))

def NamedBody738_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody738_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody738_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody738_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody738_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody738_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody738_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 40#64))

def NamedBody738_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody738_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody738_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody738_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 14

def NamedBody738_160 : StackLang.HolProg 64 :=
.seq NamedBody738_158 NamedBody738_159

def NamedBody738_161 : StackLang.HolProg 64 :=
.seq NamedBody738_157 NamedBody738_160

def NamedBody738_162 : StackLang.HolProg 64 :=
.seq NamedBody738_156 NamedBody738_161

def NamedBody738_163 : StackLang.HolProg 64 :=
.seq NamedBody738_155 NamedBody738_162

def NamedBody738_164 : StackLang.HolProg 64 :=
.seq NamedBody738_154 NamedBody738_163

def NamedBody738_165 : StackLang.HolProg 64 :=
.seq NamedBody738_153 NamedBody738_164

def NamedBody738_166 : StackLang.HolProg 64 :=
.seq NamedBody738_152 NamedBody738_165

def NamedBody738_167 : StackLang.HolProg 64 :=
.seq NamedBody738_151 NamedBody738_166

def NamedBody738_168 : StackLang.HolProg 64 :=
.seq NamedBody738_150 NamedBody738_167

def NamedBody738_169 : StackLang.HolProg 64 :=
.seq NamedBody738_149 NamedBody738_168

def NamedBody738_170 : StackLang.HolProg 64 :=
.seq NamedBody738_148 NamedBody738_169

def NamedBody738_171 : StackLang.HolProg 64 :=
.seq NamedBody738_147 NamedBody738_170

def NamedBody738_172 : StackLang.HolProg 64 :=
.seq NamedBody738_146 NamedBody738_171

def NamedBody738_173 : StackLang.HolProg 64 :=
.seq NamedBody738_145 NamedBody738_172

def NamedBody738_174 : StackLang.HolProg 64 :=
.seq NamedBody738_144 NamedBody738_173

def NamedBody738_175 : StackLang.HolProg 64 :=
.seq NamedBody738_143 NamedBody738_174

def NamedBody738_176 : StackLang.HolProg 64 :=
.seq NamedBody738_142 NamedBody738_175

def NamedBody738_177 : StackLang.HolProg 64 :=
.seq NamedBody738_141 NamedBody738_176

def NamedBody738_178 : StackLang.HolProg 64 :=
.seq NamedBody738_140 NamedBody738_177

def NamedBody738_179 : StackLang.HolProg 64 :=
.seq NamedBody738_139 NamedBody738_178

def NamedBody738_180 : StackLang.HolProg 64 :=
.seq NamedBody738_138 NamedBody738_179

def NamedBody738_181 : StackLang.HolProg 64 :=
.seq NamedBody738_137 NamedBody738_180

def NamedBody738_182 : StackLang.HolProg 64 :=
.seq NamedBody738_136 NamedBody738_181

def NamedBody738_183 : StackLang.HolProg 64 :=
.seq NamedBody738_135 NamedBody738_182

def NamedBody738_184 : StackLang.HolProg 64 :=
.seq NamedBody738_134 NamedBody738_183

def NamedBody738_185 : StackLang.HolProg 64 :=
.seq NamedBody738_133 NamedBody738_184

def NamedBody738_186 : StackLang.HolProg 64 :=
.seq NamedBody738_132 NamedBody738_185

def NamedBody738_187 : StackLang.HolProg 64 :=
.seq NamedBody738_131 NamedBody738_186

def NamedBody738_188 : StackLang.HolProg 64 :=
.seq NamedBody738_130 NamedBody738_187

def NamedBody738_189 : StackLang.HolProg 64 :=
.seq NamedBody738_129 NamedBody738_188

def NamedBody738_190 : StackLang.HolProg 64 :=
.seq NamedBody738_128 NamedBody738_189

def NamedBody738_191 : StackLang.HolProg 64 :=
.seq NamedBody738_45 NamedBody738_190

def NamedBody738_192 : StackLang.HolProg 64 :=
.seq NamedBody738_30 NamedBody738_191

def NamedBody738_193 : StackLang.HolProg 64 :=
.seq NamedBody738_29 NamedBody738_192

def NamedBody738_194 : StackLang.HolProg 64 :=
.seq NamedBody738_28 NamedBody738_193

def NamedBody738_195 : StackLang.HolProg 64 :=
.seq NamedBody738_27 NamedBody738_194

def NamedBody738_196 : StackLang.HolProg 64 :=
.seq NamedBody738_26 NamedBody738_195

def NamedBody738_197 : StackLang.HolProg 64 :=
.seq NamedBody738_25 NamedBody738_196

def NamedBody738_198 : StackLang.HolProg 64 :=
.seq NamedBody738_24 NamedBody738_197

def NamedBody738_199 : StackLang.HolProg 64 :=
.seq NamedBody738_23 NamedBody738_198

def NamedBody738_200 : StackLang.HolProg 64 :=
.seq NamedBody738_22 NamedBody738_199

def NamedBody738_201 : StackLang.HolProg 64 :=
.seq NamedBody738_21 NamedBody738_200

def NamedBody738_202 : StackLang.HolProg 64 :=
.seq NamedBody738_20 NamedBody738_201

def NamedBody738_203 : StackLang.HolProg 64 :=
.seq NamedBody738_19 NamedBody738_202

def NamedBody738_204 : StackLang.HolProg 64 :=
.seq NamedBody738_18 NamedBody738_203

def NamedBody738_205 : StackLang.HolProg 64 :=
.seq NamedBody738_17 NamedBody738_204

def NamedBody738_206 : StackLang.HolProg 64 :=
.seq NamedBody738_16 NamedBody738_205

def NamedBody738_207 : StackLang.HolProg 64 :=
.seq NamedBody738_15 NamedBody738_206

def NamedBody738_208 : StackLang.HolProg 64 :=
.seq NamedBody738_14 NamedBody738_207

def NamedBody738_209 : StackLang.HolProg 64 :=
.seq NamedBody738_13 NamedBody738_208

def NamedBody738_210 : StackLang.HolProg 64 :=
.seq NamedBody738_12 NamedBody738_209

def NamedBody738_211 : StackLang.HolProg 64 :=
.seq NamedBody738_11 NamedBody738_210

def NamedBody738_212 : StackLang.HolProg 64 :=
.seq NamedBody738_10 NamedBody738_211

def NamedBody738_213 : StackLang.HolProg 64 :=
.seq NamedBody738_9 NamedBody738_212

def NamedBody738_214 : StackLang.HolProg 64 :=
.seq NamedBody738_8 NamedBody738_213

def NamedBody738_215 : StackLang.HolProg 64 :=
.seq NamedBody738_7 NamedBody738_214

def NamedBody738_216 : StackLang.HolProg 64 :=
.seq NamedBody738_6 NamedBody738_215

def Named738 : Nat × StackLang.HolProg 64 := (738, NamedBody738_216)
theorem Named738_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed738 = Named738 := by
  kernel_rfl
#print axioms Named738_eq
end InitECandidate.Proofs.BackendStages
