import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed436
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody436_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody436_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody436_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody436_3 : StackLang.HolProg 64 :=
.seq NamedBody436_1 NamedBody436_2

def NamedBody436_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody436_3 NamedBody436_4

def NamedBody436_6 : StackLang.HolProg 64 :=
.seq NamedBody436_0 NamedBody436_5

def NamedBody436_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody436_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 24#64)

def NamedBody436_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody436_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody436_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody436_12 : StackLang.HolProg 64 :=
.seq NamedBody436_10 NamedBody436_11

def NamedBody436_13 : StackLang.HolProg 64 :=
.seq NamedBody436_9 NamedBody436_12

def NamedBody436_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1315#64)

def NamedBody436_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody436_17 : StackLang.HolProg 64 :=
.seq NamedBody436_15 NamedBody436_16

def NamedBody436_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody436_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody436_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody436_21 : StackLang.HolProg 64 :=
.seq NamedBody436_19 NamedBody436_20

def NamedBody436_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody436_21 NamedBody436_22

def NamedBody436_24 : StackLang.HolProg 64 :=
.seq NamedBody436_18 NamedBody436_23

def NamedBody436_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody436_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody436_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 436 3

def NamedBody436_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody436_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody436_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody436_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody436_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody436_34 : StackLang.HolProg 64 :=
.seq NamedBody436_32 NamedBody436_33

def NamedBody436_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody436_36 : StackLang.HolProg 64 :=
.seq NamedBody436_34 NamedBody436_35

def NamedBody436_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody436_38 : StackLang.HolProg 64 :=
.seq NamedBody436_36 NamedBody436_37

def NamedBody436_39 : StackLang.HolProg 64 :=
.seq NamedBody436_31 NamedBody436_38

def NamedBody436_40 : StackLang.HolProg 64 :=
.seq NamedBody436_30 NamedBody436_39

def NamedBody436_41 : StackLang.HolProg 64 :=
.seq NamedBody436_29 NamedBody436_40

def NamedBody436_42 : StackLang.HolProg 64 :=
.seq NamedBody436_28 NamedBody436_41

def NamedBody436_43 : StackLang.HolProg 64 :=
.seq NamedBody436_27 NamedBody436_42

def NamedBody436_44 : StackLang.HolProg 64 :=
.seq NamedBody436_26 NamedBody436_43

def NamedBody436_45 : StackLang.HolProg 64 :=
.seq NamedBody436_25 NamedBody436_44

def NamedBody436_46 : StackLang.HolProg 64 :=
.seq NamedBody436_24 NamedBody436_45

def NamedBody436_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody436_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody436_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody436_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody436_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody436_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody436_56 : StackLang.HolProg 64 :=
.seq NamedBody436_54 NamedBody436_55

def NamedBody436_57 : StackLang.HolProg 64 :=
.seq NamedBody436_53 NamedBody436_56

def NamedBody436_58 : StackLang.HolProg 64 :=
.seq NamedBody436_52 NamedBody436_57

def NamedBody436_59 : StackLang.HolProg 64 :=
.seq NamedBody436_51 NamedBody436_58

def NamedBody436_60 : StackLang.HolProg 64 :=
.seq NamedBody436_50 NamedBody436_59

def NamedBody436_61 : StackLang.HolProg 64 :=
.seq NamedBody436_49 NamedBody436_60

def NamedBody436_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody436_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody436_64 : StackLang.HolProg 64 :=
.seq NamedBody436_62 NamedBody436_63

def NamedBody436_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody436_66 : StackLang.HolProg 64 :=
.seq NamedBody436_64 NamedBody436_65

def NamedBody436_67 : StackLang.HolProg 64 :=
.call (some (NamedBody436_61, 1, 436, 2)) (Sum.inl 74) (some (NamedBody436_66, 436, 3))

def NamedBody436_68 : StackLang.HolProg 64 :=
.seq NamedBody436_48 NamedBody436_67

def NamedBody436_69 : StackLang.HolProg 64 :=
.seq NamedBody436_47 NamedBody436_68

def NamedBody436_70 : StackLang.HolProg 64 :=
.seq NamedBody436_46 NamedBody436_69

def NamedBody436_71 : StackLang.HolProg 64 :=
.seq NamedBody436_17 NamedBody436_70

def NamedBody436_72 : StackLang.HolProg 64 :=
.seq NamedBody436_14 NamedBody436_71

def NamedBody436_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody436_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody436_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody436_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody436_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody436_78 : StackLang.HolProg 64 :=
.seq NamedBody436_76 NamedBody436_77

def NamedBody436_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1316#64)

def NamedBody436_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody436_82 : StackLang.HolProg 64 :=
.seq NamedBody436_80 NamedBody436_81

def NamedBody436_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody436_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody436_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody436_86 : StackLang.HolProg 64 :=
.seq NamedBody436_84 NamedBody436_85

def NamedBody436_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody436_86 NamedBody436_87

def NamedBody436_89 : StackLang.HolProg 64 :=
.seq NamedBody436_83 NamedBody436_88

def NamedBody436_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody436_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody436_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 436 5

def NamedBody436_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody436_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody436_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody436_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody436_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody436_99 : StackLang.HolProg 64 :=
.seq NamedBody436_97 NamedBody436_98

def NamedBody436_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody436_101 : StackLang.HolProg 64 :=
.seq NamedBody436_99 NamedBody436_100

def NamedBody436_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody436_103 : StackLang.HolProg 64 :=
.seq NamedBody436_101 NamedBody436_102

def NamedBody436_104 : StackLang.HolProg 64 :=
.seq NamedBody436_96 NamedBody436_103

def NamedBody436_105 : StackLang.HolProg 64 :=
.seq NamedBody436_95 NamedBody436_104

def NamedBody436_106 : StackLang.HolProg 64 :=
.seq NamedBody436_94 NamedBody436_105

def NamedBody436_107 : StackLang.HolProg 64 :=
.seq NamedBody436_93 NamedBody436_106

def NamedBody436_108 : StackLang.HolProg 64 :=
.seq NamedBody436_92 NamedBody436_107

def NamedBody436_109 : StackLang.HolProg 64 :=
.seq NamedBody436_91 NamedBody436_108

def NamedBody436_110 : StackLang.HolProg 64 :=
.seq NamedBody436_90 NamedBody436_109

def NamedBody436_111 : StackLang.HolProg 64 :=
.seq NamedBody436_89 NamedBody436_110

def NamedBody436_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody436_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody436_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody436_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody436_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody436_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody436_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody436_122 : StackLang.HolProg 64 :=
.seq NamedBody436_120 NamedBody436_121

def NamedBody436_123 : StackLang.HolProg 64 :=
.seq NamedBody436_119 NamedBody436_122

def NamedBody436_124 : StackLang.HolProg 64 :=
.seq NamedBody436_118 NamedBody436_123

def NamedBody436_125 : StackLang.HolProg 64 :=
.seq NamedBody436_117 NamedBody436_124

def NamedBody436_126 : StackLang.HolProg 64 :=
.seq NamedBody436_116 NamedBody436_125

def NamedBody436_127 : StackLang.HolProg 64 :=
.seq NamedBody436_115 NamedBody436_126

def NamedBody436_128 : StackLang.HolProg 64 :=
.seq NamedBody436_114 NamedBody436_127

def NamedBody436_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody436_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody436_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody436_132 : StackLang.HolProg 64 :=
.seq NamedBody436_130 NamedBody436_131

def NamedBody436_133 : StackLang.HolProg 64 :=
.seq NamedBody436_129 NamedBody436_132

def NamedBody436_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody436_135 : StackLang.HolProg 64 :=
.seq NamedBody436_133 NamedBody436_134

def NamedBody436_136 : StackLang.HolProg 64 :=
.call (some (NamedBody436_128, 1, 436, 4)) (Sum.inl 74) (some (NamedBody436_135, 436, 5))

def NamedBody436_137 : StackLang.HolProg 64 :=
.seq NamedBody436_113 NamedBody436_136

def NamedBody436_138 : StackLang.HolProg 64 :=
.seq NamedBody436_112 NamedBody436_137

def NamedBody436_139 : StackLang.HolProg 64 :=
.seq NamedBody436_111 NamedBody436_138

def NamedBody436_140 : StackLang.HolProg 64 :=
.seq NamedBody436_82 NamedBody436_139

def NamedBody436_141 : StackLang.HolProg 64 :=
.seq NamedBody436_79 NamedBody436_140

def NamedBody436_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody436_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody436_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody436_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody436_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody436_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody436_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody436_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody436_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody436_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody436_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody436_157 : StackLang.HolProg 64 :=
.seq NamedBody436_155 NamedBody436_156

def NamedBody436_158 : StackLang.HolProg 64 :=
.seq NamedBody436_154 NamedBody436_157

def NamedBody436_159 : StackLang.HolProg 64 :=
.seq NamedBody436_153 NamedBody436_158

def NamedBody436_160 : StackLang.HolProg 64 :=
.seq NamedBody436_152 NamedBody436_159

def NamedBody436_161 : StackLang.HolProg 64 :=
.seq NamedBody436_151 NamedBody436_160

def NamedBody436_162 : StackLang.HolProg 64 :=
.seq NamedBody436_150 NamedBody436_161

def NamedBody436_163 : StackLang.HolProg 64 :=
.seq NamedBody436_149 NamedBody436_162

def NamedBody436_164 : StackLang.HolProg 64 :=
.seq NamedBody436_148 NamedBody436_163

def NamedBody436_165 : StackLang.HolProg 64 :=
.seq NamedBody436_147 NamedBody436_164

def NamedBody436_166 : StackLang.HolProg 64 :=
.seq NamedBody436_146 NamedBody436_165

def NamedBody436_167 : StackLang.HolProg 64 :=
.seq NamedBody436_145 NamedBody436_166

def NamedBody436_168 : StackLang.HolProg 64 :=
.seq NamedBody436_144 NamedBody436_167

def NamedBody436_169 : StackLang.HolProg 64 :=
.seq NamedBody436_143 NamedBody436_168

def NamedBody436_170 : StackLang.HolProg 64 :=
.seq NamedBody436_142 NamedBody436_169

def NamedBody436_171 : StackLang.HolProg 64 :=
.seq NamedBody436_141 NamedBody436_170

def NamedBody436_172 : StackLang.HolProg 64 :=
.seq NamedBody436_78 NamedBody436_171

def NamedBody436_173 : StackLang.HolProg 64 :=
.seq NamedBody436_75 NamedBody436_172

def NamedBody436_174 : StackLang.HolProg 64 :=
.seq NamedBody436_74 NamedBody436_173

def NamedBody436_175 : StackLang.HolProg 64 :=
.seq NamedBody436_73 NamedBody436_174

def NamedBody436_176 : StackLang.HolProg 64 :=
.seq NamedBody436_72 NamedBody436_175

def NamedBody436_177 : StackLang.HolProg 64 :=
.seq NamedBody436_13 NamedBody436_176

def NamedBody436_178 : StackLang.HolProg 64 :=
.seq NamedBody436_8 NamedBody436_177

def NamedBody436_179 : StackLang.HolProg 64 :=
.seq NamedBody436_7 NamedBody436_178

def NamedBody436_180 : StackLang.HolProg 64 :=
.seq NamedBody436_6 NamedBody436_179

def Named436 : Nat × StackLang.HolProg 64 := (436, NamedBody436_180)
theorem Named436_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed436 = Named436 := by
  kernel_rfl
#print axioms Named436_eq
end InitECandidate.Proofs.BackendStages
