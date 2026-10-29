import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc557
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody557_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody557_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody557_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody557_3 : StackLang.HolProg 64 :=
.seq RemovedBody557_1 RemovedBody557_2

def RemovedBody557_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody557_3 RemovedBody557_4

def RemovedBody557_6 : StackLang.HolProg 64 :=
.seq RemovedBody557_0 RemovedBody557_5

def RemovedBody557_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody557_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody557_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1895#64)

def RemovedBody557_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody557_13 : StackLang.HolProg 64 :=
.seq RemovedBody557_11 RemovedBody557_12

def RemovedBody557_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody557_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody557_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody557_17 : StackLang.HolProg 64 :=
.seq RemovedBody557_15 RemovedBody557_16

def RemovedBody557_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody557_17 RemovedBody557_18

def RemovedBody557_20 : StackLang.HolProg 64 :=
.seq RemovedBody557_14 RemovedBody557_19

def RemovedBody557_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody557_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody557_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 557 3

def RemovedBody557_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody557_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody557_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody557_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody557_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody557_30 : StackLang.HolProg 64 :=
.seq RemovedBody557_28 RemovedBody557_29

def RemovedBody557_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody557_32 : StackLang.HolProg 64 :=
.seq RemovedBody557_30 RemovedBody557_31

def RemovedBody557_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody557_34 : StackLang.HolProg 64 :=
.seq RemovedBody557_32 RemovedBody557_33

def RemovedBody557_35 : StackLang.HolProg 64 :=
.seq RemovedBody557_27 RemovedBody557_34

def RemovedBody557_36 : StackLang.HolProg 64 :=
.seq RemovedBody557_26 RemovedBody557_35

def RemovedBody557_37 : StackLang.HolProg 64 :=
.seq RemovedBody557_25 RemovedBody557_36

def RemovedBody557_38 : StackLang.HolProg 64 :=
.seq RemovedBody557_24 RemovedBody557_37

def RemovedBody557_39 : StackLang.HolProg 64 :=
.seq RemovedBody557_23 RemovedBody557_38

def RemovedBody557_40 : StackLang.HolProg 64 :=
.seq RemovedBody557_22 RemovedBody557_39

def RemovedBody557_41 : StackLang.HolProg 64 :=
.seq RemovedBody557_21 RemovedBody557_40

def RemovedBody557_42 : StackLang.HolProg 64 :=
.seq RemovedBody557_20 RemovedBody557_41

def RemovedBody557_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody557_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody557_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody557_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_50 : StackLang.HolProg 64 :=
.seq RemovedBody557_48 RemovedBody557_49

def RemovedBody557_51 : StackLang.HolProg 64 :=
.seq RemovedBody557_47 RemovedBody557_50

def RemovedBody557_52 : StackLang.HolProg 64 :=
.seq RemovedBody557_46 RemovedBody557_51

def RemovedBody557_53 : StackLang.HolProg 64 :=
.seq RemovedBody557_45 RemovedBody557_52

def RemovedBody557_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody557_56 : StackLang.HolProg 64 :=
.seq RemovedBody557_54 RemovedBody557_55

def RemovedBody557_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody557_53, 0, 557, 2)) (Sum.inl 470) (some (RemovedBody557_56, 557, 3))

def RemovedBody557_58 : StackLang.HolProg 64 :=
.seq RemovedBody557_44 RemovedBody557_57

def RemovedBody557_59 : StackLang.HolProg 64 :=
.seq RemovedBody557_43 RemovedBody557_58

def RemovedBody557_60 : StackLang.HolProg 64 :=
.seq RemovedBody557_42 RemovedBody557_59

def RemovedBody557_61 : StackLang.HolProg 64 :=
.seq RemovedBody557_13 RemovedBody557_60

def RemovedBody557_62 : StackLang.HolProg 64 :=
.seq RemovedBody557_10 RemovedBody557_61

def RemovedBody557_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody557_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody557_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody557_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody557_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody557_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def RemovedBody557_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def RemovedBody557_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def RemovedBody557_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 72#64))

def RemovedBody557_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 80#64))

def RemovedBody557_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1896#64)

def RemovedBody557_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody557_80 : StackLang.HolProg 64 :=
.seq RemovedBody557_78 RemovedBody557_79

def RemovedBody557_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody557_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody557_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody557_84 : StackLang.HolProg 64 :=
.seq RemovedBody557_82 RemovedBody557_83

def RemovedBody557_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody557_84 RemovedBody557_85

def RemovedBody557_87 : StackLang.HolProg 64 :=
.seq RemovedBody557_81 RemovedBody557_86

def RemovedBody557_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody557_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody557_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 557 5

def RemovedBody557_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody557_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody557_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody557_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody557_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody557_97 : StackLang.HolProg 64 :=
.seq RemovedBody557_95 RemovedBody557_96

def RemovedBody557_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody557_99 : StackLang.HolProg 64 :=
.seq RemovedBody557_97 RemovedBody557_98

def RemovedBody557_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody557_101 : StackLang.HolProg 64 :=
.seq RemovedBody557_99 RemovedBody557_100

def RemovedBody557_102 : StackLang.HolProg 64 :=
.seq RemovedBody557_94 RemovedBody557_101

def RemovedBody557_103 : StackLang.HolProg 64 :=
.seq RemovedBody557_93 RemovedBody557_102

def RemovedBody557_104 : StackLang.HolProg 64 :=
.seq RemovedBody557_92 RemovedBody557_103

def RemovedBody557_105 : StackLang.HolProg 64 :=
.seq RemovedBody557_91 RemovedBody557_104

def RemovedBody557_106 : StackLang.HolProg 64 :=
.seq RemovedBody557_90 RemovedBody557_105

def RemovedBody557_107 : StackLang.HolProg 64 :=
.seq RemovedBody557_89 RemovedBody557_106

def RemovedBody557_108 : StackLang.HolProg 64 :=
.seq RemovedBody557_88 RemovedBody557_107

def RemovedBody557_109 : StackLang.HolProg 64 :=
.seq RemovedBody557_87 RemovedBody557_108

def RemovedBody557_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody557_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody557_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody557_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_117 : StackLang.HolProg 64 :=
.seq RemovedBody557_115 RemovedBody557_116

def RemovedBody557_118 : StackLang.HolProg 64 :=
.seq RemovedBody557_114 RemovedBody557_117

def RemovedBody557_119 : StackLang.HolProg 64 :=
.seq RemovedBody557_113 RemovedBody557_118

def RemovedBody557_120 : StackLang.HolProg 64 :=
.seq RemovedBody557_112 RemovedBody557_119

def RemovedBody557_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_122 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody557_123 : StackLang.HolProg 64 :=
.seq RemovedBody557_121 RemovedBody557_122

def RemovedBody557_124 : StackLang.HolProg 64 :=
.call (some (RemovedBody557_120, 0, 557, 4)) (Sum.inl 476) (some (RemovedBody557_123, 557, 5))

def RemovedBody557_125 : StackLang.HolProg 64 :=
.seq RemovedBody557_111 RemovedBody557_124

def RemovedBody557_126 : StackLang.HolProg 64 :=
.seq RemovedBody557_110 RemovedBody557_125

def RemovedBody557_127 : StackLang.HolProg 64 :=
.seq RemovedBody557_109 RemovedBody557_126

def RemovedBody557_128 : StackLang.HolProg 64 :=
.seq RemovedBody557_80 RemovedBody557_127

def RemovedBody557_129 : StackLang.HolProg 64 :=
.seq RemovedBody557_77 RemovedBody557_128

def RemovedBody557_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody557_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody557_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1897#64)

def RemovedBody557_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody557_136 : StackLang.HolProg 64 :=
.seq RemovedBody557_134 RemovedBody557_135

def RemovedBody557_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody557_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody557_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody557_140 : StackLang.HolProg 64 :=
.seq RemovedBody557_138 RemovedBody557_139

def RemovedBody557_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_142 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody557_140 RemovedBody557_141

def RemovedBody557_143 : StackLang.HolProg 64 :=
.seq RemovedBody557_137 RemovedBody557_142

def RemovedBody557_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody557_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody557_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 557 7

def RemovedBody557_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody557_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody557_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody557_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody557_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody557_153 : StackLang.HolProg 64 :=
.seq RemovedBody557_151 RemovedBody557_152

def RemovedBody557_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody557_155 : StackLang.HolProg 64 :=
.seq RemovedBody557_153 RemovedBody557_154

def RemovedBody557_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody557_157 : StackLang.HolProg 64 :=
.seq RemovedBody557_155 RemovedBody557_156

def RemovedBody557_158 : StackLang.HolProg 64 :=
.seq RemovedBody557_150 RemovedBody557_157

def RemovedBody557_159 : StackLang.HolProg 64 :=
.seq RemovedBody557_149 RemovedBody557_158

def RemovedBody557_160 : StackLang.HolProg 64 :=
.seq RemovedBody557_148 RemovedBody557_159

def RemovedBody557_161 : StackLang.HolProg 64 :=
.seq RemovedBody557_147 RemovedBody557_160

def RemovedBody557_162 : StackLang.HolProg 64 :=
.seq RemovedBody557_146 RemovedBody557_161

def RemovedBody557_163 : StackLang.HolProg 64 :=
.seq RemovedBody557_145 RemovedBody557_162

def RemovedBody557_164 : StackLang.HolProg 64 :=
.seq RemovedBody557_144 RemovedBody557_163

def RemovedBody557_165 : StackLang.HolProg 64 :=
.seq RemovedBody557_143 RemovedBody557_164

def RemovedBody557_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody557_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody557_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody557_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody557_173 : StackLang.HolProg 64 :=
.seq RemovedBody557_171 RemovedBody557_172

def RemovedBody557_174 : StackLang.HolProg 64 :=
.seq RemovedBody557_170 RemovedBody557_173

def RemovedBody557_175 : StackLang.HolProg 64 :=
.seq RemovedBody557_169 RemovedBody557_174

def RemovedBody557_176 : StackLang.HolProg 64 :=
.seq RemovedBody557_168 RemovedBody557_175

def RemovedBody557_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody557_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody557_179 : StackLang.HolProg 64 :=
.seq RemovedBody557_177 RemovedBody557_178

def RemovedBody557_180 : StackLang.HolProg 64 :=
.call (some (RemovedBody557_176, 0, 557, 6)) (Sum.inl 490) (some (RemovedBody557_179, 557, 7))

def RemovedBody557_181 : StackLang.HolProg 64 :=
.seq RemovedBody557_167 RemovedBody557_180

def RemovedBody557_182 : StackLang.HolProg 64 :=
.seq RemovedBody557_166 RemovedBody557_181

def RemovedBody557_183 : StackLang.HolProg 64 :=
.seq RemovedBody557_165 RemovedBody557_182

def RemovedBody557_184 : StackLang.HolProg 64 :=
.seq RemovedBody557_136 RemovedBody557_183

def RemovedBody557_185 : StackLang.HolProg 64 :=
.seq RemovedBody557_133 RemovedBody557_184

def RemovedBody557_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody557_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody557_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody557_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody557_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody557_191 : StackLang.HolProg 64 :=
.seq RemovedBody557_189 RemovedBody557_190

def RemovedBody557_192 : StackLang.HolProg 64 :=
.seq RemovedBody557_188 RemovedBody557_191

def RemovedBody557_193 : StackLang.HolProg 64 :=
.seq RemovedBody557_187 RemovedBody557_192

def RemovedBody557_194 : StackLang.HolProg 64 :=
.seq RemovedBody557_186 RemovedBody557_193

def RemovedBody557_195 : StackLang.HolProg 64 :=
.seq RemovedBody557_185 RemovedBody557_194

def RemovedBody557_196 : StackLang.HolProg 64 :=
.seq RemovedBody557_132 RemovedBody557_195

def RemovedBody557_197 : StackLang.HolProg 64 :=
.seq RemovedBody557_131 RemovedBody557_196

def RemovedBody557_198 : StackLang.HolProg 64 :=
.seq RemovedBody557_130 RemovedBody557_197

def RemovedBody557_199 : StackLang.HolProg 64 :=
.seq RemovedBody557_129 RemovedBody557_198

def RemovedBody557_200 : StackLang.HolProg 64 :=
.seq RemovedBody557_76 RemovedBody557_199

def RemovedBody557_201 : StackLang.HolProg 64 :=
.seq RemovedBody557_75 RemovedBody557_200

def RemovedBody557_202 : StackLang.HolProg 64 :=
.seq RemovedBody557_74 RemovedBody557_201

def RemovedBody557_203 : StackLang.HolProg 64 :=
.seq RemovedBody557_73 RemovedBody557_202

def RemovedBody557_204 : StackLang.HolProg 64 :=
.seq RemovedBody557_72 RemovedBody557_203

def RemovedBody557_205 : StackLang.HolProg 64 :=
.seq RemovedBody557_71 RemovedBody557_204

def RemovedBody557_206 : StackLang.HolProg 64 :=
.seq RemovedBody557_70 RemovedBody557_205

def RemovedBody557_207 : StackLang.HolProg 64 :=
.seq RemovedBody557_69 RemovedBody557_206

def RemovedBody557_208 : StackLang.HolProg 64 :=
.seq RemovedBody557_68 RemovedBody557_207

def RemovedBody557_209 : StackLang.HolProg 64 :=
.seq RemovedBody557_67 RemovedBody557_208

def RemovedBody557_210 : StackLang.HolProg 64 :=
.seq RemovedBody557_66 RemovedBody557_209

def RemovedBody557_211 : StackLang.HolProg 64 :=
.seq RemovedBody557_65 RemovedBody557_210

def RemovedBody557_212 : StackLang.HolProg 64 :=
.seq RemovedBody557_64 RemovedBody557_211

def RemovedBody557_213 : StackLang.HolProg 64 :=
.seq RemovedBody557_63 RemovedBody557_212

def RemovedBody557_214 : StackLang.HolProg 64 :=
.seq RemovedBody557_62 RemovedBody557_213

def RemovedBody557_215 : StackLang.HolProg 64 :=
.seq RemovedBody557_9 RemovedBody557_214

def RemovedBody557_216 : StackLang.HolProg 64 :=
.seq RemovedBody557_8 RemovedBody557_215

def RemovedBody557_217 : StackLang.HolProg 64 :=
.seq RemovedBody557_7 RemovedBody557_216

def RemovedBody557_218 : StackLang.HolProg 64 :=
.seq RemovedBody557_6 RemovedBody557_217

def Removed557 : Nat × StackLang.HolProg 64 := (557, RemovedBody557_218)
theorem Removed557_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc557 = Removed557 := by
  kernel_rfl
#print axioms Removed557_eq
end InitECandidate.Proofs.BackendStages
