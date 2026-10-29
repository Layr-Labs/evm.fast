import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc620
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody620_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody620_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody620_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody620_3 : StackLang.HolProg 64 :=
.seq RemovedBody620_1 RemovedBody620_2

def RemovedBody620_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody620_3 RemovedBody620_4

def RemovedBody620_6 : StackLang.HolProg 64 :=
.seq RemovedBody620_0 RemovedBody620_5

def RemovedBody620_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody620_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody620_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody620_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody620_12 : StackLang.HolProg 64 :=
.seq RemovedBody620_10 RemovedBody620_11

def RemovedBody620_13 : StackLang.HolProg 64 :=
.seq RemovedBody620_9 RemovedBody620_12

def RemovedBody620_14 : StackLang.HolProg 64 :=
.seq RemovedBody620_8 RemovedBody620_13

def RemovedBody620_15 : StackLang.HolProg 64 :=
.seq RemovedBody620_7 RemovedBody620_14

def RemovedBody620_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2429#64)

def RemovedBody620_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody620_19 : StackLang.HolProg 64 :=
.seq RemovedBody620_17 RemovedBody620_18

def RemovedBody620_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody620_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody620_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody620_23 : StackLang.HolProg 64 :=
.seq RemovedBody620_21 RemovedBody620_22

def RemovedBody620_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody620_23 RemovedBody620_24

def RemovedBody620_26 : StackLang.HolProg 64 :=
.seq RemovedBody620_20 RemovedBody620_25

def RemovedBody620_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody620_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody620_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 3

def RemovedBody620_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody620_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody620_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody620_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody620_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody620_36 : StackLang.HolProg 64 :=
.seq RemovedBody620_34 RemovedBody620_35

def RemovedBody620_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody620_38 : StackLang.HolProg 64 :=
.seq RemovedBody620_36 RemovedBody620_37

def RemovedBody620_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody620_40 : StackLang.HolProg 64 :=
.seq RemovedBody620_38 RemovedBody620_39

def RemovedBody620_41 : StackLang.HolProg 64 :=
.seq RemovedBody620_33 RemovedBody620_40

def RemovedBody620_42 : StackLang.HolProg 64 :=
.seq RemovedBody620_32 RemovedBody620_41

def RemovedBody620_43 : StackLang.HolProg 64 :=
.seq RemovedBody620_31 RemovedBody620_42

def RemovedBody620_44 : StackLang.HolProg 64 :=
.seq RemovedBody620_30 RemovedBody620_43

def RemovedBody620_45 : StackLang.HolProg 64 :=
.seq RemovedBody620_29 RemovedBody620_44

def RemovedBody620_46 : StackLang.HolProg 64 :=
.seq RemovedBody620_28 RemovedBody620_45

def RemovedBody620_47 : StackLang.HolProg 64 :=
.seq RemovedBody620_27 RemovedBody620_46

def RemovedBody620_48 : StackLang.HolProg 64 :=
.seq RemovedBody620_26 RemovedBody620_47

def RemovedBody620_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody620_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody620_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody620_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody620_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody620_58 : StackLang.HolProg 64 :=
.seq RemovedBody620_56 RemovedBody620_57

def RemovedBody620_59 : StackLang.HolProg 64 :=
.seq RemovedBody620_55 RemovedBody620_58

def RemovedBody620_60 : StackLang.HolProg 64 :=
.seq RemovedBody620_54 RemovedBody620_59

def RemovedBody620_61 : StackLang.HolProg 64 :=
.seq RemovedBody620_53 RemovedBody620_60

def RemovedBody620_62 : StackLang.HolProg 64 :=
.seq RemovedBody620_52 RemovedBody620_61

def RemovedBody620_63 : StackLang.HolProg 64 :=
.seq RemovedBody620_51 RemovedBody620_62

def RemovedBody620_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody620_66 : StackLang.HolProg 64 :=
.seq RemovedBody620_64 RemovedBody620_65

def RemovedBody620_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody620_68 : StackLang.HolProg 64 :=
.seq RemovedBody620_66 RemovedBody620_67

def RemovedBody620_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody620_63, 0, 620, 2)) (Sum.inl 102) (some (RemovedBody620_68, 620, 3))

def RemovedBody620_70 : StackLang.HolProg 64 :=
.seq RemovedBody620_50 RemovedBody620_69

def RemovedBody620_71 : StackLang.HolProg 64 :=
.seq RemovedBody620_49 RemovedBody620_70

def RemovedBody620_72 : StackLang.HolProg 64 :=
.seq RemovedBody620_48 RemovedBody620_71

def RemovedBody620_73 : StackLang.HolProg 64 :=
.seq RemovedBody620_19 RemovedBody620_72

def RemovedBody620_74 : StackLang.HolProg 64 :=
.seq RemovedBody620_16 RemovedBody620_73

def RemovedBody620_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody620_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody620_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2300#64)

def RemovedBody620_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody620_82 : StackLang.HolProg 64 :=
.seq RemovedBody620_80 RemovedBody620_81

def RemovedBody620_83 : StackLang.HolProg 64 :=
.seq RemovedBody620_79 RemovedBody620_82

def RemovedBody620_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody620_86 : StackLang.HolProg 64 :=
.seq RemovedBody620_84 RemovedBody620_85

def RemovedBody620_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody620_83 RemovedBody620_86

def RemovedBody620_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody620_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody620_92 : StackLang.HolProg 64 :=
.seq RemovedBody620_90 RemovedBody620_91

def RemovedBody620_93 : StackLang.HolProg 64 :=
.seq RemovedBody620_89 RemovedBody620_92

def RemovedBody620_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2430#64)

def RemovedBody620_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody620_97 : StackLang.HolProg 64 :=
.seq RemovedBody620_95 RemovedBody620_96

def RemovedBody620_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody620_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody620_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody620_101 : StackLang.HolProg 64 :=
.seq RemovedBody620_99 RemovedBody620_100

def RemovedBody620_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody620_101 RemovedBody620_102

def RemovedBody620_104 : StackLang.HolProg 64 :=
.seq RemovedBody620_98 RemovedBody620_103

def RemovedBody620_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody620_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody620_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 5

def RemovedBody620_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody620_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody620_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody620_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody620_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody620_114 : StackLang.HolProg 64 :=
.seq RemovedBody620_112 RemovedBody620_113

def RemovedBody620_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody620_116 : StackLang.HolProg 64 :=
.seq RemovedBody620_114 RemovedBody620_115

def RemovedBody620_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody620_118 : StackLang.HolProg 64 :=
.seq RemovedBody620_116 RemovedBody620_117

def RemovedBody620_119 : StackLang.HolProg 64 :=
.seq RemovedBody620_111 RemovedBody620_118

def RemovedBody620_120 : StackLang.HolProg 64 :=
.seq RemovedBody620_110 RemovedBody620_119

def RemovedBody620_121 : StackLang.HolProg 64 :=
.seq RemovedBody620_109 RemovedBody620_120

def RemovedBody620_122 : StackLang.HolProg 64 :=
.seq RemovedBody620_108 RemovedBody620_121

def RemovedBody620_123 : StackLang.HolProg 64 :=
.seq RemovedBody620_107 RemovedBody620_122

def RemovedBody620_124 : StackLang.HolProg 64 :=
.seq RemovedBody620_106 RemovedBody620_123

def RemovedBody620_125 : StackLang.HolProg 64 :=
.seq RemovedBody620_105 RemovedBody620_124

def RemovedBody620_126 : StackLang.HolProg 64 :=
.seq RemovedBody620_104 RemovedBody620_125

def RemovedBody620_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody620_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody620_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody620_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody620_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody620_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_137 : StackLang.HolProg 64 :=
.seq RemovedBody620_135 RemovedBody620_136

def RemovedBody620_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody620_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody620_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody620_141 : StackLang.HolProg 64 :=
.seq RemovedBody620_139 RemovedBody620_140

def RemovedBody620_142 : StackLang.HolProg 64 :=
.seq RemovedBody620_138 RemovedBody620_141

def RemovedBody620_143 : StackLang.HolProg 64 :=
.seq RemovedBody620_137 RemovedBody620_142

def RemovedBody620_144 : StackLang.HolProg 64 :=
.seq RemovedBody620_134 RemovedBody620_143

def RemovedBody620_145 : StackLang.HolProg 64 :=
.seq RemovedBody620_133 RemovedBody620_144

def RemovedBody620_146 : StackLang.HolProg 64 :=
.seq RemovedBody620_132 RemovedBody620_145

def RemovedBody620_147 : StackLang.HolProg 64 :=
.seq RemovedBody620_131 RemovedBody620_146

def RemovedBody620_148 : StackLang.HolProg 64 :=
.seq RemovedBody620_130 RemovedBody620_147

def RemovedBody620_149 : StackLang.HolProg 64 :=
.seq RemovedBody620_129 RemovedBody620_148

def RemovedBody620_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody620_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_153 : StackLang.HolProg 64 :=
.seq RemovedBody620_151 RemovedBody620_152

def RemovedBody620_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody620_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody620_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody620_157 : StackLang.HolProg 64 :=
.seq RemovedBody620_155 RemovedBody620_156

def RemovedBody620_158 : StackLang.HolProg 64 :=
.seq RemovedBody620_154 RemovedBody620_157

def RemovedBody620_159 : StackLang.HolProg 64 :=
.seq RemovedBody620_153 RemovedBody620_158

def RemovedBody620_160 : StackLang.HolProg 64 :=
.seq RemovedBody620_150 RemovedBody620_159

def RemovedBody620_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody620_162 : StackLang.HolProg 64 :=
.seq RemovedBody620_160 RemovedBody620_161

def RemovedBody620_163 : StackLang.HolProg 64 :=
.call (some (RemovedBody620_149, 0, 620, 4)) (Sum.inl 463) (some (RemovedBody620_162, 620, 5))

def RemovedBody620_164 : StackLang.HolProg 64 :=
.seq RemovedBody620_128 RemovedBody620_163

def RemovedBody620_165 : StackLang.HolProg 64 :=
.seq RemovedBody620_127 RemovedBody620_164

def RemovedBody620_166 : StackLang.HolProg 64 :=
.seq RemovedBody620_126 RemovedBody620_165

def RemovedBody620_167 : StackLang.HolProg 64 :=
.seq RemovedBody620_97 RemovedBody620_166

def RemovedBody620_168 : StackLang.HolProg 64 :=
.seq RemovedBody620_94 RemovedBody620_167

def RemovedBody620_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody620_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody620_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody620_175 : StackLang.HolProg 64 :=
.seq RemovedBody620_173 RemovedBody620_174

def RemovedBody620_176 : StackLang.HolProg 64 :=
.seq RemovedBody620_172 RemovedBody620_175

def RemovedBody620_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2431#64)

def RemovedBody620_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody620_180 : StackLang.HolProg 64 :=
.seq RemovedBody620_178 RemovedBody620_179

def RemovedBody620_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody620_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody620_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody620_184 : StackLang.HolProg 64 :=
.seq RemovedBody620_182 RemovedBody620_183

def RemovedBody620_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody620_184 RemovedBody620_185

def RemovedBody620_187 : StackLang.HolProg 64 :=
.seq RemovedBody620_181 RemovedBody620_186

def RemovedBody620_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody620_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody620_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 7

def RemovedBody620_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody620_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody620_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody620_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody620_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody620_197 : StackLang.HolProg 64 :=
.seq RemovedBody620_195 RemovedBody620_196

def RemovedBody620_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody620_199 : StackLang.HolProg 64 :=
.seq RemovedBody620_197 RemovedBody620_198

def RemovedBody620_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody620_201 : StackLang.HolProg 64 :=
.seq RemovedBody620_199 RemovedBody620_200

def RemovedBody620_202 : StackLang.HolProg 64 :=
.seq RemovedBody620_194 RemovedBody620_201

def RemovedBody620_203 : StackLang.HolProg 64 :=
.seq RemovedBody620_193 RemovedBody620_202

def RemovedBody620_204 : StackLang.HolProg 64 :=
.seq RemovedBody620_192 RemovedBody620_203

def RemovedBody620_205 : StackLang.HolProg 64 :=
.seq RemovedBody620_191 RemovedBody620_204

def RemovedBody620_206 : StackLang.HolProg 64 :=
.seq RemovedBody620_190 RemovedBody620_205

def RemovedBody620_207 : StackLang.HolProg 64 :=
.seq RemovedBody620_189 RemovedBody620_206

def RemovedBody620_208 : StackLang.HolProg 64 :=
.seq RemovedBody620_188 RemovedBody620_207

def RemovedBody620_209 : StackLang.HolProg 64 :=
.seq RemovedBody620_187 RemovedBody620_208

def RemovedBody620_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody620_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody620_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody620_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody620_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody620_219 : StackLang.HolProg 64 :=
.seq RemovedBody620_217 RemovedBody620_218

def RemovedBody620_220 : StackLang.HolProg 64 :=
.seq RemovedBody620_216 RemovedBody620_219

def RemovedBody620_221 : StackLang.HolProg 64 :=
.seq RemovedBody620_215 RemovedBody620_220

def RemovedBody620_222 : StackLang.HolProg 64 :=
.seq RemovedBody620_214 RemovedBody620_221

def RemovedBody620_223 : StackLang.HolProg 64 :=
.seq RemovedBody620_213 RemovedBody620_222

def RemovedBody620_224 : StackLang.HolProg 64 :=
.seq RemovedBody620_212 RemovedBody620_223

def RemovedBody620_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody620_227 : StackLang.HolProg 64 :=
.seq RemovedBody620_225 RemovedBody620_226

def RemovedBody620_228 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody620_229 : StackLang.HolProg 64 :=
.seq RemovedBody620_227 RemovedBody620_228

def RemovedBody620_230 : StackLang.HolProg 64 :=
.call (some (RemovedBody620_224, 0, 620, 6)) (Sum.inl 463) (some (RemovedBody620_229, 620, 7))

def RemovedBody620_231 : StackLang.HolProg 64 :=
.seq RemovedBody620_211 RemovedBody620_230

def RemovedBody620_232 : StackLang.HolProg 64 :=
.seq RemovedBody620_210 RemovedBody620_231

def RemovedBody620_233 : StackLang.HolProg 64 :=
.seq RemovedBody620_209 RemovedBody620_232

def RemovedBody620_234 : StackLang.HolProg 64 :=
.seq RemovedBody620_180 RemovedBody620_233

def RemovedBody620_235 : StackLang.HolProg 64 :=
.seq RemovedBody620_177 RemovedBody620_234

def RemovedBody620_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody620_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_239 : StackLang.HolProg 64 :=
.seq RemovedBody620_237 RemovedBody620_238

def RemovedBody620_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2432#64)

def RemovedBody620_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody620_243 : StackLang.HolProg 64 :=
.seq RemovedBody620_241 RemovedBody620_242

def RemovedBody620_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody620_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody620_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody620_247 : StackLang.HolProg 64 :=
.seq RemovedBody620_245 RemovedBody620_246

def RemovedBody620_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_249 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody620_247 RemovedBody620_248

def RemovedBody620_250 : StackLang.HolProg 64 :=
.seq RemovedBody620_244 RemovedBody620_249

def RemovedBody620_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody620_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody620_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 9

def RemovedBody620_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody620_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody620_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody620_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody620_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody620_260 : StackLang.HolProg 64 :=
.seq RemovedBody620_258 RemovedBody620_259

def RemovedBody620_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody620_262 : StackLang.HolProg 64 :=
.seq RemovedBody620_260 RemovedBody620_261

def RemovedBody620_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody620_264 : StackLang.HolProg 64 :=
.seq RemovedBody620_262 RemovedBody620_263

def RemovedBody620_265 : StackLang.HolProg 64 :=
.seq RemovedBody620_257 RemovedBody620_264

def RemovedBody620_266 : StackLang.HolProg 64 :=
.seq RemovedBody620_256 RemovedBody620_265

def RemovedBody620_267 : StackLang.HolProg 64 :=
.seq RemovedBody620_255 RemovedBody620_266

def RemovedBody620_268 : StackLang.HolProg 64 :=
.seq RemovedBody620_254 RemovedBody620_267

def RemovedBody620_269 : StackLang.HolProg 64 :=
.seq RemovedBody620_253 RemovedBody620_268

def RemovedBody620_270 : StackLang.HolProg 64 :=
.seq RemovedBody620_252 RemovedBody620_269

def RemovedBody620_271 : StackLang.HolProg 64 :=
.seq RemovedBody620_251 RemovedBody620_270

def RemovedBody620_272 : StackLang.HolProg 64 :=
.seq RemovedBody620_250 RemovedBody620_271

def RemovedBody620_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody620_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody620_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody620_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody620_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody620_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_282 : StackLang.HolProg 64 :=
.seq RemovedBody620_280 RemovedBody620_281

def RemovedBody620_283 : StackLang.HolProg 64 :=
.seq RemovedBody620_279 RemovedBody620_282

def RemovedBody620_284 : StackLang.HolProg 64 :=
.seq RemovedBody620_278 RemovedBody620_283

def RemovedBody620_285 : StackLang.HolProg 64 :=
.seq RemovedBody620_277 RemovedBody620_284

def RemovedBody620_286 : StackLang.HolProg 64 :=
.seq RemovedBody620_276 RemovedBody620_285

def RemovedBody620_287 : StackLang.HolProg 64 :=
.seq RemovedBody620_275 RemovedBody620_286

def RemovedBody620_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody620_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_290 : StackLang.HolProg 64 :=
.seq RemovedBody620_288 RemovedBody620_289

def RemovedBody620_291 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody620_292 : StackLang.HolProg 64 :=
.seq RemovedBody620_290 RemovedBody620_291

def RemovedBody620_293 : StackLang.HolProg 64 :=
.call (some (RemovedBody620_287, 0, 620, 8)) (Sum.inl 463) (some (RemovedBody620_292, 620, 9))

def RemovedBody620_294 : StackLang.HolProg 64 :=
.seq RemovedBody620_274 RemovedBody620_293

def RemovedBody620_295 : StackLang.HolProg 64 :=
.seq RemovedBody620_273 RemovedBody620_294

def RemovedBody620_296 : StackLang.HolProg 64 :=
.seq RemovedBody620_272 RemovedBody620_295

def RemovedBody620_297 : StackLang.HolProg 64 :=
.seq RemovedBody620_243 RemovedBody620_296

def RemovedBody620_298 : StackLang.HolProg 64 :=
.seq RemovedBody620_240 RemovedBody620_297

def RemovedBody620_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody620_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody620_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def RemovedBody620_303 : StackLang.HolProg 64 :=
.seq RemovedBody620_301 RemovedBody620_302

def RemovedBody620_304 : StackLang.HolProg 64 :=
.seq RemovedBody620_300 RemovedBody620_303

def RemovedBody620_305 : StackLang.HolProg 64 :=
.seq RemovedBody620_299 RemovedBody620_304

def RemovedBody620_306 : StackLang.HolProg 64 :=
.seq RemovedBody620_298 RemovedBody620_305

def RemovedBody620_307 : StackLang.HolProg 64 :=
.seq RemovedBody620_239 RemovedBody620_306

def RemovedBody620_308 : StackLang.HolProg 64 :=
.seq RemovedBody620_236 RemovedBody620_307

def RemovedBody620_309 : StackLang.HolProg 64 :=
.seq RemovedBody620_235 RemovedBody620_308

def RemovedBody620_310 : StackLang.HolProg 64 :=
.seq RemovedBody620_176 RemovedBody620_309

def RemovedBody620_311 : StackLang.HolProg 64 :=
.seq RemovedBody620_171 RemovedBody620_310

def RemovedBody620_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody620_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody620_314 : StackLang.HolProg 64 :=
.seq RemovedBody620_312 RemovedBody620_313

def RemovedBody620_315 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody620_311 RemovedBody620_314

def RemovedBody620_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody620_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody620_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody620_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody620_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody620_328 : StackLang.HolProg 64 :=
.seq RemovedBody620_326 RemovedBody620_327

def RemovedBody620_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_331 : StackLang.HolProg 64 :=
.seq RemovedBody620_329 RemovedBody620_330

def RemovedBody620_332 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody620_328 RemovedBody620_331

def RemovedBody620_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody620_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody620_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody620_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody620_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody620_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def RemovedBody620_341 : StackLang.HolProg 64 :=
.seq RemovedBody620_339 RemovedBody620_340

def RemovedBody620_342 : StackLang.HolProg 64 :=
.seq RemovedBody620_338 RemovedBody620_341

def RemovedBody620_343 : StackLang.HolProg 64 :=
.seq RemovedBody620_337 RemovedBody620_342

def RemovedBody620_344 : StackLang.HolProg 64 :=
.seq RemovedBody620_336 RemovedBody620_343

def RemovedBody620_345 : StackLang.HolProg 64 :=
.seq RemovedBody620_335 RemovedBody620_344

def RemovedBody620_346 : StackLang.HolProg 64 :=
.seq RemovedBody620_334 RemovedBody620_345

def RemovedBody620_347 : StackLang.HolProg 64 :=
.seq RemovedBody620_333 RemovedBody620_346

def RemovedBody620_348 : StackLang.HolProg 64 :=
.seq RemovedBody620_332 RemovedBody620_347

def RemovedBody620_349 : StackLang.HolProg 64 :=
.seq RemovedBody620_325 RemovedBody620_348

def RemovedBody620_350 : StackLang.HolProg 64 :=
.seq RemovedBody620_324 RemovedBody620_349

def RemovedBody620_351 : StackLang.HolProg 64 :=
.seq RemovedBody620_323 RemovedBody620_350

def RemovedBody620_352 : StackLang.HolProg 64 :=
.seq RemovedBody620_322 RemovedBody620_351

def RemovedBody620_353 : StackLang.HolProg 64 :=
.seq RemovedBody620_321 RemovedBody620_352

def RemovedBody620_354 : StackLang.HolProg 64 :=
.seq RemovedBody620_320 RemovedBody620_353

def RemovedBody620_355 : StackLang.HolProg 64 :=
.seq RemovedBody620_319 RemovedBody620_354

def RemovedBody620_356 : StackLang.HolProg 64 :=
.seq RemovedBody620_318 RemovedBody620_355

def RemovedBody620_357 : StackLang.HolProg 64 :=
.seq RemovedBody620_317 RemovedBody620_356

def RemovedBody620_358 : StackLang.HolProg 64 :=
.seq RemovedBody620_316 RemovedBody620_357

def RemovedBody620_359 : StackLang.HolProg 64 :=
.seq RemovedBody620_315 RemovedBody620_358

def RemovedBody620_360 : StackLang.HolProg 64 :=
.seq RemovedBody620_170 RemovedBody620_359

def RemovedBody620_361 : StackLang.HolProg 64 :=
.seq RemovedBody620_169 RemovedBody620_360

def RemovedBody620_362 : StackLang.HolProg 64 :=
.seq RemovedBody620_168 RemovedBody620_361

def RemovedBody620_363 : StackLang.HolProg 64 :=
.seq RemovedBody620_93 RemovedBody620_362

def RemovedBody620_364 : StackLang.HolProg 64 :=
.seq RemovedBody620_88 RemovedBody620_363

def RemovedBody620_365 : StackLang.HolProg 64 :=
.seq RemovedBody620_87 RemovedBody620_364

def RemovedBody620_366 : StackLang.HolProg 64 :=
.seq RemovedBody620_78 RemovedBody620_365

def RemovedBody620_367 : StackLang.HolProg 64 :=
.seq RemovedBody620_77 RemovedBody620_366

def RemovedBody620_368 : StackLang.HolProg 64 :=
.seq RemovedBody620_76 RemovedBody620_367

def RemovedBody620_369 : StackLang.HolProg 64 :=
.seq RemovedBody620_75 RemovedBody620_368

def RemovedBody620_370 : StackLang.HolProg 64 :=
.seq RemovedBody620_74 RemovedBody620_369

def RemovedBody620_371 : StackLang.HolProg 64 :=
.seq RemovedBody620_15 RemovedBody620_370

def RemovedBody620_372 : StackLang.HolProg 64 :=
.seq RemovedBody620_6 RemovedBody620_371

def Removed620 : Nat × StackLang.HolProg 64 := (620, RemovedBody620_372)
theorem Removed620_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc620 = Removed620 := by
  kernel_rfl
#print axioms Removed620_eq
end InitECandidate.Proofs.BackendStages
