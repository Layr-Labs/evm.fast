import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed366
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody366_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody366_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody366_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody366_3 : StackLang.HolProg 64 :=
.seq NamedBody366_1 NamedBody366_2

def NamedBody366_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody366_3 NamedBody366_4

def NamedBody366_6 : StackLang.HolProg 64 :=
.seq NamedBody366_0 NamedBody366_5

def NamedBody366_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody366_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 208#64))

def NamedBody366_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 216#64))

def NamedBody366_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody366_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody366_13 : StackLang.HolProg 64 :=
.seq NamedBody366_11 NamedBody366_12

def NamedBody366_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1061#64)

def NamedBody366_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody366_17 : StackLang.HolProg 64 :=
.seq NamedBody366_15 NamedBody366_16

def NamedBody366_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody366_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody366_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody366_21 : StackLang.HolProg 64 :=
.seq NamedBody366_19 NamedBody366_20

def NamedBody366_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody366_21 NamedBody366_22

def NamedBody366_24 : StackLang.HolProg 64 :=
.seq NamedBody366_18 NamedBody366_23

def NamedBody366_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody366_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody366_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 366 3

def NamedBody366_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody366_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody366_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody366_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody366_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody366_34 : StackLang.HolProg 64 :=
.seq NamedBody366_32 NamedBody366_33

def NamedBody366_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody366_36 : StackLang.HolProg 64 :=
.seq NamedBody366_34 NamedBody366_35

def NamedBody366_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody366_38 : StackLang.HolProg 64 :=
.seq NamedBody366_36 NamedBody366_37

def NamedBody366_39 : StackLang.HolProg 64 :=
.seq NamedBody366_31 NamedBody366_38

def NamedBody366_40 : StackLang.HolProg 64 :=
.seq NamedBody366_30 NamedBody366_39

def NamedBody366_41 : StackLang.HolProg 64 :=
.seq NamedBody366_29 NamedBody366_40

def NamedBody366_42 : StackLang.HolProg 64 :=
.seq NamedBody366_28 NamedBody366_41

def NamedBody366_43 : StackLang.HolProg 64 :=
.seq NamedBody366_27 NamedBody366_42

def NamedBody366_44 : StackLang.HolProg 64 :=
.seq NamedBody366_26 NamedBody366_43

def NamedBody366_45 : StackLang.HolProg 64 :=
.seq NamedBody366_25 NamedBody366_44

def NamedBody366_46 : StackLang.HolProg 64 :=
.seq NamedBody366_24 NamedBody366_45

def NamedBody366_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody366_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody366_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody366_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody366_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody366_55 : StackLang.HolProg 64 :=
.seq NamedBody366_53 NamedBody366_54

def NamedBody366_56 : StackLang.HolProg 64 :=
.seq NamedBody366_52 NamedBody366_55

def NamedBody366_57 : StackLang.HolProg 64 :=
.seq NamedBody366_51 NamedBody366_56

def NamedBody366_58 : StackLang.HolProg 64 :=
.seq NamedBody366_50 NamedBody366_57

def NamedBody366_59 : StackLang.HolProg 64 :=
.seq NamedBody366_49 NamedBody366_58

def NamedBody366_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody366_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody366_62 : StackLang.HolProg 64 :=
.seq NamedBody366_60 NamedBody366_61

def NamedBody366_63 : StackLang.HolProg 64 :=
.call (some (NamedBody366_59, 1, 366, 2)) (Sum.inl 360) (some (NamedBody366_62, 366, 3))

def NamedBody366_64 : StackLang.HolProg 64 :=
.seq NamedBody366_48 NamedBody366_63

def NamedBody366_65 : StackLang.HolProg 64 :=
.seq NamedBody366_47 NamedBody366_64

def NamedBody366_66 : StackLang.HolProg 64 :=
.seq NamedBody366_46 NamedBody366_65

def NamedBody366_67 : StackLang.HolProg 64 :=
.seq NamedBody366_17 NamedBody366_66

def NamedBody366_68 : StackLang.HolProg 64 :=
.seq NamedBody366_14 NamedBody366_67

def NamedBody366_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody366_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 272#64))

def NamedBody366_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 280#64))

def NamedBody366_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody366_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody366_76 : StackLang.HolProg 64 :=
.seq NamedBody366_74 NamedBody366_75

def NamedBody366_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1062#64)

def NamedBody366_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody366_80 : StackLang.HolProg 64 :=
.seq NamedBody366_78 NamedBody366_79

def NamedBody366_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody366_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody366_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody366_84 : StackLang.HolProg 64 :=
.seq NamedBody366_82 NamedBody366_83

def NamedBody366_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody366_84 NamedBody366_85

def NamedBody366_87 : StackLang.HolProg 64 :=
.seq NamedBody366_81 NamedBody366_86

def NamedBody366_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody366_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody366_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 366 5

def NamedBody366_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody366_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody366_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody366_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody366_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody366_97 : StackLang.HolProg 64 :=
.seq NamedBody366_95 NamedBody366_96

def NamedBody366_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody366_99 : StackLang.HolProg 64 :=
.seq NamedBody366_97 NamedBody366_98

def NamedBody366_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody366_101 : StackLang.HolProg 64 :=
.seq NamedBody366_99 NamedBody366_100

def NamedBody366_102 : StackLang.HolProg 64 :=
.seq NamedBody366_94 NamedBody366_101

def NamedBody366_103 : StackLang.HolProg 64 :=
.seq NamedBody366_93 NamedBody366_102

def NamedBody366_104 : StackLang.HolProg 64 :=
.seq NamedBody366_92 NamedBody366_103

def NamedBody366_105 : StackLang.HolProg 64 :=
.seq NamedBody366_91 NamedBody366_104

def NamedBody366_106 : StackLang.HolProg 64 :=
.seq NamedBody366_90 NamedBody366_105

def NamedBody366_107 : StackLang.HolProg 64 :=
.seq NamedBody366_89 NamedBody366_106

def NamedBody366_108 : StackLang.HolProg 64 :=
.seq NamedBody366_88 NamedBody366_107

def NamedBody366_109 : StackLang.HolProg 64 :=
.seq NamedBody366_87 NamedBody366_108

def NamedBody366_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody366_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody366_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody366_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody366_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody366_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody366_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody366_120 : StackLang.HolProg 64 :=
.seq NamedBody366_118 NamedBody366_119

def NamedBody366_121 : StackLang.HolProg 64 :=
.seq NamedBody366_117 NamedBody366_120

def NamedBody366_122 : StackLang.HolProg 64 :=
.seq NamedBody366_116 NamedBody366_121

def NamedBody366_123 : StackLang.HolProg 64 :=
.seq NamedBody366_115 NamedBody366_122

def NamedBody366_124 : StackLang.HolProg 64 :=
.seq NamedBody366_114 NamedBody366_123

def NamedBody366_125 : StackLang.HolProg 64 :=
.seq NamedBody366_113 NamedBody366_124

def NamedBody366_126 : StackLang.HolProg 64 :=
.seq NamedBody366_112 NamedBody366_125

def NamedBody366_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody366_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody366_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody366_130 : StackLang.HolProg 64 :=
.seq NamedBody366_128 NamedBody366_129

def NamedBody366_131 : StackLang.HolProg 64 :=
.seq NamedBody366_127 NamedBody366_130

def NamedBody366_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody366_133 : StackLang.HolProg 64 :=
.seq NamedBody366_131 NamedBody366_132

def NamedBody366_134 : StackLang.HolProg 64 :=
.call (some (NamedBody366_126, 1, 366, 4)) (Sum.inl 364) (some (NamedBody366_133, 366, 5))

def NamedBody366_135 : StackLang.HolProg 64 :=
.seq NamedBody366_111 NamedBody366_134

def NamedBody366_136 : StackLang.HolProg 64 :=
.seq NamedBody366_110 NamedBody366_135

def NamedBody366_137 : StackLang.HolProg 64 :=
.seq NamedBody366_109 NamedBody366_136

def NamedBody366_138 : StackLang.HolProg 64 :=
.seq NamedBody366_80 NamedBody366_137

def NamedBody366_139 : StackLang.HolProg 64 :=
.seq NamedBody366_77 NamedBody366_138

def NamedBody366_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody366_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 264#64))

def NamedBody366_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 33#64)

def NamedBody366_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody366_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody366_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody366_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 200#64))

def NamedBody366_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody366_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 655#64)))

def NamedBody366_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody366_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody366_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def NamedBody366_157 : StackLang.HolProg 64 :=
.seq NamedBody366_155 NamedBody366_156

def NamedBody366_158 : StackLang.HolProg 64 :=
.seq NamedBody366_154 NamedBody366_157

def NamedBody366_159 : StackLang.HolProg 64 :=
.seq NamedBody366_153 NamedBody366_158

def NamedBody366_160 : StackLang.HolProg 64 :=
.seq NamedBody366_152 NamedBody366_159

def NamedBody366_161 : StackLang.HolProg 64 :=
.seq NamedBody366_151 NamedBody366_160

def NamedBody366_162 : StackLang.HolProg 64 :=
.seq NamedBody366_150 NamedBody366_161

def NamedBody366_163 : StackLang.HolProg 64 :=
.seq NamedBody366_149 NamedBody366_162

def NamedBody366_164 : StackLang.HolProg 64 :=
.seq NamedBody366_148 NamedBody366_163

def NamedBody366_165 : StackLang.HolProg 64 :=
.seq NamedBody366_147 NamedBody366_164

def NamedBody366_166 : StackLang.HolProg 64 :=
.seq NamedBody366_146 NamedBody366_165

def NamedBody366_167 : StackLang.HolProg 64 :=
.seq NamedBody366_145 NamedBody366_166

def NamedBody366_168 : StackLang.HolProg 64 :=
.seq NamedBody366_144 NamedBody366_167

def NamedBody366_169 : StackLang.HolProg 64 :=
.seq NamedBody366_143 NamedBody366_168

def NamedBody366_170 : StackLang.HolProg 64 :=
.seq NamedBody366_142 NamedBody366_169

def NamedBody366_171 : StackLang.HolProg 64 :=
.seq NamedBody366_141 NamedBody366_170

def NamedBody366_172 : StackLang.HolProg 64 :=
.seq NamedBody366_140 NamedBody366_171

def NamedBody366_173 : StackLang.HolProg 64 :=
.seq NamedBody366_139 NamedBody366_172

def NamedBody366_174 : StackLang.HolProg 64 :=
.seq NamedBody366_76 NamedBody366_173

def NamedBody366_175 : StackLang.HolProg 64 :=
.seq NamedBody366_73 NamedBody366_174

def NamedBody366_176 : StackLang.HolProg 64 :=
.seq NamedBody366_72 NamedBody366_175

def NamedBody366_177 : StackLang.HolProg 64 :=
.seq NamedBody366_71 NamedBody366_176

def NamedBody366_178 : StackLang.HolProg 64 :=
.seq NamedBody366_70 NamedBody366_177

def NamedBody366_179 : StackLang.HolProg 64 :=
.seq NamedBody366_69 NamedBody366_178

def NamedBody366_180 : StackLang.HolProg 64 :=
.seq NamedBody366_68 NamedBody366_179

def NamedBody366_181 : StackLang.HolProg 64 :=
.seq NamedBody366_13 NamedBody366_180

def NamedBody366_182 : StackLang.HolProg 64 :=
.seq NamedBody366_10 NamedBody366_181

def NamedBody366_183 : StackLang.HolProg 64 :=
.seq NamedBody366_9 NamedBody366_182

def NamedBody366_184 : StackLang.HolProg 64 :=
.seq NamedBody366_8 NamedBody366_183

def NamedBody366_185 : StackLang.HolProg 64 :=
.seq NamedBody366_7 NamedBody366_184

def NamedBody366_186 : StackLang.HolProg 64 :=
.seq NamedBody366_6 NamedBody366_185

def Named366 : Nat × StackLang.HolProg 64 := (366, NamedBody366_186)
theorem Named366_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed366 = Named366 := by
  kernel_rfl
#print axioms Named366_eq
end InitECandidate.Proofs.BackendStages
