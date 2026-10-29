import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed719
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody719_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody719_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody719_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody719_3 : StackLang.HolProg 64 :=
.seq NamedBody719_1 NamedBody719_2

def NamedBody719_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody719_3 NamedBody719_4

def NamedBody719_6 : StackLang.HolProg 64 :=
.seq NamedBody719_0 NamedBody719_5

def NamedBody719_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody719_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody719_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody719_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody719_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 718

def NamedBody719_15 : StackLang.HolProg 64 :=
.seq NamedBody719_13 NamedBody719_14

def NamedBody719_16 : StackLang.HolProg 64 :=
.seq NamedBody719_12 NamedBody719_15

def NamedBody719_17 : StackLang.HolProg 64 :=
.seq NamedBody719_11 NamedBody719_16

def NamedBody719_18 : StackLang.HolProg 64 :=
.seq NamedBody719_10 NamedBody719_17

def NamedBody719_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) NamedBody719_18 NamedBody719_19

def NamedBody719_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody719_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody719_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 1873798617647539866#64)

def NamedBody719_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 5412103778470702295#64)

def NamedBody719_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 7239337960414712511#64)

def NamedBody719_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7435674573564081700#64)

def NamedBody719_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2210141511517208575#64)

def NamedBody719_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13402431016077863595#64)

def NamedBody719_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody719_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3231#64)

def NamedBody719_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody719_34 : StackLang.HolProg 64 :=
.seq NamedBody719_32 NamedBody719_33

def NamedBody719_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody719_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody719_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody719_38 : StackLang.HolProg 64 :=
.seq NamedBody719_36 NamedBody719_37

def NamedBody719_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody719_38 NamedBody719_39

def NamedBody719_41 : StackLang.HolProg 64 :=
.seq NamedBody719_35 NamedBody719_40

def NamedBody719_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody719_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody719_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 719 3

def NamedBody719_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody719_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody719_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody719_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody719_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody719_51 : StackLang.HolProg 64 :=
.seq NamedBody719_49 NamedBody719_50

def NamedBody719_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody719_53 : StackLang.HolProg 64 :=
.seq NamedBody719_51 NamedBody719_52

def NamedBody719_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody719_55 : StackLang.HolProg 64 :=
.seq NamedBody719_53 NamedBody719_54

def NamedBody719_56 : StackLang.HolProg 64 :=
.seq NamedBody719_48 NamedBody719_55

def NamedBody719_57 : StackLang.HolProg 64 :=
.seq NamedBody719_47 NamedBody719_56

def NamedBody719_58 : StackLang.HolProg 64 :=
.seq NamedBody719_46 NamedBody719_57

def NamedBody719_59 : StackLang.HolProg 64 :=
.seq NamedBody719_45 NamedBody719_58

def NamedBody719_60 : StackLang.HolProg 64 :=
.seq NamedBody719_44 NamedBody719_59

def NamedBody719_61 : StackLang.HolProg 64 :=
.seq NamedBody719_43 NamedBody719_60

def NamedBody719_62 : StackLang.HolProg 64 :=
.seq NamedBody719_42 NamedBody719_61

def NamedBody719_63 : StackLang.HolProg 64 :=
.seq NamedBody719_41 NamedBody719_62

def NamedBody719_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody719_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody719_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody719_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody719_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody719_72 : StackLang.HolProg 64 :=
.seq NamedBody719_70 NamedBody719_71

def NamedBody719_73 : StackLang.HolProg 64 :=
.seq NamedBody719_69 NamedBody719_72

def NamedBody719_74 : StackLang.HolProg 64 :=
.seq NamedBody719_68 NamedBody719_73

def NamedBody719_75 : StackLang.HolProg 64 :=
.seq NamedBody719_67 NamedBody719_74

def NamedBody719_76 : StackLang.HolProg 64 :=
.seq NamedBody719_66 NamedBody719_75

def NamedBody719_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody719_78 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody719_79 : StackLang.HolProg 64 :=
.seq NamedBody719_77 NamedBody719_78

def NamedBody719_80 : StackLang.HolProg 64 :=
.call (some (NamedBody719_76, 1, 719, 2)) (Sum.inl 708) (some (NamedBody719_79, 719, 3))

def NamedBody719_81 : StackLang.HolProg 64 :=
.seq NamedBody719_65 NamedBody719_80

def NamedBody719_82 : StackLang.HolProg 64 :=
.seq NamedBody719_64 NamedBody719_81

def NamedBody719_83 : StackLang.HolProg 64 :=
.seq NamedBody719_63 NamedBody719_82

def NamedBody719_84 : StackLang.HolProg 64 :=
.seq NamedBody719_34 NamedBody719_83

def NamedBody719_85 : StackLang.HolProg 64 :=
.seq NamedBody719_31 NamedBody719_84

def NamedBody719_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody719_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody719_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody719_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody719_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody719_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody719_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody719_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody719_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody719_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody719_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody719_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody719_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody719_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody719_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody719_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody719_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody719_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody719_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody719_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody719_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody719_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def NamedBody719_120 : StackLang.HolProg 64 :=
.seq NamedBody719_118 NamedBody719_119

def NamedBody719_121 : StackLang.HolProg 64 :=
.seq NamedBody719_117 NamedBody719_120

def NamedBody719_122 : StackLang.HolProg 64 :=
.seq NamedBody719_116 NamedBody719_121

def NamedBody719_123 : StackLang.HolProg 64 :=
.seq NamedBody719_115 NamedBody719_122

def NamedBody719_124 : StackLang.HolProg 64 :=
.seq NamedBody719_114 NamedBody719_123

def NamedBody719_125 : StackLang.HolProg 64 :=
.seq NamedBody719_113 NamedBody719_124

def NamedBody719_126 : StackLang.HolProg 64 :=
.seq NamedBody719_112 NamedBody719_125

def NamedBody719_127 : StackLang.HolProg 64 :=
.seq NamedBody719_111 NamedBody719_126

def NamedBody719_128 : StackLang.HolProg 64 :=
.seq NamedBody719_110 NamedBody719_127

def NamedBody719_129 : StackLang.HolProg 64 :=
.seq NamedBody719_109 NamedBody719_128

def NamedBody719_130 : StackLang.HolProg 64 :=
.seq NamedBody719_108 NamedBody719_129

def NamedBody719_131 : StackLang.HolProg 64 :=
.seq NamedBody719_107 NamedBody719_130

def NamedBody719_132 : StackLang.HolProg 64 :=
.seq NamedBody719_106 NamedBody719_131

def NamedBody719_133 : StackLang.HolProg 64 :=
.seq NamedBody719_105 NamedBody719_132

def NamedBody719_134 : StackLang.HolProg 64 :=
.seq NamedBody719_104 NamedBody719_133

def NamedBody719_135 : StackLang.HolProg 64 :=
.seq NamedBody719_103 NamedBody719_134

def NamedBody719_136 : StackLang.HolProg 64 :=
.seq NamedBody719_102 NamedBody719_135

def NamedBody719_137 : StackLang.HolProg 64 :=
.seq NamedBody719_101 NamedBody719_136

def NamedBody719_138 : StackLang.HolProg 64 :=
.seq NamedBody719_100 NamedBody719_137

def NamedBody719_139 : StackLang.HolProg 64 :=
.seq NamedBody719_99 NamedBody719_138

def NamedBody719_140 : StackLang.HolProg 64 :=
.seq NamedBody719_98 NamedBody719_139

def NamedBody719_141 : StackLang.HolProg 64 :=
.seq NamedBody719_97 NamedBody719_140

def NamedBody719_142 : StackLang.HolProg 64 :=
.seq NamedBody719_96 NamedBody719_141

def NamedBody719_143 : StackLang.HolProg 64 :=
.seq NamedBody719_95 NamedBody719_142

def NamedBody719_144 : StackLang.HolProg 64 :=
.seq NamedBody719_94 NamedBody719_143

def NamedBody719_145 : StackLang.HolProg 64 :=
.seq NamedBody719_93 NamedBody719_144

def NamedBody719_146 : StackLang.HolProg 64 :=
.seq NamedBody719_92 NamedBody719_145

def NamedBody719_147 : StackLang.HolProg 64 :=
.seq NamedBody719_91 NamedBody719_146

def NamedBody719_148 : StackLang.HolProg 64 :=
.seq NamedBody719_90 NamedBody719_147

def NamedBody719_149 : StackLang.HolProg 64 :=
.seq NamedBody719_89 NamedBody719_148

def NamedBody719_150 : StackLang.HolProg 64 :=
.seq NamedBody719_88 NamedBody719_149

def NamedBody719_151 : StackLang.HolProg 64 :=
.seq NamedBody719_87 NamedBody719_150

def NamedBody719_152 : StackLang.HolProg 64 :=
.seq NamedBody719_86 NamedBody719_151

def NamedBody719_153 : StackLang.HolProg 64 :=
.seq NamedBody719_85 NamedBody719_152

def NamedBody719_154 : StackLang.HolProg 64 :=
.seq NamedBody719_30 NamedBody719_153

def NamedBody719_155 : StackLang.HolProg 64 :=
.seq NamedBody719_29 NamedBody719_154

def NamedBody719_156 : StackLang.HolProg 64 :=
.seq NamedBody719_28 NamedBody719_155

def NamedBody719_157 : StackLang.HolProg 64 :=
.seq NamedBody719_27 NamedBody719_156

def NamedBody719_158 : StackLang.HolProg 64 :=
.seq NamedBody719_26 NamedBody719_157

def NamedBody719_159 : StackLang.HolProg 64 :=
.seq NamedBody719_25 NamedBody719_158

def NamedBody719_160 : StackLang.HolProg 64 :=
.seq NamedBody719_24 NamedBody719_159

def NamedBody719_161 : StackLang.HolProg 64 :=
.seq NamedBody719_23 NamedBody719_160

def NamedBody719_162 : StackLang.HolProg 64 :=
.seq NamedBody719_22 NamedBody719_161

def NamedBody719_163 : StackLang.HolProg 64 :=
.seq NamedBody719_21 NamedBody719_162

def NamedBody719_164 : StackLang.HolProg 64 :=
.seq NamedBody719_20 NamedBody719_163

def NamedBody719_165 : StackLang.HolProg 64 :=
.seq NamedBody719_9 NamedBody719_164

def NamedBody719_166 : StackLang.HolProg 64 :=
.seq NamedBody719_8 NamedBody719_165

def NamedBody719_167 : StackLang.HolProg 64 :=
.seq NamedBody719_7 NamedBody719_166

def NamedBody719_168 : StackLang.HolProg 64 :=
.seq NamedBody719_6 NamedBody719_167

def Named719 : Nat × StackLang.HolProg 64 := (719, NamedBody719_168)
theorem Named719_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed719 = Named719 := by
  kernel_rfl
#print axioms Named719_eq
end InitECandidate.Proofs.BackendStages
