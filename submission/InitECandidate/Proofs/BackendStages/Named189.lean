import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed189
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody189_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody189_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody189_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody189_3 : StackLang.HolProg 64 :=
.seq NamedBody189_1 NamedBody189_2

def NamedBody189_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody189_3 NamedBody189_4

def NamedBody189_6 : StackLang.HolProg 64 :=
.seq NamedBody189_0 NamedBody189_5

def NamedBody189_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody189_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody189_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody189_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody189_11 : StackLang.HolProg 64 :=
.seq NamedBody189_9 NamedBody189_10

def NamedBody189_12 : StackLang.HolProg 64 :=
.seq NamedBody189_8 NamedBody189_11

def NamedBody189_13 : StackLang.HolProg 64 :=
.seq NamedBody189_7 NamedBody189_12

def NamedBody189_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 216#64)

def NamedBody189_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody189_17 : StackLang.HolProg 64 :=
.seq NamedBody189_15 NamedBody189_16

def NamedBody189_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody189_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody189_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody189_21 : StackLang.HolProg 64 :=
.seq NamedBody189_19 NamedBody189_20

def NamedBody189_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody189_21 NamedBody189_22

def NamedBody189_24 : StackLang.HolProg 64 :=
.seq NamedBody189_18 NamedBody189_23

def NamedBody189_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody189_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody189_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 189 3

def NamedBody189_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody189_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody189_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody189_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody189_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody189_34 : StackLang.HolProg 64 :=
.seq NamedBody189_32 NamedBody189_33

def NamedBody189_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody189_36 : StackLang.HolProg 64 :=
.seq NamedBody189_34 NamedBody189_35

def NamedBody189_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody189_38 : StackLang.HolProg 64 :=
.seq NamedBody189_36 NamedBody189_37

def NamedBody189_39 : StackLang.HolProg 64 :=
.seq NamedBody189_31 NamedBody189_38

def NamedBody189_40 : StackLang.HolProg 64 :=
.seq NamedBody189_30 NamedBody189_39

def NamedBody189_41 : StackLang.HolProg 64 :=
.seq NamedBody189_29 NamedBody189_40

def NamedBody189_42 : StackLang.HolProg 64 :=
.seq NamedBody189_28 NamedBody189_41

def NamedBody189_43 : StackLang.HolProg 64 :=
.seq NamedBody189_27 NamedBody189_42

def NamedBody189_44 : StackLang.HolProg 64 :=
.seq NamedBody189_26 NamedBody189_43

def NamedBody189_45 : StackLang.HolProg 64 :=
.seq NamedBody189_25 NamedBody189_44

def NamedBody189_46 : StackLang.HolProg 64 :=
.seq NamedBody189_24 NamedBody189_45

def NamedBody189_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody189_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody189_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody189_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody189_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody189_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody189_56 : StackLang.HolProg 64 :=
.seq NamedBody189_54 NamedBody189_55

def NamedBody189_57 : StackLang.HolProg 64 :=
.seq NamedBody189_53 NamedBody189_56

def NamedBody189_58 : StackLang.HolProg 64 :=
.seq NamedBody189_52 NamedBody189_57

def NamedBody189_59 : StackLang.HolProg 64 :=
.seq NamedBody189_51 NamedBody189_58

def NamedBody189_60 : StackLang.HolProg 64 :=
.seq NamedBody189_50 NamedBody189_59

def NamedBody189_61 : StackLang.HolProg 64 :=
.seq NamedBody189_49 NamedBody189_60

def NamedBody189_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody189_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody189_64 : StackLang.HolProg 64 :=
.seq NamedBody189_62 NamedBody189_63

def NamedBody189_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody189_66 : StackLang.HolProg 64 :=
.seq NamedBody189_64 NamedBody189_65

def NamedBody189_67 : StackLang.HolProg 64 :=
.call (some (NamedBody189_61, 1, 189, 2)) (Sum.inl 188) (some (NamedBody189_66, 189, 3))

def NamedBody189_68 : StackLang.HolProg 64 :=
.seq NamedBody189_48 NamedBody189_67

def NamedBody189_69 : StackLang.HolProg 64 :=
.seq NamedBody189_47 NamedBody189_68

def NamedBody189_70 : StackLang.HolProg 64 :=
.seq NamedBody189_46 NamedBody189_69

def NamedBody189_71 : StackLang.HolProg 64 :=
.seq NamedBody189_17 NamedBody189_70

def NamedBody189_72 : StackLang.HolProg 64 :=
.seq NamedBody189_14 NamedBody189_71

def NamedBody189_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody189_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody189_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody189_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody189_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody189_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 32#64))

def NamedBody189_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody189_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody189_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody189_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody189_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody189_87 : StackLang.HolProg 64 :=
.seq NamedBody189_85 NamedBody189_86

def NamedBody189_88 : StackLang.HolProg 64 :=
.seq NamedBody189_84 NamedBody189_87

def NamedBody189_89 : StackLang.HolProg 64 :=
.seq NamedBody189_83 NamedBody189_88

def NamedBody189_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 217#64)

def NamedBody189_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody189_93 : StackLang.HolProg 64 :=
.seq NamedBody189_91 NamedBody189_92

def NamedBody189_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody189_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody189_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody189_97 : StackLang.HolProg 64 :=
.seq NamedBody189_95 NamedBody189_96

def NamedBody189_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_99 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody189_97 NamedBody189_98

def NamedBody189_100 : StackLang.HolProg 64 :=
.seq NamedBody189_94 NamedBody189_99

def NamedBody189_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody189_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody189_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 189 5

def NamedBody189_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody189_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody189_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody189_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody189_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody189_110 : StackLang.HolProg 64 :=
.seq NamedBody189_108 NamedBody189_109

def NamedBody189_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody189_112 : StackLang.HolProg 64 :=
.seq NamedBody189_110 NamedBody189_111

def NamedBody189_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody189_114 : StackLang.HolProg 64 :=
.seq NamedBody189_112 NamedBody189_113

def NamedBody189_115 : StackLang.HolProg 64 :=
.seq NamedBody189_107 NamedBody189_114

def NamedBody189_116 : StackLang.HolProg 64 :=
.seq NamedBody189_106 NamedBody189_115

def NamedBody189_117 : StackLang.HolProg 64 :=
.seq NamedBody189_105 NamedBody189_116

def NamedBody189_118 : StackLang.HolProg 64 :=
.seq NamedBody189_104 NamedBody189_117

def NamedBody189_119 : StackLang.HolProg 64 :=
.seq NamedBody189_103 NamedBody189_118

def NamedBody189_120 : StackLang.HolProg 64 :=
.seq NamedBody189_102 NamedBody189_119

def NamedBody189_121 : StackLang.HolProg 64 :=
.seq NamedBody189_101 NamedBody189_120

def NamedBody189_122 : StackLang.HolProg 64 :=
.seq NamedBody189_100 NamedBody189_121

def NamedBody189_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody189_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody189_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody189_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody189_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody189_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody189_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody189_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody189_134 : StackLang.HolProg 64 :=
.seq NamedBody189_132 NamedBody189_133

def NamedBody189_135 : StackLang.HolProg 64 :=
.seq NamedBody189_131 NamedBody189_134

def NamedBody189_136 : StackLang.HolProg 64 :=
.seq NamedBody189_130 NamedBody189_135

def NamedBody189_137 : StackLang.HolProg 64 :=
.seq NamedBody189_129 NamedBody189_136

def NamedBody189_138 : StackLang.HolProg 64 :=
.seq NamedBody189_128 NamedBody189_137

def NamedBody189_139 : StackLang.HolProg 64 :=
.seq NamedBody189_127 NamedBody189_138

def NamedBody189_140 : StackLang.HolProg 64 :=
.seq NamedBody189_126 NamedBody189_139

def NamedBody189_141 : StackLang.HolProg 64 :=
.seq NamedBody189_125 NamedBody189_140

def NamedBody189_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody189_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody189_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody189_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody189_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody189_147 : StackLang.HolProg 64 :=
.seq NamedBody189_145 NamedBody189_146

def NamedBody189_148 : StackLang.HolProg 64 :=
.seq NamedBody189_144 NamedBody189_147

def NamedBody189_149 : StackLang.HolProg 64 :=
.seq NamedBody189_143 NamedBody189_148

def NamedBody189_150 : StackLang.HolProg 64 :=
.seq NamedBody189_142 NamedBody189_149

def NamedBody189_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody189_152 : StackLang.HolProg 64 :=
.seq NamedBody189_150 NamedBody189_151

def NamedBody189_153 : StackLang.HolProg 64 :=
.call (some (NamedBody189_141, 1, 189, 4)) (Sum.inl 77) (some (NamedBody189_152, 189, 5))

def NamedBody189_154 : StackLang.HolProg 64 :=
.seq NamedBody189_124 NamedBody189_153

def NamedBody189_155 : StackLang.HolProg 64 :=
.seq NamedBody189_123 NamedBody189_154

def NamedBody189_156 : StackLang.HolProg 64 :=
.seq NamedBody189_122 NamedBody189_155

def NamedBody189_157 : StackLang.HolProg 64 :=
.seq NamedBody189_93 NamedBody189_156

def NamedBody189_158 : StackLang.HolProg 64 :=
.seq NamedBody189_90 NamedBody189_157

def NamedBody189_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody189_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 40#64))

def NamedBody189_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody189_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody189_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody189_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody189_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody189_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody189_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody189_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody189_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody189_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody189_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody189_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody189_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody189_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 48#64))

def NamedBody189_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody189_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody189_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody189_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody189_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody189_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody189_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody189_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody189_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody189_201 : StackLang.HolProg 64 :=
.seq NamedBody189_199 NamedBody189_200

def NamedBody189_202 : StackLang.HolProg 64 :=
.seq NamedBody189_198 NamedBody189_201

def NamedBody189_203 : StackLang.HolProg 64 :=
.seq NamedBody189_197 NamedBody189_202

def NamedBody189_204 : StackLang.HolProg 64 :=
.seq NamedBody189_196 NamedBody189_203

def NamedBody189_205 : StackLang.HolProg 64 :=
.seq NamedBody189_195 NamedBody189_204

def NamedBody189_206 : StackLang.HolProg 64 :=
.seq NamedBody189_194 NamedBody189_205

def NamedBody189_207 : StackLang.HolProg 64 :=
.seq NamedBody189_193 NamedBody189_206

def NamedBody189_208 : StackLang.HolProg 64 :=
.seq NamedBody189_192 NamedBody189_207

def NamedBody189_209 : StackLang.HolProg 64 :=
.seq NamedBody189_191 NamedBody189_208

def NamedBody189_210 : StackLang.HolProg 64 :=
.seq NamedBody189_190 NamedBody189_209

def NamedBody189_211 : StackLang.HolProg 64 :=
.seq NamedBody189_189 NamedBody189_210

def NamedBody189_212 : StackLang.HolProg 64 :=
.seq NamedBody189_188 NamedBody189_211

def NamedBody189_213 : StackLang.HolProg 64 :=
.seq NamedBody189_187 NamedBody189_212

def NamedBody189_214 : StackLang.HolProg 64 :=
.seq NamedBody189_186 NamedBody189_213

def NamedBody189_215 : StackLang.HolProg 64 :=
.seq NamedBody189_185 NamedBody189_214

def NamedBody189_216 : StackLang.HolProg 64 :=
.seq NamedBody189_184 NamedBody189_215

def NamedBody189_217 : StackLang.HolProg 64 :=
.seq NamedBody189_183 NamedBody189_216

def NamedBody189_218 : StackLang.HolProg 64 :=
.seq NamedBody189_182 NamedBody189_217

def NamedBody189_219 : StackLang.HolProg 64 :=
.seq NamedBody189_181 NamedBody189_218

def NamedBody189_220 : StackLang.HolProg 64 :=
.seq NamedBody189_180 NamedBody189_219

def NamedBody189_221 : StackLang.HolProg 64 :=
.seq NamedBody189_179 NamedBody189_220

def NamedBody189_222 : StackLang.HolProg 64 :=
.seq NamedBody189_178 NamedBody189_221

def NamedBody189_223 : StackLang.HolProg 64 :=
.seq NamedBody189_177 NamedBody189_222

def NamedBody189_224 : StackLang.HolProg 64 :=
.seq NamedBody189_176 NamedBody189_223

def NamedBody189_225 : StackLang.HolProg 64 :=
.seq NamedBody189_175 NamedBody189_224

def NamedBody189_226 : StackLang.HolProg 64 :=
.seq NamedBody189_174 NamedBody189_225

def NamedBody189_227 : StackLang.HolProg 64 :=
.seq NamedBody189_173 NamedBody189_226

def NamedBody189_228 : StackLang.HolProg 64 :=
.seq NamedBody189_172 NamedBody189_227

def NamedBody189_229 : StackLang.HolProg 64 :=
.seq NamedBody189_171 NamedBody189_228

def NamedBody189_230 : StackLang.HolProg 64 :=
.seq NamedBody189_170 NamedBody189_229

def NamedBody189_231 : StackLang.HolProg 64 :=
.seq NamedBody189_169 NamedBody189_230

def NamedBody189_232 : StackLang.HolProg 64 :=
.seq NamedBody189_168 NamedBody189_231

def NamedBody189_233 : StackLang.HolProg 64 :=
.seq NamedBody189_167 NamedBody189_232

def NamedBody189_234 : StackLang.HolProg 64 :=
.seq NamedBody189_166 NamedBody189_233

def NamedBody189_235 : StackLang.HolProg 64 :=
.seq NamedBody189_165 NamedBody189_234

def NamedBody189_236 : StackLang.HolProg 64 :=
.seq NamedBody189_164 NamedBody189_235

def NamedBody189_237 : StackLang.HolProg 64 :=
.seq NamedBody189_163 NamedBody189_236

def NamedBody189_238 : StackLang.HolProg 64 :=
.seq NamedBody189_162 NamedBody189_237

def NamedBody189_239 : StackLang.HolProg 64 :=
.seq NamedBody189_161 NamedBody189_238

def NamedBody189_240 : StackLang.HolProg 64 :=
.seq NamedBody189_160 NamedBody189_239

def NamedBody189_241 : StackLang.HolProg 64 :=
.seq NamedBody189_159 NamedBody189_240

def NamedBody189_242 : StackLang.HolProg 64 :=
.seq NamedBody189_158 NamedBody189_241

def NamedBody189_243 : StackLang.HolProg 64 :=
.seq NamedBody189_89 NamedBody189_242

def NamedBody189_244 : StackLang.HolProg 64 :=
.seq NamedBody189_82 NamedBody189_243

def NamedBody189_245 : StackLang.HolProg 64 :=
.seq NamedBody189_81 NamedBody189_244

def NamedBody189_246 : StackLang.HolProg 64 :=
.seq NamedBody189_80 NamedBody189_245

def NamedBody189_247 : StackLang.HolProg 64 :=
.seq NamedBody189_79 NamedBody189_246

def NamedBody189_248 : StackLang.HolProg 64 :=
.seq NamedBody189_78 NamedBody189_247

def NamedBody189_249 : StackLang.HolProg 64 :=
.seq NamedBody189_77 NamedBody189_248

def NamedBody189_250 : StackLang.HolProg 64 :=
.seq NamedBody189_76 NamedBody189_249

def NamedBody189_251 : StackLang.HolProg 64 :=
.seq NamedBody189_75 NamedBody189_250

def NamedBody189_252 : StackLang.HolProg 64 :=
.seq NamedBody189_74 NamedBody189_251

def NamedBody189_253 : StackLang.HolProg 64 :=
.seq NamedBody189_73 NamedBody189_252

def NamedBody189_254 : StackLang.HolProg 64 :=
.seq NamedBody189_72 NamedBody189_253

def NamedBody189_255 : StackLang.HolProg 64 :=
.seq NamedBody189_13 NamedBody189_254

def NamedBody189_256 : StackLang.HolProg 64 :=
.seq NamedBody189_6 NamedBody189_255

def Named189 : Nat × StackLang.HolProg 64 := (189, NamedBody189_256)
theorem Named189_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed189 = Named189 := by
  kernel_rfl
#print axioms Named189_eq
end InitECandidate.Proofs.BackendStages
