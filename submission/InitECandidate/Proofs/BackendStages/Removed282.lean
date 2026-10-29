import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc282
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody282_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody282_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody282_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody282_3 : StackLang.HolProg 64 :=
.seq RemovedBody282_1 RemovedBody282_2

def RemovedBody282_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody282_3 RemovedBody282_4

def RemovedBody282_6 : StackLang.HolProg 64 :=
.seq RemovedBody282_0 RemovedBody282_5

def RemovedBody282_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody282_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody282_9 : StackLang.HolProg 64 :=
.seq RemovedBody282_7 RemovedBody282_8

def RemovedBody282_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1024#64)

def RemovedBody282_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody282_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody282_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody282_14 : StackLang.HolProg 64 :=
.seq RemovedBody282_12 RemovedBody282_13

def RemovedBody282_15 : StackLang.HolProg 64 :=
.seq RemovedBody282_11 RemovedBody282_14

def RemovedBody282_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 752#64)

def RemovedBody282_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody282_19 : StackLang.HolProg 64 :=
.seq RemovedBody282_17 RemovedBody282_18

def RemovedBody282_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody282_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody282_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody282_23 : StackLang.HolProg 64 :=
.seq RemovedBody282_21 RemovedBody282_22

def RemovedBody282_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody282_23 RemovedBody282_24

def RemovedBody282_26 : StackLang.HolProg 64 :=
.seq RemovedBody282_20 RemovedBody282_25

def RemovedBody282_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody282_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody282_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 282 3

def RemovedBody282_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody282_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody282_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody282_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody282_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody282_36 : StackLang.HolProg 64 :=
.seq RemovedBody282_34 RemovedBody282_35

def RemovedBody282_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody282_38 : StackLang.HolProg 64 :=
.seq RemovedBody282_36 RemovedBody282_37

def RemovedBody282_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody282_40 : StackLang.HolProg 64 :=
.seq RemovedBody282_38 RemovedBody282_39

def RemovedBody282_41 : StackLang.HolProg 64 :=
.seq RemovedBody282_33 RemovedBody282_40

def RemovedBody282_42 : StackLang.HolProg 64 :=
.seq RemovedBody282_32 RemovedBody282_41

def RemovedBody282_43 : StackLang.HolProg 64 :=
.seq RemovedBody282_31 RemovedBody282_42

def RemovedBody282_44 : StackLang.HolProg 64 :=
.seq RemovedBody282_30 RemovedBody282_43

def RemovedBody282_45 : StackLang.HolProg 64 :=
.seq RemovedBody282_29 RemovedBody282_44

def RemovedBody282_46 : StackLang.HolProg 64 :=
.seq RemovedBody282_28 RemovedBody282_45

def RemovedBody282_47 : StackLang.HolProg 64 :=
.seq RemovedBody282_27 RemovedBody282_46

def RemovedBody282_48 : StackLang.HolProg 64 :=
.seq RemovedBody282_26 RemovedBody282_47

def RemovedBody282_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody282_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody282_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody282_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody282_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody282_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody282_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody282_59 : StackLang.HolProg 64 :=
.seq RemovedBody282_57 RemovedBody282_58

def RemovedBody282_60 : StackLang.HolProg 64 :=
.seq RemovedBody282_56 RemovedBody282_59

def RemovedBody282_61 : StackLang.HolProg 64 :=
.seq RemovedBody282_55 RemovedBody282_60

def RemovedBody282_62 : StackLang.HolProg 64 :=
.seq RemovedBody282_54 RemovedBody282_61

def RemovedBody282_63 : StackLang.HolProg 64 :=
.seq RemovedBody282_53 RemovedBody282_62

def RemovedBody282_64 : StackLang.HolProg 64 :=
.seq RemovedBody282_52 RemovedBody282_63

def RemovedBody282_65 : StackLang.HolProg 64 :=
.seq RemovedBody282_51 RemovedBody282_64

def RemovedBody282_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody282_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody282_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody282_69 : StackLang.HolProg 64 :=
.seq RemovedBody282_67 RemovedBody282_68

def RemovedBody282_70 : StackLang.HolProg 64 :=
.seq RemovedBody282_66 RemovedBody282_69

def RemovedBody282_71 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody282_72 : StackLang.HolProg 64 :=
.seq RemovedBody282_70 RemovedBody282_71

def RemovedBody282_73 : StackLang.HolProg 64 :=
.call (some (RemovedBody282_65, 0, 282, 2)) (Sum.inl 95) (some (RemovedBody282_72, 282, 3))

def RemovedBody282_74 : StackLang.HolProg 64 :=
.seq RemovedBody282_50 RemovedBody282_73

def RemovedBody282_75 : StackLang.HolProg 64 :=
.seq RemovedBody282_49 RemovedBody282_74

def RemovedBody282_76 : StackLang.HolProg 64 :=
.seq RemovedBody282_48 RemovedBody282_75

def RemovedBody282_77 : StackLang.HolProg 64 :=
.seq RemovedBody282_19 RemovedBody282_76

def RemovedBody282_78 : StackLang.HolProg 64 :=
.seq RemovedBody282_16 RemovedBody282_77

def RemovedBody282_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody282_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody282_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody282_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody282_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody282_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody282_87 : StackLang.HolProg 64 :=
.seq RemovedBody282_85 RemovedBody282_86

def RemovedBody282_88 : StackLang.HolProg 64 :=
.seq RemovedBody282_84 RemovedBody282_87

def RemovedBody282_89 : StackLang.HolProg 64 :=
.seq RemovedBody282_83 RemovedBody282_88

def RemovedBody282_90 : StackLang.HolProg 64 :=
.seq RemovedBody282_82 RemovedBody282_89

def RemovedBody282_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody282_90 RemovedBody282_91

def RemovedBody282_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody282_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody282_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody282_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody282_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody282_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody282_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody282_102 : StackLang.HolProg 64 :=
.seq RemovedBody282_100 RemovedBody282_101

def RemovedBody282_103 : StackLang.HolProg 64 :=
.seq RemovedBody282_99 RemovedBody282_102

def RemovedBody282_104 : StackLang.HolProg 64 :=
.seq RemovedBody282_98 RemovedBody282_103

def RemovedBody282_105 : StackLang.HolProg 64 :=
.seq RemovedBody282_97 RemovedBody282_104

def RemovedBody282_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_107 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody282_105 RemovedBody282_106

def RemovedBody282_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody282_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody282_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5000#64)

def RemovedBody282_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody282_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody282_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody282_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody282_117 : StackLang.HolProg 64 :=
.seq RemovedBody282_115 RemovedBody282_116

def RemovedBody282_118 : StackLang.HolProg 64 :=
.seq RemovedBody282_114 RemovedBody282_117

def RemovedBody282_119 : StackLang.HolProg 64 :=
.seq RemovedBody282_113 RemovedBody282_118

def RemovedBody282_120 : StackLang.HolProg 64 :=
.seq RemovedBody282_112 RemovedBody282_119

def RemovedBody282_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody282_120 RemovedBody282_121

def RemovedBody282_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody282_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody282_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody282_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody282_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody282_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody282_129 : StackLang.HolProg 64 :=
.seq RemovedBody282_127 RemovedBody282_128

def RemovedBody282_130 : StackLang.HolProg 64 :=
.seq RemovedBody282_126 RemovedBody282_129

def RemovedBody282_131 : StackLang.HolProg 64 :=
.seq RemovedBody282_125 RemovedBody282_130

def RemovedBody282_132 : StackLang.HolProg 64 :=
.seq RemovedBody282_124 RemovedBody282_131

def RemovedBody282_133 : StackLang.HolProg 64 :=
.seq RemovedBody282_123 RemovedBody282_132

def RemovedBody282_134 : StackLang.HolProg 64 :=
.seq RemovedBody282_122 RemovedBody282_133

def RemovedBody282_135 : StackLang.HolProg 64 :=
.seq RemovedBody282_111 RemovedBody282_134

def RemovedBody282_136 : StackLang.HolProg 64 :=
.seq RemovedBody282_110 RemovedBody282_135

def RemovedBody282_137 : StackLang.HolProg 64 :=
.seq RemovedBody282_109 RemovedBody282_136

def RemovedBody282_138 : StackLang.HolProg 64 :=
.seq RemovedBody282_108 RemovedBody282_137

def RemovedBody282_139 : StackLang.HolProg 64 :=
.seq RemovedBody282_107 RemovedBody282_138

def RemovedBody282_140 : StackLang.HolProg 64 :=
.seq RemovedBody282_96 RemovedBody282_139

def RemovedBody282_141 : StackLang.HolProg 64 :=
.seq RemovedBody282_95 RemovedBody282_140

def RemovedBody282_142 : StackLang.HolProg 64 :=
.seq RemovedBody282_94 RemovedBody282_141

def RemovedBody282_143 : StackLang.HolProg 64 :=
.seq RemovedBody282_93 RemovedBody282_142

def RemovedBody282_144 : StackLang.HolProg 64 :=
.seq RemovedBody282_92 RemovedBody282_143

def RemovedBody282_145 : StackLang.HolProg 64 :=
.seq RemovedBody282_81 RemovedBody282_144

def RemovedBody282_146 : StackLang.HolProg 64 :=
.seq RemovedBody282_80 RemovedBody282_145

def RemovedBody282_147 : StackLang.HolProg 64 :=
.seq RemovedBody282_79 RemovedBody282_146

def RemovedBody282_148 : StackLang.HolProg 64 :=
.seq RemovedBody282_78 RemovedBody282_147

def RemovedBody282_149 : StackLang.HolProg 64 :=
.seq RemovedBody282_15 RemovedBody282_148

def RemovedBody282_150 : StackLang.HolProg 64 :=
.seq RemovedBody282_10 RemovedBody282_149

def RemovedBody282_151 : StackLang.HolProg 64 :=
.seq RemovedBody282_9 RemovedBody282_150

def RemovedBody282_152 : StackLang.HolProg 64 :=
.seq RemovedBody282_6 RemovedBody282_151

def Removed282 : Nat × StackLang.HolProg 64 := (282, RemovedBody282_152)
theorem Removed282_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc282 = Removed282 := by
  kernel_rfl
#print axioms Removed282_eq
end InitECandidate.Proofs.BackendStages
