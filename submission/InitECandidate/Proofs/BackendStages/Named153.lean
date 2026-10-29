import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed153
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody153_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody153_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody153_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody153_3 : StackLang.HolProg 64 :=
.seq NamedBody153_1 NamedBody153_2

def NamedBody153_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody153_3 NamedBody153_4

def NamedBody153_6 : StackLang.HolProg 64 :=
.seq NamedBody153_0 NamedBody153_5

def NamedBody153_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody153_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody153_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody153_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody153_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551568#64))

def NamedBody153_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody153_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody153_16 : StackLang.HolProg 64 :=
.seq NamedBody153_14 NamedBody153_15

def NamedBody153_17 : StackLang.HolProg 64 :=
.seq NamedBody153_13 NamedBody153_16

def NamedBody153_18 : StackLang.HolProg 64 :=
.seq NamedBody153_12 NamedBody153_17

def NamedBody153_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 129#64)

def NamedBody153_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_22 : StackLang.HolProg 64 :=
.seq NamedBody153_20 NamedBody153_21

def NamedBody153_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody153_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody153_26 : StackLang.HolProg 64 :=
.seq NamedBody153_24 NamedBody153_25

def NamedBody153_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody153_26 NamedBody153_27

def NamedBody153_29 : StackLang.HolProg 64 :=
.seq NamedBody153_23 NamedBody153_28

def NamedBody153_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody153_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 3

def NamedBody153_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody153_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody153_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody153_39 : StackLang.HolProg 64 :=
.seq NamedBody153_37 NamedBody153_38

def NamedBody153_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody153_41 : StackLang.HolProg 64 :=
.seq NamedBody153_39 NamedBody153_40

def NamedBody153_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_43 : StackLang.HolProg 64 :=
.seq NamedBody153_41 NamedBody153_42

def NamedBody153_44 : StackLang.HolProg 64 :=
.seq NamedBody153_36 NamedBody153_43

def NamedBody153_45 : StackLang.HolProg 64 :=
.seq NamedBody153_35 NamedBody153_44

def NamedBody153_46 : StackLang.HolProg 64 :=
.seq NamedBody153_34 NamedBody153_45

def NamedBody153_47 : StackLang.HolProg 64 :=
.seq NamedBody153_33 NamedBody153_46

def NamedBody153_48 : StackLang.HolProg 64 :=
.seq NamedBody153_32 NamedBody153_47

def NamedBody153_49 : StackLang.HolProg 64 :=
.seq NamedBody153_31 NamedBody153_48

def NamedBody153_50 : StackLang.HolProg 64 :=
.seq NamedBody153_30 NamedBody153_49

def NamedBody153_51 : StackLang.HolProg 64 :=
.seq NamedBody153_29 NamedBody153_50

def NamedBody153_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_60 : StackLang.HolProg 64 :=
.seq NamedBody153_58 NamedBody153_59

def NamedBody153_61 : StackLang.HolProg 64 :=
.seq NamedBody153_57 NamedBody153_60

def NamedBody153_62 : StackLang.HolProg 64 :=
.seq NamedBody153_56 NamedBody153_61

def NamedBody153_63 : StackLang.HolProg 64 :=
.seq NamedBody153_55 NamedBody153_62

def NamedBody153_64 : StackLang.HolProg 64 :=
.seq NamedBody153_54 NamedBody153_63

def NamedBody153_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_67 : StackLang.HolProg 64 :=
.seq NamedBody153_65 NamedBody153_66

def NamedBody153_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody153_69 : StackLang.HolProg 64 :=
.seq NamedBody153_67 NamedBody153_68

def NamedBody153_70 : StackLang.HolProg 64 :=
.call (some (NamedBody153_64, 1, 153, 2)) (Sum.inl 150) (some (NamedBody153_69, 153, 3))

def NamedBody153_71 : StackLang.HolProg 64 :=
.seq NamedBody153_53 NamedBody153_70

def NamedBody153_72 : StackLang.HolProg 64 :=
.seq NamedBody153_52 NamedBody153_71

def NamedBody153_73 : StackLang.HolProg 64 :=
.seq NamedBody153_51 NamedBody153_72

def NamedBody153_74 : StackLang.HolProg 64 :=
.seq NamedBody153_22 NamedBody153_73

def NamedBody153_75 : StackLang.HolProg 64 :=
.seq NamedBody153_19 NamedBody153_74

def NamedBody153_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody153_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody153_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody153_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody153_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody153_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551568#64))

def NamedBody153_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody153_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody153_92 : StackLang.HolProg 64 :=
.seq NamedBody153_90 NamedBody153_91

def NamedBody153_93 : StackLang.HolProg 64 :=
.seq NamedBody153_89 NamedBody153_92

def NamedBody153_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 130#64)

def NamedBody153_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_97 : StackLang.HolProg 64 :=
.seq NamedBody153_95 NamedBody153_96

def NamedBody153_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody153_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody153_101 : StackLang.HolProg 64 :=
.seq NamedBody153_99 NamedBody153_100

def NamedBody153_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody153_101 NamedBody153_102

def NamedBody153_104 : StackLang.HolProg 64 :=
.seq NamedBody153_98 NamedBody153_103

def NamedBody153_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody153_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 5

def NamedBody153_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody153_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody153_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody153_114 : StackLang.HolProg 64 :=
.seq NamedBody153_112 NamedBody153_113

def NamedBody153_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody153_116 : StackLang.HolProg 64 :=
.seq NamedBody153_114 NamedBody153_115

def NamedBody153_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_118 : StackLang.HolProg 64 :=
.seq NamedBody153_116 NamedBody153_117

def NamedBody153_119 : StackLang.HolProg 64 :=
.seq NamedBody153_111 NamedBody153_118

def NamedBody153_120 : StackLang.HolProg 64 :=
.seq NamedBody153_110 NamedBody153_119

def NamedBody153_121 : StackLang.HolProg 64 :=
.seq NamedBody153_109 NamedBody153_120

def NamedBody153_122 : StackLang.HolProg 64 :=
.seq NamedBody153_108 NamedBody153_121

def NamedBody153_123 : StackLang.HolProg 64 :=
.seq NamedBody153_107 NamedBody153_122

def NamedBody153_124 : StackLang.HolProg 64 :=
.seq NamedBody153_106 NamedBody153_123

def NamedBody153_125 : StackLang.HolProg 64 :=
.seq NamedBody153_105 NamedBody153_124

def NamedBody153_126 : StackLang.HolProg 64 :=
.seq NamedBody153_104 NamedBody153_125

def NamedBody153_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody153_135 : StackLang.HolProg 64 :=
.seq NamedBody153_133 NamedBody153_134

def NamedBody153_136 : StackLang.HolProg 64 :=
.seq NamedBody153_132 NamedBody153_135

def NamedBody153_137 : StackLang.HolProg 64 :=
.seq NamedBody153_131 NamedBody153_136

def NamedBody153_138 : StackLang.HolProg 64 :=
.seq NamedBody153_130 NamedBody153_137

def NamedBody153_139 : StackLang.HolProg 64 :=
.seq NamedBody153_129 NamedBody153_138

def NamedBody153_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody153_142 : StackLang.HolProg 64 :=
.seq NamedBody153_140 NamedBody153_141

def NamedBody153_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody153_144 : StackLang.HolProg 64 :=
.seq NamedBody153_142 NamedBody153_143

def NamedBody153_145 : StackLang.HolProg 64 :=
.call (some (NamedBody153_139, 1, 153, 4)) (Sum.inl 151) (some (NamedBody153_144, 153, 5))

def NamedBody153_146 : StackLang.HolProg 64 :=
.seq NamedBody153_128 NamedBody153_145

def NamedBody153_147 : StackLang.HolProg 64 :=
.seq NamedBody153_127 NamedBody153_146

def NamedBody153_148 : StackLang.HolProg 64 :=
.seq NamedBody153_126 NamedBody153_147

def NamedBody153_149 : StackLang.HolProg 64 :=
.seq NamedBody153_97 NamedBody153_148

def NamedBody153_150 : StackLang.HolProg 64 :=
.seq NamedBody153_94 NamedBody153_149

def NamedBody153_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody153_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody153_156 : StackLang.HolProg 64 :=
.seq NamedBody153_154 NamedBody153_155

def NamedBody153_157 : StackLang.HolProg 64 :=
.seq NamedBody153_153 NamedBody153_156

def NamedBody153_158 : StackLang.HolProg 64 :=
.seq NamedBody153_152 NamedBody153_157

def NamedBody153_159 : StackLang.HolProg 64 :=
.seq NamedBody153_151 NamedBody153_158

def NamedBody153_160 : StackLang.HolProg 64 :=
.seq NamedBody153_150 NamedBody153_159

def NamedBody153_161 : StackLang.HolProg 64 :=
.seq NamedBody153_93 NamedBody153_160

def NamedBody153_162 : StackLang.HolProg 64 :=
.seq NamedBody153_88 NamedBody153_161

def NamedBody153_163 : StackLang.HolProg 64 :=
.seq NamedBody153_87 NamedBody153_162

def NamedBody153_164 : StackLang.HolProg 64 :=
.seq NamedBody153_86 NamedBody153_163

def NamedBody153_165 : StackLang.HolProg 64 :=
.seq NamedBody153_85 NamedBody153_164

def NamedBody153_166 : StackLang.HolProg 64 :=
.seq NamedBody153_84 NamedBody153_165

def NamedBody153_167 : StackLang.HolProg 64 :=
.seq NamedBody153_83 NamedBody153_166

def NamedBody153_168 : StackLang.HolProg 64 :=
.seq NamedBody153_82 NamedBody153_167

def NamedBody153_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody153_172 : StackLang.HolProg 64 :=
.seq NamedBody153_170 NamedBody153_171

def NamedBody153_173 : StackLang.HolProg 64 :=
.seq NamedBody153_169 NamedBody153_172

def NamedBody153_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody153_168 NamedBody153_173

def NamedBody153_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody153_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody153_179 : StackLang.HolProg 64 :=
.seq NamedBody153_177 NamedBody153_178

def NamedBody153_180 : StackLang.HolProg 64 :=
.seq NamedBody153_176 NamedBody153_179

def NamedBody153_181 : StackLang.HolProg 64 :=
.seq NamedBody153_175 NamedBody153_180

def NamedBody153_182 : StackLang.HolProg 64 :=
.seq NamedBody153_174 NamedBody153_181

def NamedBody153_183 : StackLang.HolProg 64 :=
.seq NamedBody153_81 NamedBody153_182

def NamedBody153_184 : StackLang.HolProg 64 :=
.seq NamedBody153_80 NamedBody153_183

def NamedBody153_185 : StackLang.HolProg 64 :=
.loop NamedBody153_184

def NamedBody153_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody153_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody153_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody153_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody153_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551560#64))

def NamedBody153_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 128#64)

def NamedBody153_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody153_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_197 : StackLang.HolProg 64 :=
.seq NamedBody153_195 NamedBody153_196

def NamedBody153_198 : StackLang.HolProg 64 :=
.seq NamedBody153_194 NamedBody153_197

def NamedBody153_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 131#64)

def NamedBody153_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_202 : StackLang.HolProg 64 :=
.seq NamedBody153_200 NamedBody153_201

def NamedBody153_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody153_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody153_206 : StackLang.HolProg 64 :=
.seq NamedBody153_204 NamedBody153_205

def NamedBody153_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_208 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody153_206 NamedBody153_207

def NamedBody153_209 : StackLang.HolProg 64 :=
.seq NamedBody153_203 NamedBody153_208

def NamedBody153_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody153_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 7

def NamedBody153_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody153_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody153_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody153_219 : StackLang.HolProg 64 :=
.seq NamedBody153_217 NamedBody153_218

def NamedBody153_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody153_221 : StackLang.HolProg 64 :=
.seq NamedBody153_219 NamedBody153_220

def NamedBody153_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_223 : StackLang.HolProg 64 :=
.seq NamedBody153_221 NamedBody153_222

def NamedBody153_224 : StackLang.HolProg 64 :=
.seq NamedBody153_216 NamedBody153_223

def NamedBody153_225 : StackLang.HolProg 64 :=
.seq NamedBody153_215 NamedBody153_224

def NamedBody153_226 : StackLang.HolProg 64 :=
.seq NamedBody153_214 NamedBody153_225

def NamedBody153_227 : StackLang.HolProg 64 :=
.seq NamedBody153_213 NamedBody153_226

def NamedBody153_228 : StackLang.HolProg 64 :=
.seq NamedBody153_212 NamedBody153_227

def NamedBody153_229 : StackLang.HolProg 64 :=
.seq NamedBody153_211 NamedBody153_228

def NamedBody153_230 : StackLang.HolProg 64 :=
.seq NamedBody153_210 NamedBody153_229

def NamedBody153_231 : StackLang.HolProg 64 :=
.seq NamedBody153_209 NamedBody153_230

def NamedBody153_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody153_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody153_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody153_243 : StackLang.HolProg 64 :=
.seq NamedBody153_241 NamedBody153_242

def NamedBody153_244 : StackLang.HolProg 64 :=
.seq NamedBody153_240 NamedBody153_243

def NamedBody153_245 : StackLang.HolProg 64 :=
.seq NamedBody153_239 NamedBody153_244

def NamedBody153_246 : StackLang.HolProg 64 :=
.seq NamedBody153_238 NamedBody153_245

def NamedBody153_247 : StackLang.HolProg 64 :=
.seq NamedBody153_237 NamedBody153_246

def NamedBody153_248 : StackLang.HolProg 64 :=
.seq NamedBody153_236 NamedBody153_247

def NamedBody153_249 : StackLang.HolProg 64 :=
.seq NamedBody153_235 NamedBody153_248

def NamedBody153_250 : StackLang.HolProg 64 :=
.seq NamedBody153_234 NamedBody153_249

def NamedBody153_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody153_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody153_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody153_256 : StackLang.HolProg 64 :=
.seq NamedBody153_254 NamedBody153_255

def NamedBody153_257 : StackLang.HolProg 64 :=
.seq NamedBody153_253 NamedBody153_256

def NamedBody153_258 : StackLang.HolProg 64 :=
.seq NamedBody153_252 NamedBody153_257

def NamedBody153_259 : StackLang.HolProg 64 :=
.seq NamedBody153_251 NamedBody153_258

def NamedBody153_260 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody153_261 : StackLang.HolProg 64 :=
.seq NamedBody153_259 NamedBody153_260

def NamedBody153_262 : StackLang.HolProg 64 :=
.call (some (NamedBody153_250, 1, 153, 6)) (Sum.inl 78) (some (NamedBody153_261, 153, 7))

def NamedBody153_263 : StackLang.HolProg 64 :=
.seq NamedBody153_233 NamedBody153_262

def NamedBody153_264 : StackLang.HolProg 64 :=
.seq NamedBody153_232 NamedBody153_263

def NamedBody153_265 : StackLang.HolProg 64 :=
.seq NamedBody153_231 NamedBody153_264

def NamedBody153_266 : StackLang.HolProg 64 :=
.seq NamedBody153_202 NamedBody153_265

def NamedBody153_267 : StackLang.HolProg 64 :=
.seq NamedBody153_199 NamedBody153_266

def NamedBody153_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody153_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody153_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody153_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551560#64))

def NamedBody153_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody153_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 132#64)

def NamedBody153_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_279 : StackLang.HolProg 64 :=
.seq NamedBody153_277 NamedBody153_278

def NamedBody153_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody153_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody153_283 : StackLang.HolProg 64 :=
.seq NamedBody153_281 NamedBody153_282

def NamedBody153_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_285 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody153_283 NamedBody153_284

def NamedBody153_286 : StackLang.HolProg 64 :=
.seq NamedBody153_280 NamedBody153_285

def NamedBody153_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody153_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 9

def NamedBody153_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody153_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody153_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody153_296 : StackLang.HolProg 64 :=
.seq NamedBody153_294 NamedBody153_295

def NamedBody153_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody153_298 : StackLang.HolProg 64 :=
.seq NamedBody153_296 NamedBody153_297

def NamedBody153_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_300 : StackLang.HolProg 64 :=
.seq NamedBody153_298 NamedBody153_299

def NamedBody153_301 : StackLang.HolProg 64 :=
.seq NamedBody153_293 NamedBody153_300

def NamedBody153_302 : StackLang.HolProg 64 :=
.seq NamedBody153_292 NamedBody153_301

def NamedBody153_303 : StackLang.HolProg 64 :=
.seq NamedBody153_291 NamedBody153_302

def NamedBody153_304 : StackLang.HolProg 64 :=
.seq NamedBody153_290 NamedBody153_303

def NamedBody153_305 : StackLang.HolProg 64 :=
.seq NamedBody153_289 NamedBody153_304

def NamedBody153_306 : StackLang.HolProg 64 :=
.seq NamedBody153_288 NamedBody153_305

def NamedBody153_307 : StackLang.HolProg 64 :=
.seq NamedBody153_287 NamedBody153_306

def NamedBody153_308 : StackLang.HolProg 64 :=
.seq NamedBody153_286 NamedBody153_307

def NamedBody153_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody153_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_319 : StackLang.HolProg 64 :=
.seq NamedBody153_317 NamedBody153_318

def NamedBody153_320 : StackLang.HolProg 64 :=
.seq NamedBody153_316 NamedBody153_319

def NamedBody153_321 : StackLang.HolProg 64 :=
.seq NamedBody153_315 NamedBody153_320

def NamedBody153_322 : StackLang.HolProg 64 :=
.seq NamedBody153_314 NamedBody153_321

def NamedBody153_323 : StackLang.HolProg 64 :=
.seq NamedBody153_313 NamedBody153_322

def NamedBody153_324 : StackLang.HolProg 64 :=
.seq NamedBody153_312 NamedBody153_323

def NamedBody153_325 : StackLang.HolProg 64 :=
.seq NamedBody153_311 NamedBody153_324

def NamedBody153_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody153_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_330 : StackLang.HolProg 64 :=
.seq NamedBody153_328 NamedBody153_329

def NamedBody153_331 : StackLang.HolProg 64 :=
.seq NamedBody153_327 NamedBody153_330

def NamedBody153_332 : StackLang.HolProg 64 :=
.seq NamedBody153_326 NamedBody153_331

def NamedBody153_333 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody153_334 : StackLang.HolProg 64 :=
.seq NamedBody153_332 NamedBody153_333

def NamedBody153_335 : StackLang.HolProg 64 :=
.call (some (NamedBody153_325, 1, 153, 8)) (Sum.inl 77) (some (NamedBody153_334, 153, 9))

def NamedBody153_336 : StackLang.HolProg 64 :=
.seq NamedBody153_310 NamedBody153_335

def NamedBody153_337 : StackLang.HolProg 64 :=
.seq NamedBody153_309 NamedBody153_336

def NamedBody153_338 : StackLang.HolProg 64 :=
.seq NamedBody153_308 NamedBody153_337

def NamedBody153_339 : StackLang.HolProg 64 :=
.seq NamedBody153_279 NamedBody153_338

def NamedBody153_340 : StackLang.HolProg 64 :=
.seq NamedBody153_276 NamedBody153_339

def NamedBody153_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody153_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody153_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody153_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551560#64))

def NamedBody153_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody153_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def NamedBody153_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody153_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def NamedBody153_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 56#64)

def NamedBody153_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def NamedBody153_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_356 : StackLang.HolProg 64 :=
.seq NamedBody153_354 NamedBody153_355

def NamedBody153_357 : StackLang.HolProg 64 :=
.seq NamedBody153_353 NamedBody153_356

def NamedBody153_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_360 : StackLang.HolProg 64 :=
.seq NamedBody153_358 NamedBody153_359

def NamedBody153_361 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody153_357 NamedBody153_360

def NamedBody153_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551560#64))

def NamedBody153_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody153_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def NamedBody153_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody153_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 133#64)

def NamedBody153_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_373 : StackLang.HolProg 64 :=
.seq NamedBody153_371 NamedBody153_372

def NamedBody153_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody153_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody153_377 : StackLang.HolProg 64 :=
.seq NamedBody153_375 NamedBody153_376

def NamedBody153_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_379 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody153_377 NamedBody153_378

def NamedBody153_380 : StackLang.HolProg 64 :=
.seq NamedBody153_374 NamedBody153_379

def NamedBody153_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody153_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 11

def NamedBody153_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody153_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody153_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody153_390 : StackLang.HolProg 64 :=
.seq NamedBody153_388 NamedBody153_389

def NamedBody153_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody153_392 : StackLang.HolProg 64 :=
.seq NamedBody153_390 NamedBody153_391

def NamedBody153_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_394 : StackLang.HolProg 64 :=
.seq NamedBody153_392 NamedBody153_393

def NamedBody153_395 : StackLang.HolProg 64 :=
.seq NamedBody153_387 NamedBody153_394

def NamedBody153_396 : StackLang.HolProg 64 :=
.seq NamedBody153_386 NamedBody153_395

def NamedBody153_397 : StackLang.HolProg 64 :=
.seq NamedBody153_385 NamedBody153_396

def NamedBody153_398 : StackLang.HolProg 64 :=
.seq NamedBody153_384 NamedBody153_397

def NamedBody153_399 : StackLang.HolProg 64 :=
.seq NamedBody153_383 NamedBody153_398

def NamedBody153_400 : StackLang.HolProg 64 :=
.seq NamedBody153_382 NamedBody153_399

def NamedBody153_401 : StackLang.HolProg 64 :=
.seq NamedBody153_381 NamedBody153_400

def NamedBody153_402 : StackLang.HolProg 64 :=
.seq NamedBody153_380 NamedBody153_401

def NamedBody153_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_410 : StackLang.HolProg 64 :=
.seq NamedBody153_408 NamedBody153_409

def NamedBody153_411 : StackLang.HolProg 64 :=
.seq NamedBody153_407 NamedBody153_410

def NamedBody153_412 : StackLang.HolProg 64 :=
.seq NamedBody153_406 NamedBody153_411

def NamedBody153_413 : StackLang.HolProg 64 :=
.seq NamedBody153_405 NamedBody153_412

def NamedBody153_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_415 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody153_416 : StackLang.HolProg 64 :=
.seq NamedBody153_414 NamedBody153_415

def NamedBody153_417 : StackLang.HolProg 64 :=
.call (some (NamedBody153_413, 1, 153, 10)) (Sum.inl 89) (some (NamedBody153_416, 153, 11))

def NamedBody153_418 : StackLang.HolProg 64 :=
.seq NamedBody153_404 NamedBody153_417

def NamedBody153_419 : StackLang.HolProg 64 :=
.seq NamedBody153_403 NamedBody153_418

def NamedBody153_420 : StackLang.HolProg 64 :=
.seq NamedBody153_402 NamedBody153_419

def NamedBody153_421 : StackLang.HolProg 64 :=
.seq NamedBody153_373 NamedBody153_420

def NamedBody153_422 : StackLang.HolProg 64 :=
.seq NamedBody153_370 NamedBody153_421

def NamedBody153_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody153_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody153_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody153_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551568#64))

def NamedBody153_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551560#64))

def NamedBody153_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 134#64)

def NamedBody153_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_434 : StackLang.HolProg 64 :=
.seq NamedBody153_432 NamedBody153_433

def NamedBody153_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody153_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody153_438 : StackLang.HolProg 64 :=
.seq NamedBody153_436 NamedBody153_437

def NamedBody153_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_440 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody153_438 NamedBody153_439

def NamedBody153_441 : StackLang.HolProg 64 :=
.seq NamedBody153_435 NamedBody153_440

def NamedBody153_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody153_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 13

def NamedBody153_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody153_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody153_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody153_451 : StackLang.HolProg 64 :=
.seq NamedBody153_449 NamedBody153_450

def NamedBody153_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody153_453 : StackLang.HolProg 64 :=
.seq NamedBody153_451 NamedBody153_452

def NamedBody153_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_455 : StackLang.HolProg 64 :=
.seq NamedBody153_453 NamedBody153_454

def NamedBody153_456 : StackLang.HolProg 64 :=
.seq NamedBody153_448 NamedBody153_455

def NamedBody153_457 : StackLang.HolProg 64 :=
.seq NamedBody153_447 NamedBody153_456

def NamedBody153_458 : StackLang.HolProg 64 :=
.seq NamedBody153_446 NamedBody153_457

def NamedBody153_459 : StackLang.HolProg 64 :=
.seq NamedBody153_445 NamedBody153_458

def NamedBody153_460 : StackLang.HolProg 64 :=
.seq NamedBody153_444 NamedBody153_459

def NamedBody153_461 : StackLang.HolProg 64 :=
.seq NamedBody153_443 NamedBody153_460

def NamedBody153_462 : StackLang.HolProg 64 :=
.seq NamedBody153_442 NamedBody153_461

def NamedBody153_463 : StackLang.HolProg 64 :=
.seq NamedBody153_441 NamedBody153_462

def NamedBody153_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_471 : StackLang.HolProg 64 :=
.seq NamedBody153_469 NamedBody153_470

def NamedBody153_472 : StackLang.HolProg 64 :=
.seq NamedBody153_468 NamedBody153_471

def NamedBody153_473 : StackLang.HolProg 64 :=
.seq NamedBody153_467 NamedBody153_472

def NamedBody153_474 : StackLang.HolProg 64 :=
.seq NamedBody153_466 NamedBody153_473

def NamedBody153_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody153_476 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody153_477 : StackLang.HolProg 64 :=
.seq NamedBody153_475 NamedBody153_476

def NamedBody153_478 : StackLang.HolProg 64 :=
.call (some (NamedBody153_474, 1, 153, 12)) (Sum.inl 151) (some (NamedBody153_477, 153, 13))

def NamedBody153_479 : StackLang.HolProg 64 :=
.seq NamedBody153_465 NamedBody153_478

def NamedBody153_480 : StackLang.HolProg 64 :=
.seq NamedBody153_464 NamedBody153_479

def NamedBody153_481 : StackLang.HolProg 64 :=
.seq NamedBody153_463 NamedBody153_480

def NamedBody153_482 : StackLang.HolProg 64 :=
.seq NamedBody153_434 NamedBody153_481

def NamedBody153_483 : StackLang.HolProg 64 :=
.seq NamedBody153_431 NamedBody153_482

def NamedBody153_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 128#64)

def NamedBody153_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody153_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody153_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody153_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551568#64))

def NamedBody153_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551560#64))

def NamedBody153_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody153_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 135#64)

def NamedBody153_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_499 : StackLang.HolProg 64 :=
.seq NamedBody153_497 NamedBody153_498

def NamedBody153_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody153_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody153_503 : StackLang.HolProg 64 :=
.seq NamedBody153_501 NamedBody153_502

def NamedBody153_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_505 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody153_503 NamedBody153_504

def NamedBody153_506 : StackLang.HolProg 64 :=
.seq NamedBody153_500 NamedBody153_505

def NamedBody153_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody153_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 15

def NamedBody153_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody153_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody153_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody153_516 : StackLang.HolProg 64 :=
.seq NamedBody153_514 NamedBody153_515

def NamedBody153_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody153_518 : StackLang.HolProg 64 :=
.seq NamedBody153_516 NamedBody153_517

def NamedBody153_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_520 : StackLang.HolProg 64 :=
.seq NamedBody153_518 NamedBody153_519

def NamedBody153_521 : StackLang.HolProg 64 :=
.seq NamedBody153_513 NamedBody153_520

def NamedBody153_522 : StackLang.HolProg 64 :=
.seq NamedBody153_512 NamedBody153_521

def NamedBody153_523 : StackLang.HolProg 64 :=
.seq NamedBody153_511 NamedBody153_522

def NamedBody153_524 : StackLang.HolProg 64 :=
.seq NamedBody153_510 NamedBody153_523

def NamedBody153_525 : StackLang.HolProg 64 :=
.seq NamedBody153_509 NamedBody153_524

def NamedBody153_526 : StackLang.HolProg 64 :=
.seq NamedBody153_508 NamedBody153_525

def NamedBody153_527 : StackLang.HolProg 64 :=
.seq NamedBody153_507 NamedBody153_526

def NamedBody153_528 : StackLang.HolProg 64 :=
.seq NamedBody153_506 NamedBody153_527

def NamedBody153_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_536 : StackLang.HolProg 64 :=
.seq NamedBody153_534 NamedBody153_535

def NamedBody153_537 : StackLang.HolProg 64 :=
.seq NamedBody153_533 NamedBody153_536

def NamedBody153_538 : StackLang.HolProg 64 :=
.seq NamedBody153_532 NamedBody153_537

def NamedBody153_539 : StackLang.HolProg 64 :=
.seq NamedBody153_531 NamedBody153_538

def NamedBody153_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_541 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody153_542 : StackLang.HolProg 64 :=
.seq NamedBody153_540 NamedBody153_541

def NamedBody153_543 : StackLang.HolProg 64 :=
.call (some (NamedBody153_539, 1, 153, 14)) (Sum.inl 151) (some (NamedBody153_542, 153, 15))

def NamedBody153_544 : StackLang.HolProg 64 :=
.seq NamedBody153_530 NamedBody153_543

def NamedBody153_545 : StackLang.HolProg 64 :=
.seq NamedBody153_529 NamedBody153_544

def NamedBody153_546 : StackLang.HolProg 64 :=
.seq NamedBody153_528 NamedBody153_545

def NamedBody153_547 : StackLang.HolProg 64 :=
.seq NamedBody153_499 NamedBody153_546

def NamedBody153_548 : StackLang.HolProg 64 :=
.seq NamedBody153_496 NamedBody153_547

def NamedBody153_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_551 : StackLang.HolProg 64 :=
.seq NamedBody153_549 NamedBody153_550

def NamedBody153_552 : StackLang.HolProg 64 :=
.seq NamedBody153_548 NamedBody153_551

def NamedBody153_553 : StackLang.HolProg 64 :=
.seq NamedBody153_495 NamedBody153_552

def NamedBody153_554 : StackLang.HolProg 64 :=
.seq NamedBody153_494 NamedBody153_553

def NamedBody153_555 : StackLang.HolProg 64 :=
.seq NamedBody153_493 NamedBody153_554

def NamedBody153_556 : StackLang.HolProg 64 :=
.seq NamedBody153_492 NamedBody153_555

def NamedBody153_557 : StackLang.HolProg 64 :=
.seq NamedBody153_491 NamedBody153_556

def NamedBody153_558 : StackLang.HolProg 64 :=
.seq NamedBody153_490 NamedBody153_557

def NamedBody153_559 : StackLang.HolProg 64 :=
.seq NamedBody153_489 NamedBody153_558

def NamedBody153_560 : StackLang.HolProg 64 :=
.seq NamedBody153_488 NamedBody153_559

def NamedBody153_561 : StackLang.HolProg 64 :=
.seq NamedBody153_487 NamedBody153_560

def NamedBody153_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody153_564 : StackLang.HolProg 64 :=
.seq NamedBody153_562 NamedBody153_563

def NamedBody153_565 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody153_561 NamedBody153_564

def NamedBody153_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody153_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody153_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody153_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551568#64))

def NamedBody153_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 136#64)

def NamedBody153_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_575 : StackLang.HolProg 64 :=
.seq NamedBody153_573 NamedBody153_574

def NamedBody153_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody153_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody153_579 : StackLang.HolProg 64 :=
.seq NamedBody153_577 NamedBody153_578

def NamedBody153_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_581 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody153_579 NamedBody153_580

def NamedBody153_582 : StackLang.HolProg 64 :=
.seq NamedBody153_576 NamedBody153_581

def NamedBody153_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody153_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody153_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 17

def NamedBody153_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody153_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody153_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody153_592 : StackLang.HolProg 64 :=
.seq NamedBody153_590 NamedBody153_591

def NamedBody153_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody153_594 : StackLang.HolProg 64 :=
.seq NamedBody153_592 NamedBody153_593

def NamedBody153_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_596 : StackLang.HolProg 64 :=
.seq NamedBody153_594 NamedBody153_595

def NamedBody153_597 : StackLang.HolProg 64 :=
.seq NamedBody153_589 NamedBody153_596

def NamedBody153_598 : StackLang.HolProg 64 :=
.seq NamedBody153_588 NamedBody153_597

def NamedBody153_599 : StackLang.HolProg 64 :=
.seq NamedBody153_587 NamedBody153_598

def NamedBody153_600 : StackLang.HolProg 64 :=
.seq NamedBody153_586 NamedBody153_599

def NamedBody153_601 : StackLang.HolProg 64 :=
.seq NamedBody153_585 NamedBody153_600

def NamedBody153_602 : StackLang.HolProg 64 :=
.seq NamedBody153_584 NamedBody153_601

def NamedBody153_603 : StackLang.HolProg 64 :=
.seq NamedBody153_583 NamedBody153_602

def NamedBody153_604 : StackLang.HolProg 64 :=
.seq NamedBody153_582 NamedBody153_603

def NamedBody153_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody153_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody153_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody153_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody153_612 : StackLang.HolProg 64 :=
.seq NamedBody153_610 NamedBody153_611

def NamedBody153_613 : StackLang.HolProg 64 :=
.seq NamedBody153_609 NamedBody153_612

def NamedBody153_614 : StackLang.HolProg 64 :=
.seq NamedBody153_608 NamedBody153_613

def NamedBody153_615 : StackLang.HolProg 64 :=
.seq NamedBody153_607 NamedBody153_614

def NamedBody153_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody153_617 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody153_618 : StackLang.HolProg 64 :=
.seq NamedBody153_616 NamedBody153_617

def NamedBody153_619 : StackLang.HolProg 64 :=
.call (some (NamedBody153_615, 1, 153, 16)) (Sum.inl 152) (some (NamedBody153_618, 153, 17))

def NamedBody153_620 : StackLang.HolProg 64 :=
.seq NamedBody153_606 NamedBody153_619

def NamedBody153_621 : StackLang.HolProg 64 :=
.seq NamedBody153_605 NamedBody153_620

def NamedBody153_622 : StackLang.HolProg 64 :=
.seq NamedBody153_604 NamedBody153_621

def NamedBody153_623 : StackLang.HolProg 64 :=
.seq NamedBody153_575 NamedBody153_622

def NamedBody153_624 : StackLang.HolProg 64 :=
.seq NamedBody153_572 NamedBody153_623

def NamedBody153_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody153_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody153_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody153_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody153_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody153_630 : StackLang.HolProg 64 :=
.seq NamedBody153_628 NamedBody153_629

def NamedBody153_631 : StackLang.HolProg 64 :=
.seq NamedBody153_627 NamedBody153_630

def NamedBody153_632 : StackLang.HolProg 64 :=
.seq NamedBody153_626 NamedBody153_631

def NamedBody153_633 : StackLang.HolProg 64 :=
.seq NamedBody153_625 NamedBody153_632

def NamedBody153_634 : StackLang.HolProg 64 :=
.seq NamedBody153_624 NamedBody153_633

def NamedBody153_635 : StackLang.HolProg 64 :=
.seq NamedBody153_571 NamedBody153_634

def NamedBody153_636 : StackLang.HolProg 64 :=
.seq NamedBody153_570 NamedBody153_635

def NamedBody153_637 : StackLang.HolProg 64 :=
.seq NamedBody153_569 NamedBody153_636

def NamedBody153_638 : StackLang.HolProg 64 :=
.seq NamedBody153_568 NamedBody153_637

def NamedBody153_639 : StackLang.HolProg 64 :=
.seq NamedBody153_567 NamedBody153_638

def NamedBody153_640 : StackLang.HolProg 64 :=
.seq NamedBody153_566 NamedBody153_639

def NamedBody153_641 : StackLang.HolProg 64 :=
.seq NamedBody153_565 NamedBody153_640

def NamedBody153_642 : StackLang.HolProg 64 :=
.seq NamedBody153_486 NamedBody153_641

def NamedBody153_643 : StackLang.HolProg 64 :=
.seq NamedBody153_485 NamedBody153_642

def NamedBody153_644 : StackLang.HolProg 64 :=
.seq NamedBody153_484 NamedBody153_643

def NamedBody153_645 : StackLang.HolProg 64 :=
.seq NamedBody153_483 NamedBody153_644

def NamedBody153_646 : StackLang.HolProg 64 :=
.seq NamedBody153_430 NamedBody153_645

def NamedBody153_647 : StackLang.HolProg 64 :=
.seq NamedBody153_429 NamedBody153_646

def NamedBody153_648 : StackLang.HolProg 64 :=
.seq NamedBody153_428 NamedBody153_647

def NamedBody153_649 : StackLang.HolProg 64 :=
.seq NamedBody153_427 NamedBody153_648

def NamedBody153_650 : StackLang.HolProg 64 :=
.seq NamedBody153_426 NamedBody153_649

def NamedBody153_651 : StackLang.HolProg 64 :=
.seq NamedBody153_425 NamedBody153_650

def NamedBody153_652 : StackLang.HolProg 64 :=
.seq NamedBody153_424 NamedBody153_651

def NamedBody153_653 : StackLang.HolProg 64 :=
.seq NamedBody153_423 NamedBody153_652

def NamedBody153_654 : StackLang.HolProg 64 :=
.seq NamedBody153_422 NamedBody153_653

def NamedBody153_655 : StackLang.HolProg 64 :=
.seq NamedBody153_369 NamedBody153_654

def NamedBody153_656 : StackLang.HolProg 64 :=
.seq NamedBody153_368 NamedBody153_655

def NamedBody153_657 : StackLang.HolProg 64 :=
.seq NamedBody153_367 NamedBody153_656

def NamedBody153_658 : StackLang.HolProg 64 :=
.seq NamedBody153_366 NamedBody153_657

def NamedBody153_659 : StackLang.HolProg 64 :=
.seq NamedBody153_365 NamedBody153_658

def NamedBody153_660 : StackLang.HolProg 64 :=
.seq NamedBody153_364 NamedBody153_659

def NamedBody153_661 : StackLang.HolProg 64 :=
.seq NamedBody153_363 NamedBody153_660

def NamedBody153_662 : StackLang.HolProg 64 :=
.seq NamedBody153_362 NamedBody153_661

def NamedBody153_663 : StackLang.HolProg 64 :=
.seq NamedBody153_361 NamedBody153_662

def NamedBody153_664 : StackLang.HolProg 64 :=
.seq NamedBody153_352 NamedBody153_663

def NamedBody153_665 : StackLang.HolProg 64 :=
.seq NamedBody153_351 NamedBody153_664

def NamedBody153_666 : StackLang.HolProg 64 :=
.seq NamedBody153_350 NamedBody153_665

def NamedBody153_667 : StackLang.HolProg 64 :=
.seq NamedBody153_349 NamedBody153_666

def NamedBody153_668 : StackLang.HolProg 64 :=
.seq NamedBody153_348 NamedBody153_667

def NamedBody153_669 : StackLang.HolProg 64 :=
.seq NamedBody153_347 NamedBody153_668

def NamedBody153_670 : StackLang.HolProg 64 :=
.seq NamedBody153_346 NamedBody153_669

def NamedBody153_671 : StackLang.HolProg 64 :=
.seq NamedBody153_345 NamedBody153_670

def NamedBody153_672 : StackLang.HolProg 64 :=
.seq NamedBody153_344 NamedBody153_671

def NamedBody153_673 : StackLang.HolProg 64 :=
.seq NamedBody153_343 NamedBody153_672

def NamedBody153_674 : StackLang.HolProg 64 :=
.seq NamedBody153_342 NamedBody153_673

def NamedBody153_675 : StackLang.HolProg 64 :=
.seq NamedBody153_341 NamedBody153_674

def NamedBody153_676 : StackLang.HolProg 64 :=
.seq NamedBody153_340 NamedBody153_675

def NamedBody153_677 : StackLang.HolProg 64 :=
.seq NamedBody153_275 NamedBody153_676

def NamedBody153_678 : StackLang.HolProg 64 :=
.seq NamedBody153_274 NamedBody153_677

def NamedBody153_679 : StackLang.HolProg 64 :=
.seq NamedBody153_273 NamedBody153_678

def NamedBody153_680 : StackLang.HolProg 64 :=
.seq NamedBody153_272 NamedBody153_679

def NamedBody153_681 : StackLang.HolProg 64 :=
.seq NamedBody153_271 NamedBody153_680

def NamedBody153_682 : StackLang.HolProg 64 :=
.seq NamedBody153_270 NamedBody153_681

def NamedBody153_683 : StackLang.HolProg 64 :=
.seq NamedBody153_269 NamedBody153_682

def NamedBody153_684 : StackLang.HolProg 64 :=
.seq NamedBody153_268 NamedBody153_683

def NamedBody153_685 : StackLang.HolProg 64 :=
.seq NamedBody153_267 NamedBody153_684

def NamedBody153_686 : StackLang.HolProg 64 :=
.seq NamedBody153_198 NamedBody153_685

def NamedBody153_687 : StackLang.HolProg 64 :=
.seq NamedBody153_193 NamedBody153_686

def NamedBody153_688 : StackLang.HolProg 64 :=
.seq NamedBody153_192 NamedBody153_687

def NamedBody153_689 : StackLang.HolProg 64 :=
.seq NamedBody153_191 NamedBody153_688

def NamedBody153_690 : StackLang.HolProg 64 :=
.seq NamedBody153_190 NamedBody153_689

def NamedBody153_691 : StackLang.HolProg 64 :=
.seq NamedBody153_189 NamedBody153_690

def NamedBody153_692 : StackLang.HolProg 64 :=
.seq NamedBody153_188 NamedBody153_691

def NamedBody153_693 : StackLang.HolProg 64 :=
.seq NamedBody153_187 NamedBody153_692

def NamedBody153_694 : StackLang.HolProg 64 :=
.seq NamedBody153_186 NamedBody153_693

def NamedBody153_695 : StackLang.HolProg 64 :=
.seq NamedBody153_185 NamedBody153_694

def NamedBody153_696 : StackLang.HolProg 64 :=
.seq NamedBody153_79 NamedBody153_695

def NamedBody153_697 : StackLang.HolProg 64 :=
.seq NamedBody153_78 NamedBody153_696

def NamedBody153_698 : StackLang.HolProg 64 :=
.seq NamedBody153_77 NamedBody153_697

def NamedBody153_699 : StackLang.HolProg 64 :=
.seq NamedBody153_76 NamedBody153_698

def NamedBody153_700 : StackLang.HolProg 64 :=
.seq NamedBody153_75 NamedBody153_699

def NamedBody153_701 : StackLang.HolProg 64 :=
.seq NamedBody153_18 NamedBody153_700

def NamedBody153_702 : StackLang.HolProg 64 :=
.seq NamedBody153_11 NamedBody153_701

def NamedBody153_703 : StackLang.HolProg 64 :=
.seq NamedBody153_10 NamedBody153_702

def NamedBody153_704 : StackLang.HolProg 64 :=
.seq NamedBody153_9 NamedBody153_703

def NamedBody153_705 : StackLang.HolProg 64 :=
.seq NamedBody153_8 NamedBody153_704

def NamedBody153_706 : StackLang.HolProg 64 :=
.seq NamedBody153_7 NamedBody153_705

def NamedBody153_707 : StackLang.HolProg 64 :=
.seq NamedBody153_6 NamedBody153_706

def Named153 : Nat × StackLang.HolProg 64 := (153, NamedBody153_707)
theorem Named153_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed153 = Named153 := by
  kernel_rfl
#print axioms Named153_eq
end InitECandidate.Proofs.BackendStages
