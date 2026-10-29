import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc847
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody847_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody847_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody847_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody847_3 : StackLang.HolProg 64 :=
.seq RemovedBody847_1 RemovedBody847_2

def RemovedBody847_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody847_3 RemovedBody847_4

def RemovedBody847_6 : StackLang.HolProg 64 :=
.seq RemovedBody847_0 RemovedBody847_5

def RemovedBody847_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody847_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody847_11 : StackLang.HolProg 64 :=
.seq RemovedBody847_9 RemovedBody847_10

def RemovedBody847_12 : StackLang.HolProg 64 :=
.seq RemovedBody847_8 RemovedBody847_11

def RemovedBody847_13 : StackLang.HolProg 64 :=
.seq RemovedBody847_7 RemovedBody847_12

def RemovedBody847_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4236#64)

def RemovedBody847_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody847_17 : StackLang.HolProg 64 :=
.seq RemovedBody847_15 RemovedBody847_16

def RemovedBody847_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody847_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody847_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody847_21 : StackLang.HolProg 64 :=
.seq RemovedBody847_19 RemovedBody847_20

def RemovedBody847_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody847_21 RemovedBody847_22

def RemovedBody847_24 : StackLang.HolProg 64 :=
.seq RemovedBody847_18 RemovedBody847_23

def RemovedBody847_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody847_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody847_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 3

def RemovedBody847_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody847_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody847_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody847_34 : StackLang.HolProg 64 :=
.seq RemovedBody847_32 RemovedBody847_33

def RemovedBody847_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody847_36 : StackLang.HolProg 64 :=
.seq RemovedBody847_34 RemovedBody847_35

def RemovedBody847_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_38 : StackLang.HolProg 64 :=
.seq RemovedBody847_36 RemovedBody847_37

def RemovedBody847_39 : StackLang.HolProg 64 :=
.seq RemovedBody847_31 RemovedBody847_38

def RemovedBody847_40 : StackLang.HolProg 64 :=
.seq RemovedBody847_30 RemovedBody847_39

def RemovedBody847_41 : StackLang.HolProg 64 :=
.seq RemovedBody847_29 RemovedBody847_40

def RemovedBody847_42 : StackLang.HolProg 64 :=
.seq RemovedBody847_28 RemovedBody847_41

def RemovedBody847_43 : StackLang.HolProg 64 :=
.seq RemovedBody847_27 RemovedBody847_42

def RemovedBody847_44 : StackLang.HolProg 64 :=
.seq RemovedBody847_26 RemovedBody847_43

def RemovedBody847_45 : StackLang.HolProg 64 :=
.seq RemovedBody847_25 RemovedBody847_44

def RemovedBody847_46 : StackLang.HolProg 64 :=
.seq RemovedBody847_24 RemovedBody847_45

def RemovedBody847_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody847_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody847_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_55 : StackLang.HolProg 64 :=
.seq RemovedBody847_53 RemovedBody847_54

def RemovedBody847_56 : StackLang.HolProg 64 :=
.seq RemovedBody847_52 RemovedBody847_55

def RemovedBody847_57 : StackLang.HolProg 64 :=
.seq RemovedBody847_51 RemovedBody847_56

def RemovedBody847_58 : StackLang.HolProg 64 :=
.seq RemovedBody847_50 RemovedBody847_57

def RemovedBody847_59 : StackLang.HolProg 64 :=
.seq RemovedBody847_49 RemovedBody847_58

def RemovedBody847_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody847_62 : StackLang.HolProg 64 :=
.seq RemovedBody847_60 RemovedBody847_61

def RemovedBody847_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody847_59, 0, 847, 2)) (Sum.inl 69) (some (RemovedBody847_62, 847, 3))

def RemovedBody847_64 : StackLang.HolProg 64 :=
.seq RemovedBody847_48 RemovedBody847_63

def RemovedBody847_65 : StackLang.HolProg 64 :=
.seq RemovedBody847_47 RemovedBody847_64

def RemovedBody847_66 : StackLang.HolProg 64 :=
.seq RemovedBody847_46 RemovedBody847_65

def RemovedBody847_67 : StackLang.HolProg 64 :=
.seq RemovedBody847_17 RemovedBody847_66

def RemovedBody847_68 : StackLang.HolProg 64 :=
.seq RemovedBody847_14 RemovedBody847_67

def RemovedBody847_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody847_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody847_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody847_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody847_75 : StackLang.HolProg 64 :=
.seq RemovedBody847_73 RemovedBody847_74

def RemovedBody847_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4237#64)

def RemovedBody847_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody847_79 : StackLang.HolProg 64 :=
.seq RemovedBody847_77 RemovedBody847_78

def RemovedBody847_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody847_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody847_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody847_83 : StackLang.HolProg 64 :=
.seq RemovedBody847_81 RemovedBody847_82

def RemovedBody847_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_85 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody847_83 RemovedBody847_84

def RemovedBody847_86 : StackLang.HolProg 64 :=
.seq RemovedBody847_80 RemovedBody847_85

def RemovedBody847_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody847_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody847_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 5

def RemovedBody847_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody847_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody847_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody847_96 : StackLang.HolProg 64 :=
.seq RemovedBody847_94 RemovedBody847_95

def RemovedBody847_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody847_98 : StackLang.HolProg 64 :=
.seq RemovedBody847_96 RemovedBody847_97

def RemovedBody847_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_100 : StackLang.HolProg 64 :=
.seq RemovedBody847_98 RemovedBody847_99

def RemovedBody847_101 : StackLang.HolProg 64 :=
.seq RemovedBody847_93 RemovedBody847_100

def RemovedBody847_102 : StackLang.HolProg 64 :=
.seq RemovedBody847_92 RemovedBody847_101

def RemovedBody847_103 : StackLang.HolProg 64 :=
.seq RemovedBody847_91 RemovedBody847_102

def RemovedBody847_104 : StackLang.HolProg 64 :=
.seq RemovedBody847_90 RemovedBody847_103

def RemovedBody847_105 : StackLang.HolProg 64 :=
.seq RemovedBody847_89 RemovedBody847_104

def RemovedBody847_106 : StackLang.HolProg 64 :=
.seq RemovedBody847_88 RemovedBody847_105

def RemovedBody847_107 : StackLang.HolProg 64 :=
.seq RemovedBody847_87 RemovedBody847_106

def RemovedBody847_108 : StackLang.HolProg 64 :=
.seq RemovedBody847_86 RemovedBody847_107

def RemovedBody847_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody847_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody847_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody847_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_120 : StackLang.HolProg 64 :=
.seq RemovedBody847_118 RemovedBody847_119

def RemovedBody847_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody847_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_123 : StackLang.HolProg 64 :=
.seq RemovedBody847_121 RemovedBody847_122

def RemovedBody847_124 : StackLang.HolProg 64 :=
.seq RemovedBody847_120 RemovedBody847_123

def RemovedBody847_125 : StackLang.HolProg 64 :=
.seq RemovedBody847_117 RemovedBody847_124

def RemovedBody847_126 : StackLang.HolProg 64 :=
.seq RemovedBody847_116 RemovedBody847_125

def RemovedBody847_127 : StackLang.HolProg 64 :=
.seq RemovedBody847_115 RemovedBody847_126

def RemovedBody847_128 : StackLang.HolProg 64 :=
.seq RemovedBody847_114 RemovedBody847_127

def RemovedBody847_129 : StackLang.HolProg 64 :=
.seq RemovedBody847_113 RemovedBody847_128

def RemovedBody847_130 : StackLang.HolProg 64 :=
.seq RemovedBody847_112 RemovedBody847_129

def RemovedBody847_131 : StackLang.HolProg 64 :=
.seq RemovedBody847_111 RemovedBody847_130

def RemovedBody847_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody847_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_136 : StackLang.HolProg 64 :=
.seq RemovedBody847_134 RemovedBody847_135

def RemovedBody847_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody847_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_139 : StackLang.HolProg 64 :=
.seq RemovedBody847_137 RemovedBody847_138

def RemovedBody847_140 : StackLang.HolProg 64 :=
.seq RemovedBody847_136 RemovedBody847_139

def RemovedBody847_141 : StackLang.HolProg 64 :=
.seq RemovedBody847_133 RemovedBody847_140

def RemovedBody847_142 : StackLang.HolProg 64 :=
.seq RemovedBody847_132 RemovedBody847_141

def RemovedBody847_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody847_144 : StackLang.HolProg 64 :=
.seq RemovedBody847_142 RemovedBody847_143

def RemovedBody847_145 : StackLang.HolProg 64 :=
.call (some (RemovedBody847_131, 0, 847, 4)) (Sum.inl 68) (some (RemovedBody847_144, 847, 5))

def RemovedBody847_146 : StackLang.HolProg 64 :=
.seq RemovedBody847_110 RemovedBody847_145

def RemovedBody847_147 : StackLang.HolProg 64 :=
.seq RemovedBody847_109 RemovedBody847_146

def RemovedBody847_148 : StackLang.HolProg 64 :=
.seq RemovedBody847_108 RemovedBody847_147

def RemovedBody847_149 : StackLang.HolProg 64 :=
.seq RemovedBody847_79 RemovedBody847_148

def RemovedBody847_150 : StackLang.HolProg 64 :=
.seq RemovedBody847_76 RemovedBody847_149

def RemovedBody847_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody847_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody847_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody847_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody847_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody847_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody847_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody847_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody847_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def RemovedBody847_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody847_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody847_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_170 : StackLang.HolProg 64 :=
.seq RemovedBody847_168 RemovedBody847_169

def RemovedBody847_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody847_174 : StackLang.HolProg 64 :=
.seq RemovedBody847_172 RemovedBody847_173

def RemovedBody847_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody847_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_177 : StackLang.HolProg 64 :=
.seq RemovedBody847_175 RemovedBody847_176

def RemovedBody847_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody847_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody847_180 : StackLang.HolProg 64 :=
.seq RemovedBody847_178 RemovedBody847_179

def RemovedBody847_181 : StackLang.HolProg 64 :=
.seq RemovedBody847_177 RemovedBody847_180

def RemovedBody847_182 : StackLang.HolProg 64 :=
.seq RemovedBody847_174 RemovedBody847_181

def RemovedBody847_183 : StackLang.HolProg 64 :=
.seq RemovedBody847_171 RemovedBody847_182

def RemovedBody847_184 : StackLang.HolProg 64 :=
.seq RemovedBody847_170 RemovedBody847_183

def RemovedBody847_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4238#64)

def RemovedBody847_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody847_188 : StackLang.HolProg 64 :=
.seq RemovedBody847_186 RemovedBody847_187

def RemovedBody847_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody847_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody847_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody847_192 : StackLang.HolProg 64 :=
.seq RemovedBody847_190 RemovedBody847_191

def RemovedBody847_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody847_192 RemovedBody847_193

def RemovedBody847_195 : StackLang.HolProg 64 :=
.seq RemovedBody847_189 RemovedBody847_194

def RemovedBody847_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody847_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody847_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 7

def RemovedBody847_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody847_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody847_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody847_205 : StackLang.HolProg 64 :=
.seq RemovedBody847_203 RemovedBody847_204

def RemovedBody847_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody847_207 : StackLang.HolProg 64 :=
.seq RemovedBody847_205 RemovedBody847_206

def RemovedBody847_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_209 : StackLang.HolProg 64 :=
.seq RemovedBody847_207 RemovedBody847_208

def RemovedBody847_210 : StackLang.HolProg 64 :=
.seq RemovedBody847_202 RemovedBody847_209

def RemovedBody847_211 : StackLang.HolProg 64 :=
.seq RemovedBody847_201 RemovedBody847_210

def RemovedBody847_212 : StackLang.HolProg 64 :=
.seq RemovedBody847_200 RemovedBody847_211

def RemovedBody847_213 : StackLang.HolProg 64 :=
.seq RemovedBody847_199 RemovedBody847_212

def RemovedBody847_214 : StackLang.HolProg 64 :=
.seq RemovedBody847_198 RemovedBody847_213

def RemovedBody847_215 : StackLang.HolProg 64 :=
.seq RemovedBody847_197 RemovedBody847_214

def RemovedBody847_216 : StackLang.HolProg 64 :=
.seq RemovedBody847_196 RemovedBody847_215

def RemovedBody847_217 : StackLang.HolProg 64 :=
.seq RemovedBody847_195 RemovedBody847_216

def RemovedBody847_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody847_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody847_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody847_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_229 : StackLang.HolProg 64 :=
.seq RemovedBody847_227 RemovedBody847_228

def RemovedBody847_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody847_232 : StackLang.HolProg 64 :=
.seq RemovedBody847_230 RemovedBody847_231

def RemovedBody847_233 : StackLang.HolProg 64 :=
.seq RemovedBody847_229 RemovedBody847_232

def RemovedBody847_234 : StackLang.HolProg 64 :=
.seq RemovedBody847_226 RemovedBody847_233

def RemovedBody847_235 : StackLang.HolProg 64 :=
.seq RemovedBody847_225 RemovedBody847_234

def RemovedBody847_236 : StackLang.HolProg 64 :=
.seq RemovedBody847_224 RemovedBody847_235

def RemovedBody847_237 : StackLang.HolProg 64 :=
.seq RemovedBody847_223 RemovedBody847_236

def RemovedBody847_238 : StackLang.HolProg 64 :=
.seq RemovedBody847_222 RemovedBody847_237

def RemovedBody847_239 : StackLang.HolProg 64 :=
.seq RemovedBody847_221 RemovedBody847_238

def RemovedBody847_240 : StackLang.HolProg 64 :=
.seq RemovedBody847_220 RemovedBody847_239

def RemovedBody847_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody847_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody847_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_246 : StackLang.HolProg 64 :=
.seq RemovedBody847_244 RemovedBody847_245

def RemovedBody847_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody847_249 : StackLang.HolProg 64 :=
.seq RemovedBody847_247 RemovedBody847_248

def RemovedBody847_250 : StackLang.HolProg 64 :=
.seq RemovedBody847_246 RemovedBody847_249

def RemovedBody847_251 : StackLang.HolProg 64 :=
.seq RemovedBody847_243 RemovedBody847_250

def RemovedBody847_252 : StackLang.HolProg 64 :=
.seq RemovedBody847_242 RemovedBody847_251

def RemovedBody847_253 : StackLang.HolProg 64 :=
.seq RemovedBody847_241 RemovedBody847_252

def RemovedBody847_254 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody847_255 : StackLang.HolProg 64 :=
.seq RemovedBody847_253 RemovedBody847_254

def RemovedBody847_256 : StackLang.HolProg 64 :=
.call (some (RemovedBody847_240, 0, 847, 6)) (Sum.inl 153) (some (RemovedBody847_255, 847, 7))

def RemovedBody847_257 : StackLang.HolProg 64 :=
.seq RemovedBody847_219 RemovedBody847_256

def RemovedBody847_258 : StackLang.HolProg 64 :=
.seq RemovedBody847_218 RemovedBody847_257

def RemovedBody847_259 : StackLang.HolProg 64 :=
.seq RemovedBody847_217 RemovedBody847_258

def RemovedBody847_260 : StackLang.HolProg 64 :=
.seq RemovedBody847_188 RemovedBody847_259

def RemovedBody847_261 : StackLang.HolProg 64 :=
.seq RemovedBody847_185 RemovedBody847_260

def RemovedBody847_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody847_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody847_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody847_267 : StackLang.HolProg 64 :=
.seq RemovedBody847_265 RemovedBody847_266

def RemovedBody847_268 : StackLang.HolProg 64 :=
.seq RemovedBody847_264 RemovedBody847_267

def RemovedBody847_269 : StackLang.HolProg 64 :=
.seq RemovedBody847_263 RemovedBody847_268

def RemovedBody847_270 : StackLang.HolProg 64 :=
.seq RemovedBody847_262 RemovedBody847_269

def RemovedBody847_271 : StackLang.HolProg 64 :=
.seq RemovedBody847_261 RemovedBody847_270

def RemovedBody847_272 : StackLang.HolProg 64 :=
.seq RemovedBody847_184 RemovedBody847_271

def RemovedBody847_273 : StackLang.HolProg 64 :=
.seq RemovedBody847_167 RemovedBody847_272

def RemovedBody847_274 : StackLang.HolProg 64 :=
.seq RemovedBody847_166 RemovedBody847_273

def RemovedBody847_275 : StackLang.HolProg 64 :=
.seq RemovedBody847_165 RemovedBody847_274

def RemovedBody847_276 : StackLang.HolProg 64 :=
.seq RemovedBody847_164 RemovedBody847_275

def RemovedBody847_277 : StackLang.HolProg 64 :=
.seq RemovedBody847_163 RemovedBody847_276

def RemovedBody847_278 : StackLang.HolProg 64 :=
.seq RemovedBody847_162 RemovedBody847_277

def RemovedBody847_279 : StackLang.HolProg 64 :=
.seq RemovedBody847_161 RemovedBody847_278

def RemovedBody847_280 : StackLang.HolProg 64 :=
.seq RemovedBody847_160 RemovedBody847_279

def RemovedBody847_281 : StackLang.HolProg 64 :=
.seq RemovedBody847_159 RemovedBody847_280

def RemovedBody847_282 : StackLang.HolProg 64 :=
.seq RemovedBody847_158 RemovedBody847_281

def RemovedBody847_283 : StackLang.HolProg 64 :=
.seq RemovedBody847_157 RemovedBody847_282

def RemovedBody847_284 : StackLang.HolProg 64 :=
.seq RemovedBody847_156 RemovedBody847_283

def RemovedBody847_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody847_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody847_288 : StackLang.HolProg 64 :=
.seq RemovedBody847_286 RemovedBody847_287

def RemovedBody847_289 : StackLang.HolProg 64 :=
.seq RemovedBody847_285 RemovedBody847_288

def RemovedBody847_290 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody847_284 RemovedBody847_289

def RemovedBody847_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody847_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody847_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_295 : StackLang.HolProg 64 :=
.seq RemovedBody847_293 RemovedBody847_294

def RemovedBody847_296 : StackLang.HolProg 64 :=
.seq RemovedBody847_292 RemovedBody847_295

def RemovedBody847_297 : StackLang.HolProg 64 :=
.seq RemovedBody847_291 RemovedBody847_296

def RemovedBody847_298 : StackLang.HolProg 64 :=
.seq RemovedBody847_290 RemovedBody847_297

def RemovedBody847_299 : StackLang.HolProg 64 :=
.seq RemovedBody847_155 RemovedBody847_298

def RemovedBody847_300 : StackLang.HolProg 64 :=
.loop RemovedBody847_299

def RemovedBody847_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody847_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody847_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody847_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody847_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_307 : StackLang.HolProg 64 :=
.seq RemovedBody847_305 RemovedBody847_306

def RemovedBody847_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody847_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody847_310 : StackLang.HolProg 64 :=
.seq RemovedBody847_308 RemovedBody847_309

def RemovedBody847_311 : StackLang.HolProg 64 :=
.seq RemovedBody847_307 RemovedBody847_310

def RemovedBody847_312 : StackLang.HolProg 64 :=
.seq RemovedBody847_304 RemovedBody847_311

def RemovedBody847_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4239#64)

def RemovedBody847_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody847_316 : StackLang.HolProg 64 :=
.seq RemovedBody847_314 RemovedBody847_315

def RemovedBody847_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody847_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody847_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody847_320 : StackLang.HolProg 64 :=
.seq RemovedBody847_318 RemovedBody847_319

def RemovedBody847_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_322 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody847_320 RemovedBody847_321

def RemovedBody847_323 : StackLang.HolProg 64 :=
.seq RemovedBody847_317 RemovedBody847_322

def RemovedBody847_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody847_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody847_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 9

def RemovedBody847_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody847_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody847_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody847_333 : StackLang.HolProg 64 :=
.seq RemovedBody847_331 RemovedBody847_332

def RemovedBody847_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody847_335 : StackLang.HolProg 64 :=
.seq RemovedBody847_333 RemovedBody847_334

def RemovedBody847_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_337 : StackLang.HolProg 64 :=
.seq RemovedBody847_335 RemovedBody847_336

def RemovedBody847_338 : StackLang.HolProg 64 :=
.seq RemovedBody847_330 RemovedBody847_337

def RemovedBody847_339 : StackLang.HolProg 64 :=
.seq RemovedBody847_329 RemovedBody847_338

def RemovedBody847_340 : StackLang.HolProg 64 :=
.seq RemovedBody847_328 RemovedBody847_339

def RemovedBody847_341 : StackLang.HolProg 64 :=
.seq RemovedBody847_327 RemovedBody847_340

def RemovedBody847_342 : StackLang.HolProg 64 :=
.seq RemovedBody847_326 RemovedBody847_341

def RemovedBody847_343 : StackLang.HolProg 64 :=
.seq RemovedBody847_325 RemovedBody847_342

def RemovedBody847_344 : StackLang.HolProg 64 :=
.seq RemovedBody847_324 RemovedBody847_343

def RemovedBody847_345 : StackLang.HolProg 64 :=
.seq RemovedBody847_323 RemovedBody847_344

def RemovedBody847_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody847_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody847_353 : StackLang.HolProg 64 :=
.seq RemovedBody847_351 RemovedBody847_352

def RemovedBody847_354 : StackLang.HolProg 64 :=
.seq RemovedBody847_350 RemovedBody847_353

def RemovedBody847_355 : StackLang.HolProg 64 :=
.seq RemovedBody847_349 RemovedBody847_354

def RemovedBody847_356 : StackLang.HolProg 64 :=
.seq RemovedBody847_348 RemovedBody847_355

def RemovedBody847_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody847_358 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody847_359 : StackLang.HolProg 64 :=
.seq RemovedBody847_357 RemovedBody847_358

def RemovedBody847_360 : StackLang.HolProg 64 :=
.call (some (RemovedBody847_356, 0, 847, 8)) (Sum.inl 153) (some (RemovedBody847_359, 847, 9))

def RemovedBody847_361 : StackLang.HolProg 64 :=
.seq RemovedBody847_347 RemovedBody847_360

def RemovedBody847_362 : StackLang.HolProg 64 :=
.seq RemovedBody847_346 RemovedBody847_361

def RemovedBody847_363 : StackLang.HolProg 64 :=
.seq RemovedBody847_345 RemovedBody847_362

def RemovedBody847_364 : StackLang.HolProg 64 :=
.seq RemovedBody847_316 RemovedBody847_363

def RemovedBody847_365 : StackLang.HolProg 64 :=
.seq RemovedBody847_313 RemovedBody847_364

def RemovedBody847_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody847_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody847_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4240#64)

def RemovedBody847_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody847_371 : StackLang.HolProg 64 :=
.seq RemovedBody847_369 RemovedBody847_370

def RemovedBody847_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody847_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody847_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody847_375 : StackLang.HolProg 64 :=
.seq RemovedBody847_373 RemovedBody847_374

def RemovedBody847_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_377 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody847_375 RemovedBody847_376

def RemovedBody847_378 : StackLang.HolProg 64 :=
.seq RemovedBody847_372 RemovedBody847_377

def RemovedBody847_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody847_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody847_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 11

def RemovedBody847_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody847_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody847_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody847_388 : StackLang.HolProg 64 :=
.seq RemovedBody847_386 RemovedBody847_387

def RemovedBody847_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody847_390 : StackLang.HolProg 64 :=
.seq RemovedBody847_388 RemovedBody847_389

def RemovedBody847_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_392 : StackLang.HolProg 64 :=
.seq RemovedBody847_390 RemovedBody847_391

def RemovedBody847_393 : StackLang.HolProg 64 :=
.seq RemovedBody847_385 RemovedBody847_392

def RemovedBody847_394 : StackLang.HolProg 64 :=
.seq RemovedBody847_384 RemovedBody847_393

def RemovedBody847_395 : StackLang.HolProg 64 :=
.seq RemovedBody847_383 RemovedBody847_394

def RemovedBody847_396 : StackLang.HolProg 64 :=
.seq RemovedBody847_382 RemovedBody847_395

def RemovedBody847_397 : StackLang.HolProg 64 :=
.seq RemovedBody847_381 RemovedBody847_396

def RemovedBody847_398 : StackLang.HolProg 64 :=
.seq RemovedBody847_380 RemovedBody847_397

def RemovedBody847_399 : StackLang.HolProg 64 :=
.seq RemovedBody847_379 RemovedBody847_398

def RemovedBody847_400 : StackLang.HolProg 64 :=
.seq RemovedBody847_378 RemovedBody847_399

def RemovedBody847_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody847_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody847_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody847_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_408 : StackLang.HolProg 64 :=
.seq RemovedBody847_406 RemovedBody847_407

def RemovedBody847_409 : StackLang.HolProg 64 :=
.seq RemovedBody847_405 RemovedBody847_408

def RemovedBody847_410 : StackLang.HolProg 64 :=
.seq RemovedBody847_404 RemovedBody847_409

def RemovedBody847_411 : StackLang.HolProg 64 :=
.seq RemovedBody847_403 RemovedBody847_410

def RemovedBody847_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody847_413 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody847_414 : StackLang.HolProg 64 :=
.seq RemovedBody847_412 RemovedBody847_413

def RemovedBody847_415 : StackLang.HolProg 64 :=
.call (some (RemovedBody847_411, 0, 847, 10)) (Sum.inl 70) (some (RemovedBody847_414, 847, 11))

def RemovedBody847_416 : StackLang.HolProg 64 :=
.seq RemovedBody847_402 RemovedBody847_415

def RemovedBody847_417 : StackLang.HolProg 64 :=
.seq RemovedBody847_401 RemovedBody847_416

def RemovedBody847_418 : StackLang.HolProg 64 :=
.seq RemovedBody847_400 RemovedBody847_417

def RemovedBody847_419 : StackLang.HolProg 64 :=
.seq RemovedBody847_371 RemovedBody847_418

def RemovedBody847_420 : StackLang.HolProg 64 :=
.seq RemovedBody847_368 RemovedBody847_419

def RemovedBody847_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody847_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody847_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody847_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody847_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody847_426 : StackLang.HolProg 64 :=
.seq RemovedBody847_424 RemovedBody847_425

def RemovedBody847_427 : StackLang.HolProg 64 :=
.seq RemovedBody847_423 RemovedBody847_426

def RemovedBody847_428 : StackLang.HolProg 64 :=
.seq RemovedBody847_422 RemovedBody847_427

def RemovedBody847_429 : StackLang.HolProg 64 :=
.seq RemovedBody847_421 RemovedBody847_428

def RemovedBody847_430 : StackLang.HolProg 64 :=
.seq RemovedBody847_420 RemovedBody847_429

def RemovedBody847_431 : StackLang.HolProg 64 :=
.seq RemovedBody847_367 RemovedBody847_430

def RemovedBody847_432 : StackLang.HolProg 64 :=
.seq RemovedBody847_366 RemovedBody847_431

def RemovedBody847_433 : StackLang.HolProg 64 :=
.seq RemovedBody847_365 RemovedBody847_432

def RemovedBody847_434 : StackLang.HolProg 64 :=
.seq RemovedBody847_312 RemovedBody847_433

def RemovedBody847_435 : StackLang.HolProg 64 :=
.seq RemovedBody847_303 RemovedBody847_434

def RemovedBody847_436 : StackLang.HolProg 64 :=
.seq RemovedBody847_302 RemovedBody847_435

def RemovedBody847_437 : StackLang.HolProg 64 :=
.seq RemovedBody847_301 RemovedBody847_436

def RemovedBody847_438 : StackLang.HolProg 64 :=
.seq RemovedBody847_300 RemovedBody847_437

def RemovedBody847_439 : StackLang.HolProg 64 :=
.seq RemovedBody847_154 RemovedBody847_438

def RemovedBody847_440 : StackLang.HolProg 64 :=
.seq RemovedBody847_153 RemovedBody847_439

def RemovedBody847_441 : StackLang.HolProg 64 :=
.seq RemovedBody847_152 RemovedBody847_440

def RemovedBody847_442 : StackLang.HolProg 64 :=
.seq RemovedBody847_151 RemovedBody847_441

def RemovedBody847_443 : StackLang.HolProg 64 :=
.seq RemovedBody847_150 RemovedBody847_442

def RemovedBody847_444 : StackLang.HolProg 64 :=
.seq RemovedBody847_75 RemovedBody847_443

def RemovedBody847_445 : StackLang.HolProg 64 :=
.seq RemovedBody847_72 RemovedBody847_444

def RemovedBody847_446 : StackLang.HolProg 64 :=
.seq RemovedBody847_71 RemovedBody847_445

def RemovedBody847_447 : StackLang.HolProg 64 :=
.seq RemovedBody847_70 RemovedBody847_446

def RemovedBody847_448 : StackLang.HolProg 64 :=
.seq RemovedBody847_69 RemovedBody847_447

def RemovedBody847_449 : StackLang.HolProg 64 :=
.seq RemovedBody847_68 RemovedBody847_448

def RemovedBody847_450 : StackLang.HolProg 64 :=
.seq RemovedBody847_13 RemovedBody847_449

def RemovedBody847_451 : StackLang.HolProg 64 :=
.seq RemovedBody847_6 RemovedBody847_450

def Removed847 : Nat × StackLang.HolProg 64 := (847, RemovedBody847_451)
theorem Removed847_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc847 = Removed847 := by
  kernel_rfl
#print axioms Removed847_eq
end InitECandidate.Proofs.BackendStages
