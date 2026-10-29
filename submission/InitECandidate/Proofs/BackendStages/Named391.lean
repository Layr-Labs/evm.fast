import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed391
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody391_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody391_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody391_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody391_3 : StackLang.HolProg 64 :=
.seq NamedBody391_1 NamedBody391_2

def NamedBody391_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody391_3 NamedBody391_4

def NamedBody391_6 : StackLang.HolProg 64 :=
.seq NamedBody391_0 NamedBody391_5

def NamedBody391_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody391_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody391_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody391_11 : StackLang.HolProg 64 :=
.seq NamedBody391_9 NamedBody391_10

def NamedBody391_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody391_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody391_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody391_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551600#64))

def NamedBody391_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody391_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551600#64)))

def NamedBody391_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody391_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody391_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551600#64))

def NamedBody391_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody391_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551416#64))

def NamedBody391_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody391_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody391_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 8#64))

def NamedBody391_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 16#64))

def NamedBody391_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody391_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody391_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 24#64))

def NamedBody391_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody391_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1167#64)

def NamedBody391_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody391_44 : StackLang.HolProg 64 :=
.seq NamedBody391_42 NamedBody391_43

def NamedBody391_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody391_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody391_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody391_48 : StackLang.HolProg 64 :=
.seq NamedBody391_46 NamedBody391_47

def NamedBody391_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody391_48 NamedBody391_49

def NamedBody391_51 : StackLang.HolProg 64 :=
.seq NamedBody391_45 NamedBody391_50

def NamedBody391_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody391_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody391_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 391 3

def NamedBody391_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody391_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody391_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody391_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody391_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody391_61 : StackLang.HolProg 64 :=
.seq NamedBody391_59 NamedBody391_60

def NamedBody391_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody391_63 : StackLang.HolProg 64 :=
.seq NamedBody391_61 NamedBody391_62

def NamedBody391_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody391_65 : StackLang.HolProg 64 :=
.seq NamedBody391_63 NamedBody391_64

def NamedBody391_66 : StackLang.HolProg 64 :=
.seq NamedBody391_58 NamedBody391_65

def NamedBody391_67 : StackLang.HolProg 64 :=
.seq NamedBody391_57 NamedBody391_66

def NamedBody391_68 : StackLang.HolProg 64 :=
.seq NamedBody391_56 NamedBody391_67

def NamedBody391_69 : StackLang.HolProg 64 :=
.seq NamedBody391_55 NamedBody391_68

def NamedBody391_70 : StackLang.HolProg 64 :=
.seq NamedBody391_54 NamedBody391_69

def NamedBody391_71 : StackLang.HolProg 64 :=
.seq NamedBody391_53 NamedBody391_70

def NamedBody391_72 : StackLang.HolProg 64 :=
.seq NamedBody391_52 NamedBody391_71

def NamedBody391_73 : StackLang.HolProg 64 :=
.seq NamedBody391_51 NamedBody391_72

def NamedBody391_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody391_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody391_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody391_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody391_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody391_82 : StackLang.HolProg 64 :=
.seq NamedBody391_80 NamedBody391_81

def NamedBody391_83 : StackLang.HolProg 64 :=
.seq NamedBody391_79 NamedBody391_82

def NamedBody391_84 : StackLang.HolProg 64 :=
.seq NamedBody391_78 NamedBody391_83

def NamedBody391_85 : StackLang.HolProg 64 :=
.seq NamedBody391_77 NamedBody391_84

def NamedBody391_86 : StackLang.HolProg 64 :=
.seq NamedBody391_76 NamedBody391_85

def NamedBody391_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody391_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody391_89 : StackLang.HolProg 64 :=
.seq NamedBody391_87 NamedBody391_88

def NamedBody391_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody391_91 : StackLang.HolProg 64 :=
.seq NamedBody391_89 NamedBody391_90

def NamedBody391_92 : StackLang.HolProg 64 :=
.call (some (NamedBody391_86, 1, 391, 2)) (Sum.inl 192) (some (NamedBody391_91, 391, 3))

def NamedBody391_93 : StackLang.HolProg 64 :=
.seq NamedBody391_75 NamedBody391_92

def NamedBody391_94 : StackLang.HolProg 64 :=
.seq NamedBody391_74 NamedBody391_93

def NamedBody391_95 : StackLang.HolProg 64 :=
.seq NamedBody391_73 NamedBody391_94

def NamedBody391_96 : StackLang.HolProg 64 :=
.seq NamedBody391_44 NamedBody391_95

def NamedBody391_97 : StackLang.HolProg 64 :=
.seq NamedBody391_41 NamedBody391_96

def NamedBody391_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody391_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_100 : StackLang.HolProg 64 :=
.seq NamedBody391_98 NamedBody391_99

def NamedBody391_101 : StackLang.HolProg 64 :=
.seq NamedBody391_97 NamedBody391_100

def NamedBody391_102 : StackLang.HolProg 64 :=
.seq NamedBody391_40 NamedBody391_101

def NamedBody391_103 : StackLang.HolProg 64 :=
.seq NamedBody391_39 NamedBody391_102

def NamedBody391_104 : StackLang.HolProg 64 :=
.seq NamedBody391_38 NamedBody391_103

def NamedBody391_105 : StackLang.HolProg 64 :=
.seq NamedBody391_37 NamedBody391_104

def NamedBody391_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody391_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody391_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1168#64)

def NamedBody391_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody391_111 : StackLang.HolProg 64 :=
.seq NamedBody391_109 NamedBody391_110

def NamedBody391_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody391_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody391_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody391_115 : StackLang.HolProg 64 :=
.seq NamedBody391_113 NamedBody391_114

def NamedBody391_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody391_115 NamedBody391_116

def NamedBody391_118 : StackLang.HolProg 64 :=
.seq NamedBody391_112 NamedBody391_117

def NamedBody391_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody391_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody391_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 391 5

def NamedBody391_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody391_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody391_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody391_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody391_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody391_128 : StackLang.HolProg 64 :=
.seq NamedBody391_126 NamedBody391_127

def NamedBody391_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody391_130 : StackLang.HolProg 64 :=
.seq NamedBody391_128 NamedBody391_129

def NamedBody391_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody391_132 : StackLang.HolProg 64 :=
.seq NamedBody391_130 NamedBody391_131

def NamedBody391_133 : StackLang.HolProg 64 :=
.seq NamedBody391_125 NamedBody391_132

def NamedBody391_134 : StackLang.HolProg 64 :=
.seq NamedBody391_124 NamedBody391_133

def NamedBody391_135 : StackLang.HolProg 64 :=
.seq NamedBody391_123 NamedBody391_134

def NamedBody391_136 : StackLang.HolProg 64 :=
.seq NamedBody391_122 NamedBody391_135

def NamedBody391_137 : StackLang.HolProg 64 :=
.seq NamedBody391_121 NamedBody391_136

def NamedBody391_138 : StackLang.HolProg 64 :=
.seq NamedBody391_120 NamedBody391_137

def NamedBody391_139 : StackLang.HolProg 64 :=
.seq NamedBody391_119 NamedBody391_138

def NamedBody391_140 : StackLang.HolProg 64 :=
.seq NamedBody391_118 NamedBody391_139

def NamedBody391_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody391_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody391_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody391_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody391_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody391_149 : StackLang.HolProg 64 :=
.seq NamedBody391_147 NamedBody391_148

def NamedBody391_150 : StackLang.HolProg 64 :=
.seq NamedBody391_146 NamedBody391_149

def NamedBody391_151 : StackLang.HolProg 64 :=
.seq NamedBody391_145 NamedBody391_150

def NamedBody391_152 : StackLang.HolProg 64 :=
.seq NamedBody391_144 NamedBody391_151

def NamedBody391_153 : StackLang.HolProg 64 :=
.seq NamedBody391_143 NamedBody391_152

def NamedBody391_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody391_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody391_156 : StackLang.HolProg 64 :=
.seq NamedBody391_154 NamedBody391_155

def NamedBody391_157 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody391_158 : StackLang.HolProg 64 :=
.seq NamedBody391_156 NamedBody391_157

def NamedBody391_159 : StackLang.HolProg 64 :=
.call (some (NamedBody391_153, 1, 391, 4)) (Sum.inl 193) (some (NamedBody391_158, 391, 5))

def NamedBody391_160 : StackLang.HolProg 64 :=
.seq NamedBody391_142 NamedBody391_159

def NamedBody391_161 : StackLang.HolProg 64 :=
.seq NamedBody391_141 NamedBody391_160

def NamedBody391_162 : StackLang.HolProg 64 :=
.seq NamedBody391_140 NamedBody391_161

def NamedBody391_163 : StackLang.HolProg 64 :=
.seq NamedBody391_111 NamedBody391_162

def NamedBody391_164 : StackLang.HolProg 64 :=
.seq NamedBody391_108 NamedBody391_163

def NamedBody391_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody391_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_167 : StackLang.HolProg 64 :=
.seq NamedBody391_165 NamedBody391_166

def NamedBody391_168 : StackLang.HolProg 64 :=
.seq NamedBody391_164 NamedBody391_167

def NamedBody391_169 : StackLang.HolProg 64 :=
.seq NamedBody391_107 NamedBody391_168

def NamedBody391_170 : StackLang.HolProg 64 :=
.seq NamedBody391_106 NamedBody391_169

def NamedBody391_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody391_105 NamedBody391_170

def NamedBody391_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody391_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody391_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody391_175 : StackLang.HolProg 64 :=
.seq NamedBody391_173 NamedBody391_174

def NamedBody391_176 : StackLang.HolProg 64 :=
.seq NamedBody391_172 NamedBody391_175

def NamedBody391_177 : StackLang.HolProg 64 :=
.seq NamedBody391_171 NamedBody391_176

def NamedBody391_178 : StackLang.HolProg 64 :=
.seq NamedBody391_36 NamedBody391_177

def NamedBody391_179 : StackLang.HolProg 64 :=
.seq NamedBody391_35 NamedBody391_178

def NamedBody391_180 : StackLang.HolProg 64 :=
.seq NamedBody391_34 NamedBody391_179

def NamedBody391_181 : StackLang.HolProg 64 :=
.seq NamedBody391_33 NamedBody391_180

def NamedBody391_182 : StackLang.HolProg 64 :=
.seq NamedBody391_32 NamedBody391_181

def NamedBody391_183 : StackLang.HolProg 64 :=
.seq NamedBody391_31 NamedBody391_182

def NamedBody391_184 : StackLang.HolProg 64 :=
.seq NamedBody391_30 NamedBody391_183

def NamedBody391_185 : StackLang.HolProg 64 :=
.seq NamedBody391_29 NamedBody391_184

def NamedBody391_186 : StackLang.HolProg 64 :=
.seq NamedBody391_28 NamedBody391_185

def NamedBody391_187 : StackLang.HolProg 64 :=
.seq NamedBody391_27 NamedBody391_186

def NamedBody391_188 : StackLang.HolProg 64 :=
.seq NamedBody391_26 NamedBody391_187

def NamedBody391_189 : StackLang.HolProg 64 :=
.seq NamedBody391_25 NamedBody391_188

def NamedBody391_190 : StackLang.HolProg 64 :=
.seq NamedBody391_24 NamedBody391_189

def NamedBody391_191 : StackLang.HolProg 64 :=
.seq NamedBody391_23 NamedBody391_190

def NamedBody391_192 : StackLang.HolProg 64 :=
.seq NamedBody391_22 NamedBody391_191

def NamedBody391_193 : StackLang.HolProg 64 :=
.seq NamedBody391_21 NamedBody391_192

def NamedBody391_194 : StackLang.HolProg 64 :=
.seq NamedBody391_20 NamedBody391_193

def NamedBody391_195 : StackLang.HolProg 64 :=
.seq NamedBody391_19 NamedBody391_194

def NamedBody391_196 : StackLang.HolProg 64 :=
.seq NamedBody391_18 NamedBody391_195

def NamedBody391_197 : StackLang.HolProg 64 :=
.seq NamedBody391_17 NamedBody391_196

def NamedBody391_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody391_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody391_200 : StackLang.HolProg 64 :=
.seq NamedBody391_198 NamedBody391_199

def NamedBody391_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody391_197 NamedBody391_200

def NamedBody391_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody391_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody391_204 : StackLang.HolProg 64 :=
.seq NamedBody391_202 NamedBody391_203

def NamedBody391_205 : StackLang.HolProg 64 :=
.seq NamedBody391_201 NamedBody391_204

def NamedBody391_206 : StackLang.HolProg 64 :=
.seq NamedBody391_16 NamedBody391_205

def NamedBody391_207 : StackLang.HolProg 64 :=
.seq NamedBody391_15 NamedBody391_206

def NamedBody391_208 : StackLang.HolProg 64 :=
.seq NamedBody391_14 NamedBody391_207

def NamedBody391_209 : StackLang.HolProg 64 :=
.seq NamedBody391_13 NamedBody391_208

def NamedBody391_210 : StackLang.HolProg 64 :=
.seq NamedBody391_12 NamedBody391_209

def NamedBody391_211 : StackLang.HolProg 64 :=
.loop NamedBody391_210

def NamedBody391_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody391_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody391_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody391_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody391_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody391_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody391_218 : StackLang.HolProg 64 :=
.seq NamedBody391_216 NamedBody391_217

def NamedBody391_219 : StackLang.HolProg 64 :=
.seq NamedBody391_215 NamedBody391_218

def NamedBody391_220 : StackLang.HolProg 64 :=
.seq NamedBody391_214 NamedBody391_219

def NamedBody391_221 : StackLang.HolProg 64 :=
.seq NamedBody391_213 NamedBody391_220

def NamedBody391_222 : StackLang.HolProg 64 :=
.seq NamedBody391_212 NamedBody391_221

def NamedBody391_223 : StackLang.HolProg 64 :=
.seq NamedBody391_211 NamedBody391_222

def NamedBody391_224 : StackLang.HolProg 64 :=
.seq NamedBody391_11 NamedBody391_223

def NamedBody391_225 : StackLang.HolProg 64 :=
.seq NamedBody391_8 NamedBody391_224

def NamedBody391_226 : StackLang.HolProg 64 :=
.seq NamedBody391_7 NamedBody391_225

def NamedBody391_227 : StackLang.HolProg 64 :=
.seq NamedBody391_6 NamedBody391_226

def Named391 : Nat × StackLang.HolProg 64 := (391, NamedBody391_227)
theorem Named391_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed391 = Named391 := by
  kernel_rfl
#print axioms Named391_eq
end InitECandidate.Proofs.BackendStages
