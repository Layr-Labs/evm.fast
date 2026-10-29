import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed304
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody304_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody304_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody304_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody304_3 : StackLang.HolProg 64 :=
.seq NamedBody304_1 NamedBody304_2

def NamedBody304_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody304_3 NamedBody304_4

def NamedBody304_6 : StackLang.HolProg 64 :=
.seq NamedBody304_0 NamedBody304_5

def NamedBody304_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody304_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody304_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody304_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody304_11 : StackLang.HolProg 64 :=
.seq NamedBody304_9 NamedBody304_10

def NamedBody304_12 : StackLang.HolProg 64 :=
.seq NamedBody304_8 NamedBody304_11

def NamedBody304_13 : StackLang.HolProg 64 :=
.seq NamedBody304_7 NamedBody304_12

def NamedBody304_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 835#64)

def NamedBody304_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody304_17 : StackLang.HolProg 64 :=
.seq NamedBody304_15 NamedBody304_16

def NamedBody304_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody304_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody304_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody304_21 : StackLang.HolProg 64 :=
.seq NamedBody304_19 NamedBody304_20

def NamedBody304_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody304_21 NamedBody304_22

def NamedBody304_24 : StackLang.HolProg 64 :=
.seq NamedBody304_18 NamedBody304_23

def NamedBody304_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody304_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody304_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 3

def NamedBody304_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody304_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody304_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody304_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody304_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody304_34 : StackLang.HolProg 64 :=
.seq NamedBody304_32 NamedBody304_33

def NamedBody304_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody304_36 : StackLang.HolProg 64 :=
.seq NamedBody304_34 NamedBody304_35

def NamedBody304_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody304_38 : StackLang.HolProg 64 :=
.seq NamedBody304_36 NamedBody304_37

def NamedBody304_39 : StackLang.HolProg 64 :=
.seq NamedBody304_31 NamedBody304_38

def NamedBody304_40 : StackLang.HolProg 64 :=
.seq NamedBody304_30 NamedBody304_39

def NamedBody304_41 : StackLang.HolProg 64 :=
.seq NamedBody304_29 NamedBody304_40

def NamedBody304_42 : StackLang.HolProg 64 :=
.seq NamedBody304_28 NamedBody304_41

def NamedBody304_43 : StackLang.HolProg 64 :=
.seq NamedBody304_27 NamedBody304_42

def NamedBody304_44 : StackLang.HolProg 64 :=
.seq NamedBody304_26 NamedBody304_43

def NamedBody304_45 : StackLang.HolProg 64 :=
.seq NamedBody304_25 NamedBody304_44

def NamedBody304_46 : StackLang.HolProg 64 :=
.seq NamedBody304_24 NamedBody304_45

def NamedBody304_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody304_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody304_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody304_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody304_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody304_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody304_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody304_57 : StackLang.HolProg 64 :=
.seq NamedBody304_55 NamedBody304_56

def NamedBody304_58 : StackLang.HolProg 64 :=
.seq NamedBody304_54 NamedBody304_57

def NamedBody304_59 : StackLang.HolProg 64 :=
.seq NamedBody304_53 NamedBody304_58

def NamedBody304_60 : StackLang.HolProg 64 :=
.seq NamedBody304_52 NamedBody304_59

def NamedBody304_61 : StackLang.HolProg 64 :=
.seq NamedBody304_51 NamedBody304_60

def NamedBody304_62 : StackLang.HolProg 64 :=
.seq NamedBody304_50 NamedBody304_61

def NamedBody304_63 : StackLang.HolProg 64 :=
.seq NamedBody304_49 NamedBody304_62

def NamedBody304_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody304_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody304_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody304_67 : StackLang.HolProg 64 :=
.seq NamedBody304_65 NamedBody304_66

def NamedBody304_68 : StackLang.HolProg 64 :=
.seq NamedBody304_64 NamedBody304_67

def NamedBody304_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody304_70 : StackLang.HolProg 64 :=
.seq NamedBody304_68 NamedBody304_69

def NamedBody304_71 : StackLang.HolProg 64 :=
.call (some (NamedBody304_63, 1, 304, 2)) (Sum.inl 75) (some (NamedBody304_70, 304, 3))

def NamedBody304_72 : StackLang.HolProg 64 :=
.seq NamedBody304_48 NamedBody304_71

def NamedBody304_73 : StackLang.HolProg 64 :=
.seq NamedBody304_47 NamedBody304_72

def NamedBody304_74 : StackLang.HolProg 64 :=
.seq NamedBody304_46 NamedBody304_73

def NamedBody304_75 : StackLang.HolProg 64 :=
.seq NamedBody304_17 NamedBody304_74

def NamedBody304_76 : StackLang.HolProg 64 :=
.seq NamedBody304_14 NamedBody304_75

def NamedBody304_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody304_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody304_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody304_80 : StackLang.HolProg 64 :=
.seq NamedBody304_78 NamedBody304_79

def NamedBody304_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 836#64)

def NamedBody304_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody304_84 : StackLang.HolProg 64 :=
.seq NamedBody304_82 NamedBody304_83

def NamedBody304_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody304_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody304_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody304_88 : StackLang.HolProg 64 :=
.seq NamedBody304_86 NamedBody304_87

def NamedBody304_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody304_88 NamedBody304_89

def NamedBody304_91 : StackLang.HolProg 64 :=
.seq NamedBody304_85 NamedBody304_90

def NamedBody304_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody304_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody304_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 7

def NamedBody304_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody304_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody304_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody304_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody304_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody304_101 : StackLang.HolProg 64 :=
.seq NamedBody304_99 NamedBody304_100

def NamedBody304_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody304_103 : StackLang.HolProg 64 :=
.seq NamedBody304_101 NamedBody304_102

def NamedBody304_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody304_105 : StackLang.HolProg 64 :=
.seq NamedBody304_103 NamedBody304_104

def NamedBody304_106 : StackLang.HolProg 64 :=
.seq NamedBody304_98 NamedBody304_105

def NamedBody304_107 : StackLang.HolProg 64 :=
.seq NamedBody304_97 NamedBody304_106

def NamedBody304_108 : StackLang.HolProg 64 :=
.seq NamedBody304_96 NamedBody304_107

def NamedBody304_109 : StackLang.HolProg 64 :=
.seq NamedBody304_95 NamedBody304_108

def NamedBody304_110 : StackLang.HolProg 64 :=
.seq NamedBody304_94 NamedBody304_109

def NamedBody304_111 : StackLang.HolProg 64 :=
.seq NamedBody304_93 NamedBody304_110

def NamedBody304_112 : StackLang.HolProg 64 :=
.seq NamedBody304_92 NamedBody304_111

def NamedBody304_113 : StackLang.HolProg 64 :=
.seq NamedBody304_91 NamedBody304_112

def NamedBody304_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody304_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody304_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody304_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody304_121 : StackLang.HolProg 64 :=
.seq NamedBody304_119 NamedBody304_120

def NamedBody304_122 : StackLang.HolProg 64 :=
.seq NamedBody304_118 NamedBody304_121

def NamedBody304_123 : StackLang.HolProg 64 :=
.seq NamedBody304_117 NamedBody304_122

def NamedBody304_124 : StackLang.HolProg 64 :=
.seq NamedBody304_116 NamedBody304_123

def NamedBody304_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody304_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody304_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody304_128 : StackLang.HolProg 64 :=
.seq NamedBody304_126 NamedBody304_127

def NamedBody304_129 : StackLang.HolProg 64 :=
.seq NamedBody304_125 NamedBody304_128

def NamedBody304_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_131 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody304_132 : StackLang.HolProg 64 :=
.seq NamedBody304_130 NamedBody304_131

def NamedBody304_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody304_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody304_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody304_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody304_137 : StackLang.HolProg 64 :=
.seq NamedBody304_135 NamedBody304_136

def NamedBody304_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 837#64)

def NamedBody304_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody304_141 : StackLang.HolProg 64 :=
.seq NamedBody304_139 NamedBody304_140

def NamedBody304_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody304_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody304_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody304_145 : StackLang.HolProg 64 :=
.seq NamedBody304_143 NamedBody304_144

def NamedBody304_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_147 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody304_145 NamedBody304_146

def NamedBody304_148 : StackLang.HolProg 64 :=
.seq NamedBody304_142 NamedBody304_147

def NamedBody304_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody304_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody304_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 6

def NamedBody304_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody304_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody304_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody304_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody304_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody304_158 : StackLang.HolProg 64 :=
.seq NamedBody304_156 NamedBody304_157

def NamedBody304_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody304_160 : StackLang.HolProg 64 :=
.seq NamedBody304_158 NamedBody304_159

def NamedBody304_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody304_162 : StackLang.HolProg 64 :=
.seq NamedBody304_160 NamedBody304_161

def NamedBody304_163 : StackLang.HolProg 64 :=
.seq NamedBody304_155 NamedBody304_162

def NamedBody304_164 : StackLang.HolProg 64 :=
.seq NamedBody304_154 NamedBody304_163

def NamedBody304_165 : StackLang.HolProg 64 :=
.seq NamedBody304_153 NamedBody304_164

def NamedBody304_166 : StackLang.HolProg 64 :=
.seq NamedBody304_152 NamedBody304_165

def NamedBody304_167 : StackLang.HolProg 64 :=
.seq NamedBody304_151 NamedBody304_166

def NamedBody304_168 : StackLang.HolProg 64 :=
.seq NamedBody304_150 NamedBody304_167

def NamedBody304_169 : StackLang.HolProg 64 :=
.seq NamedBody304_149 NamedBody304_168

def NamedBody304_170 : StackLang.HolProg 64 :=
.seq NamedBody304_148 NamedBody304_169

def NamedBody304_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody304_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody304_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody304_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody304_178 : StackLang.HolProg 64 :=
.seq NamedBody304_176 NamedBody304_177

def NamedBody304_179 : StackLang.HolProg 64 :=
.seq NamedBody304_175 NamedBody304_178

def NamedBody304_180 : StackLang.HolProg 64 :=
.seq NamedBody304_174 NamedBody304_179

def NamedBody304_181 : StackLang.HolProg 64 :=
.seq NamedBody304_173 NamedBody304_180

def NamedBody304_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody304_183 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody304_184 : StackLang.HolProg 64 :=
.seq NamedBody304_182 NamedBody304_183

def NamedBody304_185 : StackLang.HolProg 64 :=
.call (some (NamedBody304_181, 1, 304, 5)) (Sum.inl 76) (some (NamedBody304_184, 304, 6))

def NamedBody304_186 : StackLang.HolProg 64 :=
.seq NamedBody304_172 NamedBody304_185

def NamedBody304_187 : StackLang.HolProg 64 :=
.seq NamedBody304_171 NamedBody304_186

def NamedBody304_188 : StackLang.HolProg 64 :=
.seq NamedBody304_170 NamedBody304_187

def NamedBody304_189 : StackLang.HolProg 64 :=
.seq NamedBody304_141 NamedBody304_188

def NamedBody304_190 : StackLang.HolProg 64 :=
.seq NamedBody304_138 NamedBody304_189

def NamedBody304_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody304_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody304_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody304_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody304_197 : StackLang.HolProg 64 :=
.seq NamedBody304_195 NamedBody304_196

def NamedBody304_198 : StackLang.HolProg 64 :=
.seq NamedBody304_194 NamedBody304_197

def NamedBody304_199 : StackLang.HolProg 64 :=
.seq NamedBody304_193 NamedBody304_198

def NamedBody304_200 : StackLang.HolProg 64 :=
.seq NamedBody304_192 NamedBody304_199

def NamedBody304_201 : StackLang.HolProg 64 :=
.seq NamedBody304_191 NamedBody304_200

def NamedBody304_202 : StackLang.HolProg 64 :=
.seq NamedBody304_190 NamedBody304_201

def NamedBody304_203 : StackLang.HolProg 64 :=
.seq NamedBody304_137 NamedBody304_202

def NamedBody304_204 : StackLang.HolProg 64 :=
.seq NamedBody304_134 NamedBody304_203

def NamedBody304_205 : StackLang.HolProg 64 :=
.seq NamedBody304_133 NamedBody304_204

def NamedBody304_206 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) NamedBody304_132 NamedBody304_205

def NamedBody304_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody304_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody304_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody304_210 : StackLang.HolProg 64 :=
.seq NamedBody304_208 NamedBody304_209

def NamedBody304_211 : StackLang.HolProg 64 :=
.seq NamedBody304_207 NamedBody304_210

def NamedBody304_212 : StackLang.HolProg 64 :=
.seq NamedBody304_206 NamedBody304_211

def NamedBody304_213 : StackLang.HolProg 64 :=
.seq NamedBody304_129 NamedBody304_212

def NamedBody304_214 : StackLang.HolProg 64 :=
.call (some (NamedBody304_124, 1, 304, 4)) (Sum.inl 303) (some (NamedBody304_213, 304, 7))

def NamedBody304_215 : StackLang.HolProg 64 :=
.seq NamedBody304_115 NamedBody304_214

def NamedBody304_216 : StackLang.HolProg 64 :=
.seq NamedBody304_114 NamedBody304_215

def NamedBody304_217 : StackLang.HolProg 64 :=
.seq NamedBody304_113 NamedBody304_216

def NamedBody304_218 : StackLang.HolProg 64 :=
.seq NamedBody304_84 NamedBody304_217

def NamedBody304_219 : StackLang.HolProg 64 :=
.seq NamedBody304_81 NamedBody304_218

def NamedBody304_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody304_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody304_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody304_223 : StackLang.HolProg 64 :=
.seq NamedBody304_221 NamedBody304_222

def NamedBody304_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 838#64)

def NamedBody304_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody304_227 : StackLang.HolProg 64 :=
.seq NamedBody304_225 NamedBody304_226

def NamedBody304_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody304_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody304_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody304_231 : StackLang.HolProg 64 :=
.seq NamedBody304_229 NamedBody304_230

def NamedBody304_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_233 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody304_231 NamedBody304_232

def NamedBody304_234 : StackLang.HolProg 64 :=
.seq NamedBody304_228 NamedBody304_233

def NamedBody304_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody304_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody304_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 9

def NamedBody304_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody304_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody304_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody304_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody304_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody304_244 : StackLang.HolProg 64 :=
.seq NamedBody304_242 NamedBody304_243

def NamedBody304_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody304_246 : StackLang.HolProg 64 :=
.seq NamedBody304_244 NamedBody304_245

def NamedBody304_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody304_248 : StackLang.HolProg 64 :=
.seq NamedBody304_246 NamedBody304_247

def NamedBody304_249 : StackLang.HolProg 64 :=
.seq NamedBody304_241 NamedBody304_248

def NamedBody304_250 : StackLang.HolProg 64 :=
.seq NamedBody304_240 NamedBody304_249

def NamedBody304_251 : StackLang.HolProg 64 :=
.seq NamedBody304_239 NamedBody304_250

def NamedBody304_252 : StackLang.HolProg 64 :=
.seq NamedBody304_238 NamedBody304_251

def NamedBody304_253 : StackLang.HolProg 64 :=
.seq NamedBody304_237 NamedBody304_252

def NamedBody304_254 : StackLang.HolProg 64 :=
.seq NamedBody304_236 NamedBody304_253

def NamedBody304_255 : StackLang.HolProg 64 :=
.seq NamedBody304_235 NamedBody304_254

def NamedBody304_256 : StackLang.HolProg 64 :=
.seq NamedBody304_234 NamedBody304_255

def NamedBody304_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody304_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody304_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody304_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody304_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody304_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody304_265 : StackLang.HolProg 64 :=
.seq NamedBody304_263 NamedBody304_264

def NamedBody304_266 : StackLang.HolProg 64 :=
.seq NamedBody304_262 NamedBody304_265

def NamedBody304_267 : StackLang.HolProg 64 :=
.seq NamedBody304_261 NamedBody304_266

def NamedBody304_268 : StackLang.HolProg 64 :=
.seq NamedBody304_260 NamedBody304_267

def NamedBody304_269 : StackLang.HolProg 64 :=
.seq NamedBody304_259 NamedBody304_268

def NamedBody304_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody304_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody304_272 : StackLang.HolProg 64 :=
.seq NamedBody304_270 NamedBody304_271

def NamedBody304_273 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody304_274 : StackLang.HolProg 64 :=
.seq NamedBody304_272 NamedBody304_273

def NamedBody304_275 : StackLang.HolProg 64 :=
.call (some (NamedBody304_269, 1, 304, 8)) (Sum.inl 76) (some (NamedBody304_274, 304, 9))

def NamedBody304_276 : StackLang.HolProg 64 :=
.seq NamedBody304_258 NamedBody304_275

def NamedBody304_277 : StackLang.HolProg 64 :=
.seq NamedBody304_257 NamedBody304_276

def NamedBody304_278 : StackLang.HolProg 64 :=
.seq NamedBody304_256 NamedBody304_277

def NamedBody304_279 : StackLang.HolProg 64 :=
.seq NamedBody304_227 NamedBody304_278

def NamedBody304_280 : StackLang.HolProg 64 :=
.seq NamedBody304_224 NamedBody304_279

def NamedBody304_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody304_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody304_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody304_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody304_285 : StackLang.HolProg 64 :=
.seq NamedBody304_283 NamedBody304_284

def NamedBody304_286 : StackLang.HolProg 64 :=
.seq NamedBody304_282 NamedBody304_285

def NamedBody304_287 : StackLang.HolProg 64 :=
.seq NamedBody304_281 NamedBody304_286

def NamedBody304_288 : StackLang.HolProg 64 :=
.seq NamedBody304_280 NamedBody304_287

def NamedBody304_289 : StackLang.HolProg 64 :=
.seq NamedBody304_223 NamedBody304_288

def NamedBody304_290 : StackLang.HolProg 64 :=
.seq NamedBody304_220 NamedBody304_289

def NamedBody304_291 : StackLang.HolProg 64 :=
.seq NamedBody304_219 NamedBody304_290

def NamedBody304_292 : StackLang.HolProg 64 :=
.seq NamedBody304_80 NamedBody304_291

def NamedBody304_293 : StackLang.HolProg 64 :=
.seq NamedBody304_77 NamedBody304_292

def NamedBody304_294 : StackLang.HolProg 64 :=
.seq NamedBody304_76 NamedBody304_293

def NamedBody304_295 : StackLang.HolProg 64 :=
.seq NamedBody304_13 NamedBody304_294

def NamedBody304_296 : StackLang.HolProg 64 :=
.seq NamedBody304_6 NamedBody304_295

def Named304 : Nat × StackLang.HolProg 64 := (304, NamedBody304_296)
theorem Named304_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed304 = Named304 := by
  kernel_rfl
#print axioms Named304_eq
end InitECandidate.Proofs.BackendStages
