import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed145
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody145_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody145_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody145_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody145_3 : StackLang.HolProg 64 :=
.seq NamedBody145_1 NamedBody145_2

def NamedBody145_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody145_3 NamedBody145_4

def NamedBody145_6 : StackLang.HolProg 64 :=
.seq NamedBody145_0 NamedBody145_5

def NamedBody145_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody145_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody145_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody145_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody145_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody145_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody145_14 : StackLang.HolProg 64 :=
.seq NamedBody145_12 NamedBody145_13

def NamedBody145_15 : StackLang.HolProg 64 :=
.seq NamedBody145_11 NamedBody145_14

def NamedBody145_16 : StackLang.HolProg 64 :=
.seq NamedBody145_10 NamedBody145_15

def NamedBody145_17 : StackLang.HolProg 64 :=
.seq NamedBody145_9 NamedBody145_16

def NamedBody145_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody145_17 NamedBody145_18

def NamedBody145_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody145_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody145_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 31#64)

def NamedBody145_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody145_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody145_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody145_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody145_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody145_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody145_30 : StackLang.HolProg 64 :=
.seq NamedBody145_28 NamedBody145_29

def NamedBody145_31 : StackLang.HolProg 64 :=
.seq NamedBody145_27 NamedBody145_30

def NamedBody145_32 : StackLang.HolProg 64 :=
.seq NamedBody145_26 NamedBody145_31

def NamedBody145_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody145_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody145_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody145_36 : StackLang.HolProg 64 :=
.seq NamedBody145_34 NamedBody145_35

def NamedBody145_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 111#64)

def NamedBody145_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody145_40 : StackLang.HolProg 64 :=
.seq NamedBody145_38 NamedBody145_39

def NamedBody145_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody145_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody145_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody145_44 : StackLang.HolProg 64 :=
.seq NamedBody145_42 NamedBody145_43

def NamedBody145_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody145_44 NamedBody145_45

def NamedBody145_47 : StackLang.HolProg 64 :=
.seq NamedBody145_41 NamedBody145_46

def NamedBody145_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody145_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody145_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 145 3

def NamedBody145_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody145_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody145_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody145_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody145_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody145_57 : StackLang.HolProg 64 :=
.seq NamedBody145_55 NamedBody145_56

def NamedBody145_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody145_59 : StackLang.HolProg 64 :=
.seq NamedBody145_57 NamedBody145_58

def NamedBody145_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody145_61 : StackLang.HolProg 64 :=
.seq NamedBody145_59 NamedBody145_60

def NamedBody145_62 : StackLang.HolProg 64 :=
.seq NamedBody145_54 NamedBody145_61

def NamedBody145_63 : StackLang.HolProg 64 :=
.seq NamedBody145_53 NamedBody145_62

def NamedBody145_64 : StackLang.HolProg 64 :=
.seq NamedBody145_52 NamedBody145_63

def NamedBody145_65 : StackLang.HolProg 64 :=
.seq NamedBody145_51 NamedBody145_64

def NamedBody145_66 : StackLang.HolProg 64 :=
.seq NamedBody145_50 NamedBody145_65

def NamedBody145_67 : StackLang.HolProg 64 :=
.seq NamedBody145_49 NamedBody145_66

def NamedBody145_68 : StackLang.HolProg 64 :=
.seq NamedBody145_48 NamedBody145_67

def NamedBody145_69 : StackLang.HolProg 64 :=
.seq NamedBody145_47 NamedBody145_68

def NamedBody145_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody145_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody145_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody145_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody145_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody145_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody145_79 : StackLang.HolProg 64 :=
.seq NamedBody145_77 NamedBody145_78

def NamedBody145_80 : StackLang.HolProg 64 :=
.seq NamedBody145_76 NamedBody145_79

def NamedBody145_81 : StackLang.HolProg 64 :=
.seq NamedBody145_75 NamedBody145_80

def NamedBody145_82 : StackLang.HolProg 64 :=
.seq NamedBody145_74 NamedBody145_81

def NamedBody145_83 : StackLang.HolProg 64 :=
.seq NamedBody145_73 NamedBody145_82

def NamedBody145_84 : StackLang.HolProg 64 :=
.seq NamedBody145_72 NamedBody145_83

def NamedBody145_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody145_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody145_87 : StackLang.HolProg 64 :=
.seq NamedBody145_85 NamedBody145_86

def NamedBody145_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody145_89 : StackLang.HolProg 64 :=
.seq NamedBody145_87 NamedBody145_88

def NamedBody145_90 : StackLang.HolProg 64 :=
.call (some (NamedBody145_84, 1, 145, 2)) (Sum.inl 103) (some (NamedBody145_89, 145, 3))

def NamedBody145_91 : StackLang.HolProg 64 :=
.seq NamedBody145_71 NamedBody145_90

def NamedBody145_92 : StackLang.HolProg 64 :=
.seq NamedBody145_70 NamedBody145_91

def NamedBody145_93 : StackLang.HolProg 64 :=
.seq NamedBody145_69 NamedBody145_92

def NamedBody145_94 : StackLang.HolProg 64 :=
.seq NamedBody145_40 NamedBody145_93

def NamedBody145_95 : StackLang.HolProg 64 :=
.seq NamedBody145_37 NamedBody145_94

def NamedBody145_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody145_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody145_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody145_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def NamedBody145_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody145_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody145_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody145_105 : StackLang.HolProg 64 :=
.seq NamedBody145_103 NamedBody145_104

def NamedBody145_106 : StackLang.HolProg 64 :=
.seq NamedBody145_102 NamedBody145_105

def NamedBody145_107 : StackLang.HolProg 64 :=
.seq NamedBody145_101 NamedBody145_106

def NamedBody145_108 : StackLang.HolProg 64 :=
.seq NamedBody145_100 NamedBody145_107

def NamedBody145_109 : StackLang.HolProg 64 :=
.seq NamedBody145_99 NamedBody145_108

def NamedBody145_110 : StackLang.HolProg 64 :=
.seq NamedBody145_98 NamedBody145_109

def NamedBody145_111 : StackLang.HolProg 64 :=
.seq NamedBody145_97 NamedBody145_110

def NamedBody145_112 : StackLang.HolProg 64 :=
.seq NamedBody145_96 NamedBody145_111

def NamedBody145_113 : StackLang.HolProg 64 :=
.seq NamedBody145_95 NamedBody145_112

def NamedBody145_114 : StackLang.HolProg 64 :=
.seq NamedBody145_36 NamedBody145_113

def NamedBody145_115 : StackLang.HolProg 64 :=
.seq NamedBody145_33 NamedBody145_114

def NamedBody145_116 : StackLang.HolProg 64 :=
.seq NamedBody145_32 NamedBody145_115

def NamedBody145_117 : StackLang.HolProg 64 :=
.seq NamedBody145_25 NamedBody145_116

def NamedBody145_118 : StackLang.HolProg 64 :=
.seq NamedBody145_24 NamedBody145_117

def NamedBody145_119 : StackLang.HolProg 64 :=
.seq NamedBody145_23 NamedBody145_118

def NamedBody145_120 : StackLang.HolProg 64 :=
.seq NamedBody145_22 NamedBody145_119

def NamedBody145_121 : StackLang.HolProg 64 :=
.seq NamedBody145_21 NamedBody145_120

def NamedBody145_122 : StackLang.HolProg 64 :=
.seq NamedBody145_20 NamedBody145_121

def NamedBody145_123 : StackLang.HolProg 64 :=
.seq NamedBody145_19 NamedBody145_122

def NamedBody145_124 : StackLang.HolProg 64 :=
.seq NamedBody145_8 NamedBody145_123

def NamedBody145_125 : StackLang.HolProg 64 :=
.seq NamedBody145_7 NamedBody145_124

def NamedBody145_126 : StackLang.HolProg 64 :=
.seq NamedBody145_6 NamedBody145_125

def Named145 : Nat × StackLang.HolProg 64 := (145, NamedBody145_126)
theorem Named145_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed145 = Named145 := by
  kernel_rfl
#print axioms Named145_eq
end InitECandidate.Proofs.BackendStages
