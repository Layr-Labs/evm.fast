import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed194
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody194_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody194_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody194_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody194_3 : StackLang.HolProg 64 :=
.seq NamedBody194_1 NamedBody194_2

def NamedBody194_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody194_3 NamedBody194_4

def NamedBody194_6 : StackLang.HolProg 64 :=
.seq NamedBody194_0 NamedBody194_5

def NamedBody194_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody194_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody194_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody194_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody194_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody194_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody194_14 : StackLang.HolProg 64 :=
.seq NamedBody194_12 NamedBody194_13

def NamedBody194_15 : StackLang.HolProg 64 :=
.seq NamedBody194_11 NamedBody194_14

def NamedBody194_16 : StackLang.HolProg 64 :=
.seq NamedBody194_10 NamedBody194_15

def NamedBody194_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody194_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody194_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody194_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody194_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody194_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 48#64))

def NamedBody194_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody194_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody194_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody194_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody194_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody194_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody194_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody194_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody194_35 : StackLang.HolProg 64 :=
.seq NamedBody194_33 NamedBody194_34

def NamedBody194_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 233#64)

def NamedBody194_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody194_39 : StackLang.HolProg 64 :=
.seq NamedBody194_37 NamedBody194_38

def NamedBody194_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody194_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody194_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody194_43 : StackLang.HolProg 64 :=
.seq NamedBody194_41 NamedBody194_42

def NamedBody194_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody194_43 NamedBody194_44

def NamedBody194_46 : StackLang.HolProg 64 :=
.seq NamedBody194_40 NamedBody194_45

def NamedBody194_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody194_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody194_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 194 3

def NamedBody194_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody194_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody194_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody194_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody194_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody194_56 : StackLang.HolProg 64 :=
.seq NamedBody194_54 NamedBody194_55

def NamedBody194_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody194_58 : StackLang.HolProg 64 :=
.seq NamedBody194_56 NamedBody194_57

def NamedBody194_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody194_60 : StackLang.HolProg 64 :=
.seq NamedBody194_58 NamedBody194_59

def NamedBody194_61 : StackLang.HolProg 64 :=
.seq NamedBody194_53 NamedBody194_60

def NamedBody194_62 : StackLang.HolProg 64 :=
.seq NamedBody194_52 NamedBody194_61

def NamedBody194_63 : StackLang.HolProg 64 :=
.seq NamedBody194_51 NamedBody194_62

def NamedBody194_64 : StackLang.HolProg 64 :=
.seq NamedBody194_50 NamedBody194_63

def NamedBody194_65 : StackLang.HolProg 64 :=
.seq NamedBody194_49 NamedBody194_64

def NamedBody194_66 : StackLang.HolProg 64 :=
.seq NamedBody194_48 NamedBody194_65

def NamedBody194_67 : StackLang.HolProg 64 :=
.seq NamedBody194_47 NamedBody194_66

def NamedBody194_68 : StackLang.HolProg 64 :=
.seq NamedBody194_46 NamedBody194_67

def NamedBody194_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody194_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody194_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody194_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody194_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody194_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody194_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody194_79 : StackLang.HolProg 64 :=
.seq NamedBody194_77 NamedBody194_78

def NamedBody194_80 : StackLang.HolProg 64 :=
.seq NamedBody194_76 NamedBody194_79

def NamedBody194_81 : StackLang.HolProg 64 :=
.seq NamedBody194_75 NamedBody194_80

def NamedBody194_82 : StackLang.HolProg 64 :=
.seq NamedBody194_74 NamedBody194_81

def NamedBody194_83 : StackLang.HolProg 64 :=
.seq NamedBody194_73 NamedBody194_82

def NamedBody194_84 : StackLang.HolProg 64 :=
.seq NamedBody194_72 NamedBody194_83

def NamedBody194_85 : StackLang.HolProg 64 :=
.seq NamedBody194_71 NamedBody194_84

def NamedBody194_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody194_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody194_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody194_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody194_90 : StackLang.HolProg 64 :=
.seq NamedBody194_88 NamedBody194_89

def NamedBody194_91 : StackLang.HolProg 64 :=
.seq NamedBody194_87 NamedBody194_90

def NamedBody194_92 : StackLang.HolProg 64 :=
.seq NamedBody194_86 NamedBody194_91

def NamedBody194_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody194_94 : StackLang.HolProg 64 :=
.seq NamedBody194_92 NamedBody194_93

def NamedBody194_95 : StackLang.HolProg 64 :=
.call (some (NamedBody194_85, 1, 194, 2)) (Sum.inl 193) (some (NamedBody194_94, 194, 3))

def NamedBody194_96 : StackLang.HolProg 64 :=
.seq NamedBody194_70 NamedBody194_95

def NamedBody194_97 : StackLang.HolProg 64 :=
.seq NamedBody194_69 NamedBody194_96

def NamedBody194_98 : StackLang.HolProg 64 :=
.seq NamedBody194_68 NamedBody194_97

def NamedBody194_99 : StackLang.HolProg 64 :=
.seq NamedBody194_39 NamedBody194_98

def NamedBody194_100 : StackLang.HolProg 64 :=
.seq NamedBody194_36 NamedBody194_99

def NamedBody194_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody194_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody194_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody194_104 : StackLang.HolProg 64 :=
.seq NamedBody194_102 NamedBody194_103

def NamedBody194_105 : StackLang.HolProg 64 :=
.seq NamedBody194_101 NamedBody194_104

def NamedBody194_106 : StackLang.HolProg 64 :=
.seq NamedBody194_100 NamedBody194_105

def NamedBody194_107 : StackLang.HolProg 64 :=
.seq NamedBody194_35 NamedBody194_106

def NamedBody194_108 : StackLang.HolProg 64 :=
.seq NamedBody194_32 NamedBody194_107

def NamedBody194_109 : StackLang.HolProg 64 :=
.seq NamedBody194_31 NamedBody194_108

def NamedBody194_110 : StackLang.HolProg 64 :=
.seq NamedBody194_30 NamedBody194_109

def NamedBody194_111 : StackLang.HolProg 64 :=
.seq NamedBody194_29 NamedBody194_110

def NamedBody194_112 : StackLang.HolProg 64 :=
.seq NamedBody194_28 NamedBody194_111

def NamedBody194_113 : StackLang.HolProg 64 :=
.seq NamedBody194_27 NamedBody194_112

def NamedBody194_114 : StackLang.HolProg 64 :=
.seq NamedBody194_26 NamedBody194_113

def NamedBody194_115 : StackLang.HolProg 64 :=
.seq NamedBody194_25 NamedBody194_114

def NamedBody194_116 : StackLang.HolProg 64 :=
.seq NamedBody194_24 NamedBody194_115

def NamedBody194_117 : StackLang.HolProg 64 :=
.seq NamedBody194_23 NamedBody194_116

def NamedBody194_118 : StackLang.HolProg 64 :=
.seq NamedBody194_22 NamedBody194_117

def NamedBody194_119 : StackLang.HolProg 64 :=
.seq NamedBody194_21 NamedBody194_118

def NamedBody194_120 : StackLang.HolProg 64 :=
.seq NamedBody194_20 NamedBody194_119

def NamedBody194_121 : StackLang.HolProg 64 :=
.seq NamedBody194_19 NamedBody194_120

def NamedBody194_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody194_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody194_124 : StackLang.HolProg 64 :=
.seq NamedBody194_122 NamedBody194_123

def NamedBody194_125 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody194_121 NamedBody194_124

def NamedBody194_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody194_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody194_128 : StackLang.HolProg 64 :=
.seq NamedBody194_126 NamedBody194_127

def NamedBody194_129 : StackLang.HolProg 64 :=
.seq NamedBody194_125 NamedBody194_128

def NamedBody194_130 : StackLang.HolProg 64 :=
.seq NamedBody194_18 NamedBody194_129

def NamedBody194_131 : StackLang.HolProg 64 :=
.seq NamedBody194_17 NamedBody194_130

def NamedBody194_132 : StackLang.HolProg 64 :=
.loop NamedBody194_131

def NamedBody194_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody194_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody194_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody194_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody194_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody194_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody194_139 : StackLang.HolProg 64 :=
.seq NamedBody194_137 NamedBody194_138

def NamedBody194_140 : StackLang.HolProg 64 :=
.seq NamedBody194_136 NamedBody194_139

def NamedBody194_141 : StackLang.HolProg 64 :=
.seq NamedBody194_135 NamedBody194_140

def NamedBody194_142 : StackLang.HolProg 64 :=
.seq NamedBody194_134 NamedBody194_141

def NamedBody194_143 : StackLang.HolProg 64 :=
.seq NamedBody194_133 NamedBody194_142

def NamedBody194_144 : StackLang.HolProg 64 :=
.seq NamedBody194_132 NamedBody194_143

def NamedBody194_145 : StackLang.HolProg 64 :=
.seq NamedBody194_16 NamedBody194_144

def NamedBody194_146 : StackLang.HolProg 64 :=
.seq NamedBody194_9 NamedBody194_145

def NamedBody194_147 : StackLang.HolProg 64 :=
.seq NamedBody194_8 NamedBody194_146

def NamedBody194_148 : StackLang.HolProg 64 :=
.seq NamedBody194_7 NamedBody194_147

def NamedBody194_149 : StackLang.HolProg 64 :=
.seq NamedBody194_6 NamedBody194_148

def Named194 : Nat × StackLang.HolProg 64 := (194, NamedBody194_149)
theorem Named194_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed194 = Named194 := by
  kernel_rfl
#print axioms Named194_eq
end InitECandidate.Proofs.BackendStages
