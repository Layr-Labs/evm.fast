import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc430
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody430_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody430_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody430_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody430_3 : StackLang.HolProg 64 :=
.seq RemovedBody430_1 RemovedBody430_2

def RemovedBody430_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody430_3 RemovedBody430_4

def RemovedBody430_6 : StackLang.HolProg 64 :=
.seq RemovedBody430_0 RemovedBody430_5

def RemovedBody430_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody430_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody430_9 : StackLang.HolProg 64 :=
.seq RemovedBody430_7 RemovedBody430_8

def RemovedBody430_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1290#64)

def RemovedBody430_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody430_13 : StackLang.HolProg 64 :=
.seq RemovedBody430_11 RemovedBody430_12

def RemovedBody430_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody430_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody430_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody430_17 : StackLang.HolProg 64 :=
.seq RemovedBody430_15 RemovedBody430_16

def RemovedBody430_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody430_17 RemovedBody430_18

def RemovedBody430_20 : StackLang.HolProg 64 :=
.seq RemovedBody430_14 RemovedBody430_19

def RemovedBody430_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody430_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody430_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 430 3

def RemovedBody430_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody430_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody430_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody430_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody430_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody430_30 : StackLang.HolProg 64 :=
.seq RemovedBody430_28 RemovedBody430_29

def RemovedBody430_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody430_32 : StackLang.HolProg 64 :=
.seq RemovedBody430_30 RemovedBody430_31

def RemovedBody430_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody430_34 : StackLang.HolProg 64 :=
.seq RemovedBody430_32 RemovedBody430_33

def RemovedBody430_35 : StackLang.HolProg 64 :=
.seq RemovedBody430_27 RemovedBody430_34

def RemovedBody430_36 : StackLang.HolProg 64 :=
.seq RemovedBody430_26 RemovedBody430_35

def RemovedBody430_37 : StackLang.HolProg 64 :=
.seq RemovedBody430_25 RemovedBody430_36

def RemovedBody430_38 : StackLang.HolProg 64 :=
.seq RemovedBody430_24 RemovedBody430_37

def RemovedBody430_39 : StackLang.HolProg 64 :=
.seq RemovedBody430_23 RemovedBody430_38

def RemovedBody430_40 : StackLang.HolProg 64 :=
.seq RemovedBody430_22 RemovedBody430_39

def RemovedBody430_41 : StackLang.HolProg 64 :=
.seq RemovedBody430_21 RemovedBody430_40

def RemovedBody430_42 : StackLang.HolProg 64 :=
.seq RemovedBody430_20 RemovedBody430_41

def RemovedBody430_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody430_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody430_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody430_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody430_50 : StackLang.HolProg 64 :=
.seq RemovedBody430_48 RemovedBody430_49

def RemovedBody430_51 : StackLang.HolProg 64 :=
.seq RemovedBody430_47 RemovedBody430_50

def RemovedBody430_52 : StackLang.HolProg 64 :=
.seq RemovedBody430_46 RemovedBody430_51

def RemovedBody430_53 : StackLang.HolProg 64 :=
.seq RemovedBody430_45 RemovedBody430_52

def RemovedBody430_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody430_56 : StackLang.HolProg 64 :=
.seq RemovedBody430_54 RemovedBody430_55

def RemovedBody430_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody430_53, 0, 430, 2)) (Sum.inl 407) (some (RemovedBody430_56, 430, 3))

def RemovedBody430_58 : StackLang.HolProg 64 :=
.seq RemovedBody430_44 RemovedBody430_57

def RemovedBody430_59 : StackLang.HolProg 64 :=
.seq RemovedBody430_43 RemovedBody430_58

def RemovedBody430_60 : StackLang.HolProg 64 :=
.seq RemovedBody430_42 RemovedBody430_59

def RemovedBody430_61 : StackLang.HolProg 64 :=
.seq RemovedBody430_13 RemovedBody430_60

def RemovedBody430_62 : StackLang.HolProg 64 :=
.seq RemovedBody430_10 RemovedBody430_61

def RemovedBody430_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody430_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody430_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1291#64)

def RemovedBody430_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody430_68 : StackLang.HolProg 64 :=
.seq RemovedBody430_66 RemovedBody430_67

def RemovedBody430_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody430_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody430_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody430_72 : StackLang.HolProg 64 :=
.seq RemovedBody430_70 RemovedBody430_71

def RemovedBody430_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody430_72 RemovedBody430_73

def RemovedBody430_75 : StackLang.HolProg 64 :=
.seq RemovedBody430_69 RemovedBody430_74

def RemovedBody430_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody430_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody430_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 430 5

def RemovedBody430_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody430_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody430_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody430_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody430_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody430_85 : StackLang.HolProg 64 :=
.seq RemovedBody430_83 RemovedBody430_84

def RemovedBody430_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody430_87 : StackLang.HolProg 64 :=
.seq RemovedBody430_85 RemovedBody430_86

def RemovedBody430_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody430_89 : StackLang.HolProg 64 :=
.seq RemovedBody430_87 RemovedBody430_88

def RemovedBody430_90 : StackLang.HolProg 64 :=
.seq RemovedBody430_82 RemovedBody430_89

def RemovedBody430_91 : StackLang.HolProg 64 :=
.seq RemovedBody430_81 RemovedBody430_90

def RemovedBody430_92 : StackLang.HolProg 64 :=
.seq RemovedBody430_80 RemovedBody430_91

def RemovedBody430_93 : StackLang.HolProg 64 :=
.seq RemovedBody430_79 RemovedBody430_92

def RemovedBody430_94 : StackLang.HolProg 64 :=
.seq RemovedBody430_78 RemovedBody430_93

def RemovedBody430_95 : StackLang.HolProg 64 :=
.seq RemovedBody430_77 RemovedBody430_94

def RemovedBody430_96 : StackLang.HolProg 64 :=
.seq RemovedBody430_76 RemovedBody430_95

def RemovedBody430_97 : StackLang.HolProg 64 :=
.seq RemovedBody430_75 RemovedBody430_96

def RemovedBody430_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody430_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody430_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody430_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody430_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody430_106 : StackLang.HolProg 64 :=
.seq RemovedBody430_104 RemovedBody430_105

def RemovedBody430_107 : StackLang.HolProg 64 :=
.seq RemovedBody430_103 RemovedBody430_106

def RemovedBody430_108 : StackLang.HolProg 64 :=
.seq RemovedBody430_102 RemovedBody430_107

def RemovedBody430_109 : StackLang.HolProg 64 :=
.seq RemovedBody430_101 RemovedBody430_108

def RemovedBody430_110 : StackLang.HolProg 64 :=
.seq RemovedBody430_100 RemovedBody430_109

def RemovedBody430_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody430_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody430_113 : StackLang.HolProg 64 :=
.seq RemovedBody430_111 RemovedBody430_112

def RemovedBody430_114 : StackLang.HolProg 64 :=
.call (some (RemovedBody430_110, 0, 430, 4)) (Sum.inl 395) (some (RemovedBody430_113, 430, 5))

def RemovedBody430_115 : StackLang.HolProg 64 :=
.seq RemovedBody430_99 RemovedBody430_114

def RemovedBody430_116 : StackLang.HolProg 64 :=
.seq RemovedBody430_98 RemovedBody430_115

def RemovedBody430_117 : StackLang.HolProg 64 :=
.seq RemovedBody430_97 RemovedBody430_116

def RemovedBody430_118 : StackLang.HolProg 64 :=
.seq RemovedBody430_68 RemovedBody430_117

def RemovedBody430_119 : StackLang.HolProg 64 :=
.seq RemovedBody430_65 RemovedBody430_118

def RemovedBody430_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody430_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody430_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody430_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody430_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody430_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1292#64)

def RemovedBody430_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody430_130 : StackLang.HolProg 64 :=
.seq RemovedBody430_128 RemovedBody430_129

def RemovedBody430_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody430_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody430_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody430_134 : StackLang.HolProg 64 :=
.seq RemovedBody430_132 RemovedBody430_133

def RemovedBody430_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody430_134 RemovedBody430_135

def RemovedBody430_137 : StackLang.HolProg 64 :=
.seq RemovedBody430_131 RemovedBody430_136

def RemovedBody430_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody430_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody430_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 430 7

def RemovedBody430_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody430_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody430_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody430_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody430_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody430_147 : StackLang.HolProg 64 :=
.seq RemovedBody430_145 RemovedBody430_146

def RemovedBody430_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody430_149 : StackLang.HolProg 64 :=
.seq RemovedBody430_147 RemovedBody430_148

def RemovedBody430_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody430_151 : StackLang.HolProg 64 :=
.seq RemovedBody430_149 RemovedBody430_150

def RemovedBody430_152 : StackLang.HolProg 64 :=
.seq RemovedBody430_144 RemovedBody430_151

def RemovedBody430_153 : StackLang.HolProg 64 :=
.seq RemovedBody430_143 RemovedBody430_152

def RemovedBody430_154 : StackLang.HolProg 64 :=
.seq RemovedBody430_142 RemovedBody430_153

def RemovedBody430_155 : StackLang.HolProg 64 :=
.seq RemovedBody430_141 RemovedBody430_154

def RemovedBody430_156 : StackLang.HolProg 64 :=
.seq RemovedBody430_140 RemovedBody430_155

def RemovedBody430_157 : StackLang.HolProg 64 :=
.seq RemovedBody430_139 RemovedBody430_156

def RemovedBody430_158 : StackLang.HolProg 64 :=
.seq RemovedBody430_138 RemovedBody430_157

def RemovedBody430_159 : StackLang.HolProg 64 :=
.seq RemovedBody430_137 RemovedBody430_158

def RemovedBody430_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody430_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody430_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody430_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody430_167 : StackLang.HolProg 64 :=
.seq RemovedBody430_165 RemovedBody430_166

def RemovedBody430_168 : StackLang.HolProg 64 :=
.seq RemovedBody430_164 RemovedBody430_167

def RemovedBody430_169 : StackLang.HolProg 64 :=
.seq RemovedBody430_163 RemovedBody430_168

def RemovedBody430_170 : StackLang.HolProg 64 :=
.seq RemovedBody430_162 RemovedBody430_169

def RemovedBody430_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody430_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody430_173 : StackLang.HolProg 64 :=
.seq RemovedBody430_171 RemovedBody430_172

def RemovedBody430_174 : StackLang.HolProg 64 :=
.call (some (RemovedBody430_170, 0, 430, 6)) (Sum.inl 423) (some (RemovedBody430_173, 430, 7))

def RemovedBody430_175 : StackLang.HolProg 64 :=
.seq RemovedBody430_161 RemovedBody430_174

def RemovedBody430_176 : StackLang.HolProg 64 :=
.seq RemovedBody430_160 RemovedBody430_175

def RemovedBody430_177 : StackLang.HolProg 64 :=
.seq RemovedBody430_159 RemovedBody430_176

def RemovedBody430_178 : StackLang.HolProg 64 :=
.seq RemovedBody430_130 RemovedBody430_177

def RemovedBody430_179 : StackLang.HolProg 64 :=
.seq RemovedBody430_127 RemovedBody430_178

def RemovedBody430_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody430_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody430_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody430_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody430_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody430_185 : StackLang.HolProg 64 :=
.seq RemovedBody430_183 RemovedBody430_184

def RemovedBody430_186 : StackLang.HolProg 64 :=
.seq RemovedBody430_182 RemovedBody430_185

def RemovedBody430_187 : StackLang.HolProg 64 :=
.seq RemovedBody430_181 RemovedBody430_186

def RemovedBody430_188 : StackLang.HolProg 64 :=
.seq RemovedBody430_180 RemovedBody430_187

def RemovedBody430_189 : StackLang.HolProg 64 :=
.seq RemovedBody430_179 RemovedBody430_188

def RemovedBody430_190 : StackLang.HolProg 64 :=
.seq RemovedBody430_126 RemovedBody430_189

def RemovedBody430_191 : StackLang.HolProg 64 :=
.seq RemovedBody430_125 RemovedBody430_190

def RemovedBody430_192 : StackLang.HolProg 64 :=
.seq RemovedBody430_124 RemovedBody430_191

def RemovedBody430_193 : StackLang.HolProg 64 :=
.seq RemovedBody430_123 RemovedBody430_192

def RemovedBody430_194 : StackLang.HolProg 64 :=
.seq RemovedBody430_122 RemovedBody430_193

def RemovedBody430_195 : StackLang.HolProg 64 :=
.seq RemovedBody430_121 RemovedBody430_194

def RemovedBody430_196 : StackLang.HolProg 64 :=
.seq RemovedBody430_120 RemovedBody430_195

def RemovedBody430_197 : StackLang.HolProg 64 :=
.seq RemovedBody430_119 RemovedBody430_196

def RemovedBody430_198 : StackLang.HolProg 64 :=
.seq RemovedBody430_64 RemovedBody430_197

def RemovedBody430_199 : StackLang.HolProg 64 :=
.seq RemovedBody430_63 RemovedBody430_198

def RemovedBody430_200 : StackLang.HolProg 64 :=
.seq RemovedBody430_62 RemovedBody430_199

def RemovedBody430_201 : StackLang.HolProg 64 :=
.seq RemovedBody430_9 RemovedBody430_200

def RemovedBody430_202 : StackLang.HolProg 64 :=
.seq RemovedBody430_6 RemovedBody430_201

def Removed430 : Nat × StackLang.HolProg 64 := (430, RemovedBody430_202)
theorem Removed430_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc430 = Removed430 := by
  kernel_rfl
#print axioms Removed430_eq
end InitECandidate.Proofs.BackendStages
