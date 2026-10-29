import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed736
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody736_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody736_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody736_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody736_3 : StackLang.HolProg 64 :=
.seq NamedBody736_1 NamedBody736_2

def NamedBody736_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody736_3 NamedBody736_4

def NamedBody736_6 : StackLang.HolProg 64 :=
.seq NamedBody736_0 NamedBody736_5

def NamedBody736_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody736_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody736_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody736_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 8#64))

def NamedBody736_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 16#64))

def NamedBody736_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def NamedBody736_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 32#64))

def NamedBody736_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 40#64))

def NamedBody736_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 48#64))

def NamedBody736_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 56#64))

def NamedBody736_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 64#64))

def NamedBody736_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 72#64))

def NamedBody736_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 80#64))

def NamedBody736_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 88#64))

def NamedBody736_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody736_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody736_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody736_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody736_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody736_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody736_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody736_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody736_39 : StackLang.HolProg 64 :=
.seq NamedBody736_37 NamedBody736_38

def NamedBody736_40 : StackLang.HolProg 64 :=
.seq NamedBody736_36 NamedBody736_39

def NamedBody736_41 : StackLang.HolProg 64 :=
.seq NamedBody736_35 NamedBody736_40

def NamedBody736_42 : StackLang.HolProg 64 :=
.seq NamedBody736_34 NamedBody736_41

def NamedBody736_43 : StackLang.HolProg 64 :=
.seq NamedBody736_33 NamedBody736_42

def NamedBody736_44 : StackLang.HolProg 64 :=
.seq NamedBody736_32 NamedBody736_43

def NamedBody736_45 : StackLang.HolProg 64 :=
.seq NamedBody736_31 NamedBody736_44

def NamedBody736_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3268#64)

def NamedBody736_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody736_49 : StackLang.HolProg 64 :=
.seq NamedBody736_47 NamedBody736_48

def NamedBody736_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody736_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody736_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody736_53 : StackLang.HolProg 64 :=
.seq NamedBody736_51 NamedBody736_52

def NamedBody736_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_55 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody736_53 NamedBody736_54

def NamedBody736_56 : StackLang.HolProg 64 :=
.seq NamedBody736_50 NamedBody736_55

def NamedBody736_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody736_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody736_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 736 3

def NamedBody736_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody736_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody736_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody736_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody736_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody736_66 : StackLang.HolProg 64 :=
.seq NamedBody736_64 NamedBody736_65

def NamedBody736_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody736_68 : StackLang.HolProg 64 :=
.seq NamedBody736_66 NamedBody736_67

def NamedBody736_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody736_70 : StackLang.HolProg 64 :=
.seq NamedBody736_68 NamedBody736_69

def NamedBody736_71 : StackLang.HolProg 64 :=
.seq NamedBody736_63 NamedBody736_70

def NamedBody736_72 : StackLang.HolProg 64 :=
.seq NamedBody736_62 NamedBody736_71

def NamedBody736_73 : StackLang.HolProg 64 :=
.seq NamedBody736_61 NamedBody736_72

def NamedBody736_74 : StackLang.HolProg 64 :=
.seq NamedBody736_60 NamedBody736_73

def NamedBody736_75 : StackLang.HolProg 64 :=
.seq NamedBody736_59 NamedBody736_74

def NamedBody736_76 : StackLang.HolProg 64 :=
.seq NamedBody736_58 NamedBody736_75

def NamedBody736_77 : StackLang.HolProg 64 :=
.seq NamedBody736_57 NamedBody736_76

def NamedBody736_78 : StackLang.HolProg 64 :=
.seq NamedBody736_56 NamedBody736_77

def NamedBody736_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody736_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody736_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody736_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 29 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody736_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody736_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody736_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody736_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody736_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody736_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody736_92 : StackLang.HolProg 64 :=
.seq NamedBody736_90 NamedBody736_91

def NamedBody736_93 : StackLang.HolProg 64 :=
.seq NamedBody736_89 NamedBody736_92

def NamedBody736_94 : StackLang.HolProg 64 :=
.seq NamedBody736_88 NamedBody736_93

def NamedBody736_95 : StackLang.HolProg 64 :=
.seq NamedBody736_87 NamedBody736_94

def NamedBody736_96 : StackLang.HolProg 64 :=
.seq NamedBody736_86 NamedBody736_95

def NamedBody736_97 : StackLang.HolProg 64 :=
.seq NamedBody736_85 NamedBody736_96

def NamedBody736_98 : StackLang.HolProg 64 :=
.seq NamedBody736_84 NamedBody736_97

def NamedBody736_99 : StackLang.HolProg 64 :=
.seq NamedBody736_83 NamedBody736_98

def NamedBody736_100 : StackLang.HolProg 64 :=
.seq NamedBody736_82 NamedBody736_99

def NamedBody736_101 : StackLang.HolProg 64 :=
.seq NamedBody736_81 NamedBody736_100

def NamedBody736_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody736_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody736_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody736_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody736_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody736_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody736_108 : StackLang.HolProg 64 :=
.seq NamedBody736_106 NamedBody736_107

def NamedBody736_109 : StackLang.HolProg 64 :=
.seq NamedBody736_105 NamedBody736_108

def NamedBody736_110 : StackLang.HolProg 64 :=
.seq NamedBody736_104 NamedBody736_109

def NamedBody736_111 : StackLang.HolProg 64 :=
.seq NamedBody736_103 NamedBody736_110

def NamedBody736_112 : StackLang.HolProg 64 :=
.seq NamedBody736_102 NamedBody736_111

def NamedBody736_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody736_114 : StackLang.HolProg 64 :=
.seq NamedBody736_112 NamedBody736_113

def NamedBody736_115 : StackLang.HolProg 64 :=
.call (some (NamedBody736_101, 1, 736, 2)) (Sum.inl 712) (some (NamedBody736_114, 736, 3))

def NamedBody736_116 : StackLang.HolProg 64 :=
.seq NamedBody736_80 NamedBody736_115

def NamedBody736_117 : StackLang.HolProg 64 :=
.seq NamedBody736_79 NamedBody736_116

def NamedBody736_118 : StackLang.HolProg 64 :=
.seq NamedBody736_78 NamedBody736_117

def NamedBody736_119 : StackLang.HolProg 64 :=
.seq NamedBody736_49 NamedBody736_118

def NamedBody736_120 : StackLang.HolProg 64 :=
.seq NamedBody736_46 NamedBody736_119

def NamedBody736_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody736_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody736_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody736_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody736_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody736_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody736_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody736_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody736_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody736_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody736_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody736_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody736_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody736_134 : StackLang.HolProg 64 :=
.seq NamedBody736_132 NamedBody736_133

def NamedBody736_135 : StackLang.HolProg 64 :=
.seq NamedBody736_131 NamedBody736_134

def NamedBody736_136 : StackLang.HolProg 64 :=
.seq NamedBody736_130 NamedBody736_135

def NamedBody736_137 : StackLang.HolProg 64 :=
.seq NamedBody736_129 NamedBody736_136

def NamedBody736_138 : StackLang.HolProg 64 :=
.seq NamedBody736_128 NamedBody736_137

def NamedBody736_139 : StackLang.HolProg 64 :=
.seq NamedBody736_127 NamedBody736_138

def NamedBody736_140 : StackLang.HolProg 64 :=
.seq NamedBody736_126 NamedBody736_139

def NamedBody736_141 : StackLang.HolProg 64 :=
.seq NamedBody736_125 NamedBody736_140

def NamedBody736_142 : StackLang.HolProg 64 :=
.seq NamedBody736_124 NamedBody736_141

def NamedBody736_143 : StackLang.HolProg 64 :=
.seq NamedBody736_123 NamedBody736_142

def NamedBody736_144 : StackLang.HolProg 64 :=
.seq NamedBody736_122 NamedBody736_143

def NamedBody736_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3269#64)

def NamedBody736_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody736_148 : StackLang.HolProg 64 :=
.seq NamedBody736_146 NamedBody736_147

def NamedBody736_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody736_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody736_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody736_152 : StackLang.HolProg 64 :=
.seq NamedBody736_150 NamedBody736_151

def NamedBody736_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_154 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody736_152 NamedBody736_153

def NamedBody736_155 : StackLang.HolProg 64 :=
.seq NamedBody736_149 NamedBody736_154

def NamedBody736_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody736_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody736_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 736 5

def NamedBody736_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody736_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody736_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody736_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody736_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody736_165 : StackLang.HolProg 64 :=
.seq NamedBody736_163 NamedBody736_164

def NamedBody736_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody736_167 : StackLang.HolProg 64 :=
.seq NamedBody736_165 NamedBody736_166

def NamedBody736_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody736_169 : StackLang.HolProg 64 :=
.seq NamedBody736_167 NamedBody736_168

def NamedBody736_170 : StackLang.HolProg 64 :=
.seq NamedBody736_162 NamedBody736_169

def NamedBody736_171 : StackLang.HolProg 64 :=
.seq NamedBody736_161 NamedBody736_170

def NamedBody736_172 : StackLang.HolProg 64 :=
.seq NamedBody736_160 NamedBody736_171

def NamedBody736_173 : StackLang.HolProg 64 :=
.seq NamedBody736_159 NamedBody736_172

def NamedBody736_174 : StackLang.HolProg 64 :=
.seq NamedBody736_158 NamedBody736_173

def NamedBody736_175 : StackLang.HolProg 64 :=
.seq NamedBody736_157 NamedBody736_174

def NamedBody736_176 : StackLang.HolProg 64 :=
.seq NamedBody736_156 NamedBody736_175

def NamedBody736_177 : StackLang.HolProg 64 :=
.seq NamedBody736_155 NamedBody736_176

def NamedBody736_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody736_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody736_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody736_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody736_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody736_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody736_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody736_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody736_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody736_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody736_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody736_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody736_193 : StackLang.HolProg 64 :=
.seq NamedBody736_191 NamedBody736_192

def NamedBody736_194 : StackLang.HolProg 64 :=
.seq NamedBody736_190 NamedBody736_193

def NamedBody736_195 : StackLang.HolProg 64 :=
.seq NamedBody736_189 NamedBody736_194

def NamedBody736_196 : StackLang.HolProg 64 :=
.seq NamedBody736_188 NamedBody736_195

def NamedBody736_197 : StackLang.HolProg 64 :=
.seq NamedBody736_187 NamedBody736_196

def NamedBody736_198 : StackLang.HolProg 64 :=
.seq NamedBody736_186 NamedBody736_197

def NamedBody736_199 : StackLang.HolProg 64 :=
.seq NamedBody736_185 NamedBody736_198

def NamedBody736_200 : StackLang.HolProg 64 :=
.seq NamedBody736_184 NamedBody736_199

def NamedBody736_201 : StackLang.HolProg 64 :=
.seq NamedBody736_183 NamedBody736_200

def NamedBody736_202 : StackLang.HolProg 64 :=
.seq NamedBody736_182 NamedBody736_201

def NamedBody736_203 : StackLang.HolProg 64 :=
.seq NamedBody736_181 NamedBody736_202

def NamedBody736_204 : StackLang.HolProg 64 :=
.seq NamedBody736_180 NamedBody736_203

def NamedBody736_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody736_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody736_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody736_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody736_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody736_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody736_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody736_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody736_213 : StackLang.HolProg 64 :=
.seq NamedBody736_211 NamedBody736_212

def NamedBody736_214 : StackLang.HolProg 64 :=
.seq NamedBody736_210 NamedBody736_213

def NamedBody736_215 : StackLang.HolProg 64 :=
.seq NamedBody736_209 NamedBody736_214

def NamedBody736_216 : StackLang.HolProg 64 :=
.seq NamedBody736_208 NamedBody736_215

def NamedBody736_217 : StackLang.HolProg 64 :=
.seq NamedBody736_207 NamedBody736_216

def NamedBody736_218 : StackLang.HolProg 64 :=
.seq NamedBody736_206 NamedBody736_217

def NamedBody736_219 : StackLang.HolProg 64 :=
.seq NamedBody736_205 NamedBody736_218

def NamedBody736_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody736_221 : StackLang.HolProg 64 :=
.seq NamedBody736_219 NamedBody736_220

def NamedBody736_222 : StackLang.HolProg 64 :=
.call (some (NamedBody736_204, 1, 736, 4)) (Sum.inl 712) (some (NamedBody736_221, 736, 5))

def NamedBody736_223 : StackLang.HolProg 64 :=
.seq NamedBody736_179 NamedBody736_222

def NamedBody736_224 : StackLang.HolProg 64 :=
.seq NamedBody736_178 NamedBody736_223

def NamedBody736_225 : StackLang.HolProg 64 :=
.seq NamedBody736_177 NamedBody736_224

def NamedBody736_226 : StackLang.HolProg 64 :=
.seq NamedBody736_148 NamedBody736_225

def NamedBody736_227 : StackLang.HolProg 64 :=
.seq NamedBody736_145 NamedBody736_226

def NamedBody736_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody736_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody736_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def NamedBody736_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def NamedBody736_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def NamedBody736_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 32#64))

def NamedBody736_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 40#64))

def NamedBody736_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody736_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody736_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody736_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody736_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody736_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody736_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 40#64))

def NamedBody736_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody736_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody736_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody736_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 14

def NamedBody736_259 : StackLang.HolProg 64 :=
.seq NamedBody736_257 NamedBody736_258

def NamedBody736_260 : StackLang.HolProg 64 :=
.seq NamedBody736_256 NamedBody736_259

def NamedBody736_261 : StackLang.HolProg 64 :=
.seq NamedBody736_255 NamedBody736_260

def NamedBody736_262 : StackLang.HolProg 64 :=
.seq NamedBody736_254 NamedBody736_261

def NamedBody736_263 : StackLang.HolProg 64 :=
.seq NamedBody736_253 NamedBody736_262

def NamedBody736_264 : StackLang.HolProg 64 :=
.seq NamedBody736_252 NamedBody736_263

def NamedBody736_265 : StackLang.HolProg 64 :=
.seq NamedBody736_251 NamedBody736_264

def NamedBody736_266 : StackLang.HolProg 64 :=
.seq NamedBody736_250 NamedBody736_265

def NamedBody736_267 : StackLang.HolProg 64 :=
.seq NamedBody736_249 NamedBody736_266

def NamedBody736_268 : StackLang.HolProg 64 :=
.seq NamedBody736_248 NamedBody736_267

def NamedBody736_269 : StackLang.HolProg 64 :=
.seq NamedBody736_247 NamedBody736_268

def NamedBody736_270 : StackLang.HolProg 64 :=
.seq NamedBody736_246 NamedBody736_269

def NamedBody736_271 : StackLang.HolProg 64 :=
.seq NamedBody736_245 NamedBody736_270

def NamedBody736_272 : StackLang.HolProg 64 :=
.seq NamedBody736_244 NamedBody736_271

def NamedBody736_273 : StackLang.HolProg 64 :=
.seq NamedBody736_243 NamedBody736_272

def NamedBody736_274 : StackLang.HolProg 64 :=
.seq NamedBody736_242 NamedBody736_273

def NamedBody736_275 : StackLang.HolProg 64 :=
.seq NamedBody736_241 NamedBody736_274

def NamedBody736_276 : StackLang.HolProg 64 :=
.seq NamedBody736_240 NamedBody736_275

def NamedBody736_277 : StackLang.HolProg 64 :=
.seq NamedBody736_239 NamedBody736_276

def NamedBody736_278 : StackLang.HolProg 64 :=
.seq NamedBody736_238 NamedBody736_277

def NamedBody736_279 : StackLang.HolProg 64 :=
.seq NamedBody736_237 NamedBody736_278

def NamedBody736_280 : StackLang.HolProg 64 :=
.seq NamedBody736_236 NamedBody736_279

def NamedBody736_281 : StackLang.HolProg 64 :=
.seq NamedBody736_235 NamedBody736_280

def NamedBody736_282 : StackLang.HolProg 64 :=
.seq NamedBody736_234 NamedBody736_281

def NamedBody736_283 : StackLang.HolProg 64 :=
.seq NamedBody736_233 NamedBody736_282

def NamedBody736_284 : StackLang.HolProg 64 :=
.seq NamedBody736_232 NamedBody736_283

def NamedBody736_285 : StackLang.HolProg 64 :=
.seq NamedBody736_231 NamedBody736_284

def NamedBody736_286 : StackLang.HolProg 64 :=
.seq NamedBody736_230 NamedBody736_285

def NamedBody736_287 : StackLang.HolProg 64 :=
.seq NamedBody736_229 NamedBody736_286

def NamedBody736_288 : StackLang.HolProg 64 :=
.seq NamedBody736_228 NamedBody736_287

def NamedBody736_289 : StackLang.HolProg 64 :=
.seq NamedBody736_227 NamedBody736_288

def NamedBody736_290 : StackLang.HolProg 64 :=
.seq NamedBody736_144 NamedBody736_289

def NamedBody736_291 : StackLang.HolProg 64 :=
.seq NamedBody736_121 NamedBody736_290

def NamedBody736_292 : StackLang.HolProg 64 :=
.seq NamedBody736_120 NamedBody736_291

def NamedBody736_293 : StackLang.HolProg 64 :=
.seq NamedBody736_45 NamedBody736_292

def NamedBody736_294 : StackLang.HolProg 64 :=
.seq NamedBody736_30 NamedBody736_293

def NamedBody736_295 : StackLang.HolProg 64 :=
.seq NamedBody736_29 NamedBody736_294

def NamedBody736_296 : StackLang.HolProg 64 :=
.seq NamedBody736_28 NamedBody736_295

def NamedBody736_297 : StackLang.HolProg 64 :=
.seq NamedBody736_27 NamedBody736_296

def NamedBody736_298 : StackLang.HolProg 64 :=
.seq NamedBody736_26 NamedBody736_297

def NamedBody736_299 : StackLang.HolProg 64 :=
.seq NamedBody736_25 NamedBody736_298

def NamedBody736_300 : StackLang.HolProg 64 :=
.seq NamedBody736_24 NamedBody736_299

def NamedBody736_301 : StackLang.HolProg 64 :=
.seq NamedBody736_23 NamedBody736_300

def NamedBody736_302 : StackLang.HolProg 64 :=
.seq NamedBody736_22 NamedBody736_301

def NamedBody736_303 : StackLang.HolProg 64 :=
.seq NamedBody736_21 NamedBody736_302

def NamedBody736_304 : StackLang.HolProg 64 :=
.seq NamedBody736_20 NamedBody736_303

def NamedBody736_305 : StackLang.HolProg 64 :=
.seq NamedBody736_19 NamedBody736_304

def NamedBody736_306 : StackLang.HolProg 64 :=
.seq NamedBody736_18 NamedBody736_305

def NamedBody736_307 : StackLang.HolProg 64 :=
.seq NamedBody736_17 NamedBody736_306

def NamedBody736_308 : StackLang.HolProg 64 :=
.seq NamedBody736_16 NamedBody736_307

def NamedBody736_309 : StackLang.HolProg 64 :=
.seq NamedBody736_15 NamedBody736_308

def NamedBody736_310 : StackLang.HolProg 64 :=
.seq NamedBody736_14 NamedBody736_309

def NamedBody736_311 : StackLang.HolProg 64 :=
.seq NamedBody736_13 NamedBody736_310

def NamedBody736_312 : StackLang.HolProg 64 :=
.seq NamedBody736_12 NamedBody736_311

def NamedBody736_313 : StackLang.HolProg 64 :=
.seq NamedBody736_11 NamedBody736_312

def NamedBody736_314 : StackLang.HolProg 64 :=
.seq NamedBody736_10 NamedBody736_313

def NamedBody736_315 : StackLang.HolProg 64 :=
.seq NamedBody736_9 NamedBody736_314

def NamedBody736_316 : StackLang.HolProg 64 :=
.seq NamedBody736_8 NamedBody736_315

def NamedBody736_317 : StackLang.HolProg 64 :=
.seq NamedBody736_7 NamedBody736_316

def NamedBody736_318 : StackLang.HolProg 64 :=
.seq NamedBody736_6 NamedBody736_317

def Named736 : Nat × StackLang.HolProg 64 := (736, NamedBody736_318)
theorem Named736_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed736 = Named736 := by
  kernel_rfl
#print axioms Named736_eq
end InitECandidate.Proofs.BackendStages
