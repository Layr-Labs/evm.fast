import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed392
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody392_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody392_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody392_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody392_3 : StackLang.HolProg 64 :=
.seq NamedBody392_1 NamedBody392_2

def NamedBody392_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody392_3 NamedBody392_4

def NamedBody392_6 : StackLang.HolProg 64 :=
.seq NamedBody392_0 NamedBody392_5

def NamedBody392_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody392_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody392_9 : StackLang.HolProg 64 :=
.seq NamedBody392_7 NamedBody392_8

def NamedBody392_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody392_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody392_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody392_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551424#64))

def NamedBody392_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 20#64)

def NamedBody392_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody392_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody392_18 : StackLang.HolProg 64 :=
.seq NamedBody392_16 NamedBody392_17

def NamedBody392_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1169#64)

def NamedBody392_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody392_22 : StackLang.HolProg 64 :=
.seq NamedBody392_20 NamedBody392_21

def NamedBody392_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody392_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody392_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody392_26 : StackLang.HolProg 64 :=
.seq NamedBody392_24 NamedBody392_25

def NamedBody392_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody392_26 NamedBody392_27

def NamedBody392_29 : StackLang.HolProg 64 :=
.seq NamedBody392_23 NamedBody392_28

def NamedBody392_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody392_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody392_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 392 3

def NamedBody392_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody392_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody392_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody392_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody392_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody392_39 : StackLang.HolProg 64 :=
.seq NamedBody392_37 NamedBody392_38

def NamedBody392_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody392_41 : StackLang.HolProg 64 :=
.seq NamedBody392_39 NamedBody392_40

def NamedBody392_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody392_43 : StackLang.HolProg 64 :=
.seq NamedBody392_41 NamedBody392_42

def NamedBody392_44 : StackLang.HolProg 64 :=
.seq NamedBody392_36 NamedBody392_43

def NamedBody392_45 : StackLang.HolProg 64 :=
.seq NamedBody392_35 NamedBody392_44

def NamedBody392_46 : StackLang.HolProg 64 :=
.seq NamedBody392_34 NamedBody392_45

def NamedBody392_47 : StackLang.HolProg 64 :=
.seq NamedBody392_33 NamedBody392_46

def NamedBody392_48 : StackLang.HolProg 64 :=
.seq NamedBody392_32 NamedBody392_47

def NamedBody392_49 : StackLang.HolProg 64 :=
.seq NamedBody392_31 NamedBody392_48

def NamedBody392_50 : StackLang.HolProg 64 :=
.seq NamedBody392_30 NamedBody392_49

def NamedBody392_51 : StackLang.HolProg 64 :=
.seq NamedBody392_29 NamedBody392_50

def NamedBody392_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody392_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody392_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody392_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody392_59 : StackLang.HolProg 64 :=
.seq NamedBody392_57 NamedBody392_58

def NamedBody392_60 : StackLang.HolProg 64 :=
.seq NamedBody392_56 NamedBody392_59

def NamedBody392_61 : StackLang.HolProg 64 :=
.seq NamedBody392_55 NamedBody392_60

def NamedBody392_62 : StackLang.HolProg 64 :=
.seq NamedBody392_54 NamedBody392_61

def NamedBody392_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody392_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody392_65 : StackLang.HolProg 64 :=
.seq NamedBody392_63 NamedBody392_64

def NamedBody392_66 : StackLang.HolProg 64 :=
.call (some (NamedBody392_62, 1, 392, 2)) (Sum.inl 77) (some (NamedBody392_65, 392, 3))

def NamedBody392_67 : StackLang.HolProg 64 :=
.seq NamedBody392_53 NamedBody392_66

def NamedBody392_68 : StackLang.HolProg 64 :=
.seq NamedBody392_52 NamedBody392_67

def NamedBody392_69 : StackLang.HolProg 64 :=
.seq NamedBody392_51 NamedBody392_68

def NamedBody392_70 : StackLang.HolProg 64 :=
.seq NamedBody392_22 NamedBody392_69

def NamedBody392_71 : StackLang.HolProg 64 :=
.seq NamedBody392_19 NamedBody392_70

def NamedBody392_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody392_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody392_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody392_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody392_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551424#64))

def NamedBody392_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 20#64)))

def NamedBody392_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody392_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1170#64)

def NamedBody392_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody392_84 : StackLang.HolProg 64 :=
.seq NamedBody392_82 NamedBody392_83

def NamedBody392_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody392_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody392_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody392_88 : StackLang.HolProg 64 :=
.seq NamedBody392_86 NamedBody392_87

def NamedBody392_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody392_88 NamedBody392_89

def NamedBody392_91 : StackLang.HolProg 64 :=
.seq NamedBody392_85 NamedBody392_90

def NamedBody392_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody392_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody392_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 392 5

def NamedBody392_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody392_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody392_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody392_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody392_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody392_101 : StackLang.HolProg 64 :=
.seq NamedBody392_99 NamedBody392_100

def NamedBody392_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody392_103 : StackLang.HolProg 64 :=
.seq NamedBody392_101 NamedBody392_102

def NamedBody392_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody392_105 : StackLang.HolProg 64 :=
.seq NamedBody392_103 NamedBody392_104

def NamedBody392_106 : StackLang.HolProg 64 :=
.seq NamedBody392_98 NamedBody392_105

def NamedBody392_107 : StackLang.HolProg 64 :=
.seq NamedBody392_97 NamedBody392_106

def NamedBody392_108 : StackLang.HolProg 64 :=
.seq NamedBody392_96 NamedBody392_107

def NamedBody392_109 : StackLang.HolProg 64 :=
.seq NamedBody392_95 NamedBody392_108

def NamedBody392_110 : StackLang.HolProg 64 :=
.seq NamedBody392_94 NamedBody392_109

def NamedBody392_111 : StackLang.HolProg 64 :=
.seq NamedBody392_93 NamedBody392_110

def NamedBody392_112 : StackLang.HolProg 64 :=
.seq NamedBody392_92 NamedBody392_111

def NamedBody392_113 : StackLang.HolProg 64 :=
.seq NamedBody392_91 NamedBody392_112

def NamedBody392_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody392_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody392_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody392_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody392_121 : StackLang.HolProg 64 :=
.seq NamedBody392_119 NamedBody392_120

def NamedBody392_122 : StackLang.HolProg 64 :=
.seq NamedBody392_118 NamedBody392_121

def NamedBody392_123 : StackLang.HolProg 64 :=
.seq NamedBody392_117 NamedBody392_122

def NamedBody392_124 : StackLang.HolProg 64 :=
.seq NamedBody392_116 NamedBody392_123

def NamedBody392_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody392_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody392_127 : StackLang.HolProg 64 :=
.seq NamedBody392_125 NamedBody392_126

def NamedBody392_128 : StackLang.HolProg 64 :=
.call (some (NamedBody392_124, 1, 392, 4)) (Sum.inl 77) (some (NamedBody392_127, 392, 5))

def NamedBody392_129 : StackLang.HolProg 64 :=
.seq NamedBody392_115 NamedBody392_128

def NamedBody392_130 : StackLang.HolProg 64 :=
.seq NamedBody392_114 NamedBody392_129

def NamedBody392_131 : StackLang.HolProg 64 :=
.seq NamedBody392_113 NamedBody392_130

def NamedBody392_132 : StackLang.HolProg 64 :=
.seq NamedBody392_84 NamedBody392_131

def NamedBody392_133 : StackLang.HolProg 64 :=
.seq NamedBody392_81 NamedBody392_132

def NamedBody392_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody392_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody392_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody392_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody392_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551424#64))

def NamedBody392_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody392_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody392_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody392_142 : StackLang.HolProg 64 :=
.seq NamedBody392_140 NamedBody392_141

def NamedBody392_143 : StackLang.HolProg 64 :=
.seq NamedBody392_139 NamedBody392_142

def NamedBody392_144 : StackLang.HolProg 64 :=
.seq NamedBody392_138 NamedBody392_143

def NamedBody392_145 : StackLang.HolProg 64 :=
.seq NamedBody392_137 NamedBody392_144

def NamedBody392_146 : StackLang.HolProg 64 :=
.seq NamedBody392_136 NamedBody392_145

def NamedBody392_147 : StackLang.HolProg 64 :=
.seq NamedBody392_135 NamedBody392_146

def NamedBody392_148 : StackLang.HolProg 64 :=
.seq NamedBody392_134 NamedBody392_147

def NamedBody392_149 : StackLang.HolProg 64 :=
.seq NamedBody392_133 NamedBody392_148

def NamedBody392_150 : StackLang.HolProg 64 :=
.seq NamedBody392_80 NamedBody392_149

def NamedBody392_151 : StackLang.HolProg 64 :=
.seq NamedBody392_79 NamedBody392_150

def NamedBody392_152 : StackLang.HolProg 64 :=
.seq NamedBody392_78 NamedBody392_151

def NamedBody392_153 : StackLang.HolProg 64 :=
.seq NamedBody392_77 NamedBody392_152

def NamedBody392_154 : StackLang.HolProg 64 :=
.seq NamedBody392_76 NamedBody392_153

def NamedBody392_155 : StackLang.HolProg 64 :=
.seq NamedBody392_75 NamedBody392_154

def NamedBody392_156 : StackLang.HolProg 64 :=
.seq NamedBody392_74 NamedBody392_155

def NamedBody392_157 : StackLang.HolProg 64 :=
.seq NamedBody392_73 NamedBody392_156

def NamedBody392_158 : StackLang.HolProg 64 :=
.seq NamedBody392_72 NamedBody392_157

def NamedBody392_159 : StackLang.HolProg 64 :=
.seq NamedBody392_71 NamedBody392_158

def NamedBody392_160 : StackLang.HolProg 64 :=
.seq NamedBody392_18 NamedBody392_159

def NamedBody392_161 : StackLang.HolProg 64 :=
.seq NamedBody392_15 NamedBody392_160

def NamedBody392_162 : StackLang.HolProg 64 :=
.seq NamedBody392_14 NamedBody392_161

def NamedBody392_163 : StackLang.HolProg 64 :=
.seq NamedBody392_13 NamedBody392_162

def NamedBody392_164 : StackLang.HolProg 64 :=
.seq NamedBody392_12 NamedBody392_163

def NamedBody392_165 : StackLang.HolProg 64 :=
.seq NamedBody392_11 NamedBody392_164

def NamedBody392_166 : StackLang.HolProg 64 :=
.seq NamedBody392_10 NamedBody392_165

def NamedBody392_167 : StackLang.HolProg 64 :=
.seq NamedBody392_9 NamedBody392_166

def NamedBody392_168 : StackLang.HolProg 64 :=
.seq NamedBody392_6 NamedBody392_167

def Named392 : Nat × StackLang.HolProg 64 := (392, NamedBody392_168)
theorem Named392_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed392 = Named392 := by
  kernel_rfl
#print axioms Named392_eq
end InitECandidate.Proofs.BackendStages
