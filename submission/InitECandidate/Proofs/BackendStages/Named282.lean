import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed282
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody282_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody282_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody282_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody282_3 : StackLang.HolProg 64 :=
.seq NamedBody282_1 NamedBody282_2

def NamedBody282_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody282_3 NamedBody282_4

def NamedBody282_6 : StackLang.HolProg 64 :=
.seq NamedBody282_0 NamedBody282_5

def NamedBody282_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody282_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody282_9 : StackLang.HolProg 64 :=
.seq NamedBody282_7 NamedBody282_8

def NamedBody282_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1024#64)

def NamedBody282_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody282_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody282_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody282_14 : StackLang.HolProg 64 :=
.seq NamedBody282_12 NamedBody282_13

def NamedBody282_15 : StackLang.HolProg 64 :=
.seq NamedBody282_11 NamedBody282_14

def NamedBody282_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 752#64)

def NamedBody282_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody282_19 : StackLang.HolProg 64 :=
.seq NamedBody282_17 NamedBody282_18

def NamedBody282_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody282_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody282_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody282_23 : StackLang.HolProg 64 :=
.seq NamedBody282_21 NamedBody282_22

def NamedBody282_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody282_23 NamedBody282_24

def NamedBody282_26 : StackLang.HolProg 64 :=
.seq NamedBody282_20 NamedBody282_25

def NamedBody282_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody282_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody282_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 282 3

def NamedBody282_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody282_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody282_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody282_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody282_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody282_36 : StackLang.HolProg 64 :=
.seq NamedBody282_34 NamedBody282_35

def NamedBody282_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody282_38 : StackLang.HolProg 64 :=
.seq NamedBody282_36 NamedBody282_37

def NamedBody282_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody282_40 : StackLang.HolProg 64 :=
.seq NamedBody282_38 NamedBody282_39

def NamedBody282_41 : StackLang.HolProg 64 :=
.seq NamedBody282_33 NamedBody282_40

def NamedBody282_42 : StackLang.HolProg 64 :=
.seq NamedBody282_32 NamedBody282_41

def NamedBody282_43 : StackLang.HolProg 64 :=
.seq NamedBody282_31 NamedBody282_42

def NamedBody282_44 : StackLang.HolProg 64 :=
.seq NamedBody282_30 NamedBody282_43

def NamedBody282_45 : StackLang.HolProg 64 :=
.seq NamedBody282_29 NamedBody282_44

def NamedBody282_46 : StackLang.HolProg 64 :=
.seq NamedBody282_28 NamedBody282_45

def NamedBody282_47 : StackLang.HolProg 64 :=
.seq NamedBody282_27 NamedBody282_46

def NamedBody282_48 : StackLang.HolProg 64 :=
.seq NamedBody282_26 NamedBody282_47

def NamedBody282_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody282_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody282_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody282_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody282_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody282_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody282_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody282_59 : StackLang.HolProg 64 :=
.seq NamedBody282_57 NamedBody282_58

def NamedBody282_60 : StackLang.HolProg 64 :=
.seq NamedBody282_56 NamedBody282_59

def NamedBody282_61 : StackLang.HolProg 64 :=
.seq NamedBody282_55 NamedBody282_60

def NamedBody282_62 : StackLang.HolProg 64 :=
.seq NamedBody282_54 NamedBody282_61

def NamedBody282_63 : StackLang.HolProg 64 :=
.seq NamedBody282_53 NamedBody282_62

def NamedBody282_64 : StackLang.HolProg 64 :=
.seq NamedBody282_52 NamedBody282_63

def NamedBody282_65 : StackLang.HolProg 64 :=
.seq NamedBody282_51 NamedBody282_64

def NamedBody282_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody282_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody282_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody282_69 : StackLang.HolProg 64 :=
.seq NamedBody282_67 NamedBody282_68

def NamedBody282_70 : StackLang.HolProg 64 :=
.seq NamedBody282_66 NamedBody282_69

def NamedBody282_71 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody282_72 : StackLang.HolProg 64 :=
.seq NamedBody282_70 NamedBody282_71

def NamedBody282_73 : StackLang.HolProg 64 :=
.call (some (NamedBody282_65, 1, 282, 2)) (Sum.inl 95) (some (NamedBody282_72, 282, 3))

def NamedBody282_74 : StackLang.HolProg 64 :=
.seq NamedBody282_50 NamedBody282_73

def NamedBody282_75 : StackLang.HolProg 64 :=
.seq NamedBody282_49 NamedBody282_74

def NamedBody282_76 : StackLang.HolProg 64 :=
.seq NamedBody282_48 NamedBody282_75

def NamedBody282_77 : StackLang.HolProg 64 :=
.seq NamedBody282_19 NamedBody282_76

def NamedBody282_78 : StackLang.HolProg 64 :=
.seq NamedBody282_16 NamedBody282_77

def NamedBody282_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody282_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody282_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody282_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody282_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody282_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody282_87 : StackLang.HolProg 64 :=
.seq NamedBody282_85 NamedBody282_86

def NamedBody282_88 : StackLang.HolProg 64 :=
.seq NamedBody282_84 NamedBody282_87

def NamedBody282_89 : StackLang.HolProg 64 :=
.seq NamedBody282_83 NamedBody282_88

def NamedBody282_90 : StackLang.HolProg 64 :=
.seq NamedBody282_82 NamedBody282_89

def NamedBody282_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody282_90 NamedBody282_91

def NamedBody282_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody282_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody282_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody282_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody282_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody282_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody282_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody282_102 : StackLang.HolProg 64 :=
.seq NamedBody282_100 NamedBody282_101

def NamedBody282_103 : StackLang.HolProg 64 :=
.seq NamedBody282_99 NamedBody282_102

def NamedBody282_104 : StackLang.HolProg 64 :=
.seq NamedBody282_98 NamedBody282_103

def NamedBody282_105 : StackLang.HolProg 64 :=
.seq NamedBody282_97 NamedBody282_104

def NamedBody282_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_107 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody282_105 NamedBody282_106

def NamedBody282_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody282_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody282_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5000#64)

def NamedBody282_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody282_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody282_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody282_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody282_117 : StackLang.HolProg 64 :=
.seq NamedBody282_115 NamedBody282_116

def NamedBody282_118 : StackLang.HolProg 64 :=
.seq NamedBody282_114 NamedBody282_117

def NamedBody282_119 : StackLang.HolProg 64 :=
.seq NamedBody282_113 NamedBody282_118

def NamedBody282_120 : StackLang.HolProg 64 :=
.seq NamedBody282_112 NamedBody282_119

def NamedBody282_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody282_120 NamedBody282_121

def NamedBody282_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody282_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody282_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody282_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody282_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody282_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody282_129 : StackLang.HolProg 64 :=
.seq NamedBody282_127 NamedBody282_128

def NamedBody282_130 : StackLang.HolProg 64 :=
.seq NamedBody282_126 NamedBody282_129

def NamedBody282_131 : StackLang.HolProg 64 :=
.seq NamedBody282_125 NamedBody282_130

def NamedBody282_132 : StackLang.HolProg 64 :=
.seq NamedBody282_124 NamedBody282_131

def NamedBody282_133 : StackLang.HolProg 64 :=
.seq NamedBody282_123 NamedBody282_132

def NamedBody282_134 : StackLang.HolProg 64 :=
.seq NamedBody282_122 NamedBody282_133

def NamedBody282_135 : StackLang.HolProg 64 :=
.seq NamedBody282_111 NamedBody282_134

def NamedBody282_136 : StackLang.HolProg 64 :=
.seq NamedBody282_110 NamedBody282_135

def NamedBody282_137 : StackLang.HolProg 64 :=
.seq NamedBody282_109 NamedBody282_136

def NamedBody282_138 : StackLang.HolProg 64 :=
.seq NamedBody282_108 NamedBody282_137

def NamedBody282_139 : StackLang.HolProg 64 :=
.seq NamedBody282_107 NamedBody282_138

def NamedBody282_140 : StackLang.HolProg 64 :=
.seq NamedBody282_96 NamedBody282_139

def NamedBody282_141 : StackLang.HolProg 64 :=
.seq NamedBody282_95 NamedBody282_140

def NamedBody282_142 : StackLang.HolProg 64 :=
.seq NamedBody282_94 NamedBody282_141

def NamedBody282_143 : StackLang.HolProg 64 :=
.seq NamedBody282_93 NamedBody282_142

def NamedBody282_144 : StackLang.HolProg 64 :=
.seq NamedBody282_92 NamedBody282_143

def NamedBody282_145 : StackLang.HolProg 64 :=
.seq NamedBody282_81 NamedBody282_144

def NamedBody282_146 : StackLang.HolProg 64 :=
.seq NamedBody282_80 NamedBody282_145

def NamedBody282_147 : StackLang.HolProg 64 :=
.seq NamedBody282_79 NamedBody282_146

def NamedBody282_148 : StackLang.HolProg 64 :=
.seq NamedBody282_78 NamedBody282_147

def NamedBody282_149 : StackLang.HolProg 64 :=
.seq NamedBody282_15 NamedBody282_148

def NamedBody282_150 : StackLang.HolProg 64 :=
.seq NamedBody282_10 NamedBody282_149

def NamedBody282_151 : StackLang.HolProg 64 :=
.seq NamedBody282_9 NamedBody282_150

def NamedBody282_152 : StackLang.HolProg 64 :=
.seq NamedBody282_6 NamedBody282_151

def Named282 : Nat × StackLang.HolProg 64 := (282, NamedBody282_152)
theorem Named282_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed282 = Named282 := by
  kernel_rfl
#print axioms Named282_eq
end InitECandidate.Proofs.BackendStages
