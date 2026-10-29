import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc453
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody453_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody453_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody453_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody453_3 : StackLang.HolProg 64 :=
.seq RemovedBody453_1 RemovedBody453_2

def RemovedBody453_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody453_3 RemovedBody453_4

def RemovedBody453_6 : StackLang.HolProg 64 :=
.seq RemovedBody453_0 RemovedBody453_5

def RemovedBody453_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody453_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody453_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody453_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody453_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551400#64))

def RemovedBody453_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody453_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody453_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody453_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_16 : StackLang.HolProg 64 :=
.seq RemovedBody453_14 RemovedBody453_15

def RemovedBody453_17 : StackLang.HolProg 64 :=
.seq RemovedBody453_13 RemovedBody453_16

def RemovedBody453_18 : StackLang.HolProg 64 :=
.seq RemovedBody453_12 RemovedBody453_17

def RemovedBody453_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1376#64)

def RemovedBody453_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody453_22 : StackLang.HolProg 64 :=
.seq RemovedBody453_20 RemovedBody453_21

def RemovedBody453_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody453_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody453_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody453_26 : StackLang.HolProg 64 :=
.seq RemovedBody453_24 RemovedBody453_25

def RemovedBody453_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody453_26 RemovedBody453_27

def RemovedBody453_29 : StackLang.HolProg 64 :=
.seq RemovedBody453_23 RemovedBody453_28

def RemovedBody453_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody453_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody453_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 3

def RemovedBody453_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody453_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody453_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody453_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody453_39 : StackLang.HolProg 64 :=
.seq RemovedBody453_37 RemovedBody453_38

def RemovedBody453_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody453_41 : StackLang.HolProg 64 :=
.seq RemovedBody453_39 RemovedBody453_40

def RemovedBody453_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody453_43 : StackLang.HolProg 64 :=
.seq RemovedBody453_41 RemovedBody453_42

def RemovedBody453_44 : StackLang.HolProg 64 :=
.seq RemovedBody453_36 RemovedBody453_43

def RemovedBody453_45 : StackLang.HolProg 64 :=
.seq RemovedBody453_35 RemovedBody453_44

def RemovedBody453_46 : StackLang.HolProg 64 :=
.seq RemovedBody453_34 RemovedBody453_45

def RemovedBody453_47 : StackLang.HolProg 64 :=
.seq RemovedBody453_33 RemovedBody453_46

def RemovedBody453_48 : StackLang.HolProg 64 :=
.seq RemovedBody453_32 RemovedBody453_47

def RemovedBody453_49 : StackLang.HolProg 64 :=
.seq RemovedBody453_31 RemovedBody453_48

def RemovedBody453_50 : StackLang.HolProg 64 :=
.seq RemovedBody453_30 RemovedBody453_49

def RemovedBody453_51 : StackLang.HolProg 64 :=
.seq RemovedBody453_29 RemovedBody453_50

def RemovedBody453_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody453_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody453_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody453_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody453_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody453_61 : StackLang.HolProg 64 :=
.seq RemovedBody453_59 RemovedBody453_60

def RemovedBody453_62 : StackLang.HolProg 64 :=
.seq RemovedBody453_58 RemovedBody453_61

def RemovedBody453_63 : StackLang.HolProg 64 :=
.seq RemovedBody453_57 RemovedBody453_62

def RemovedBody453_64 : StackLang.HolProg 64 :=
.seq RemovedBody453_56 RemovedBody453_63

def RemovedBody453_65 : StackLang.HolProg 64 :=
.seq RemovedBody453_55 RemovedBody453_64

def RemovedBody453_66 : StackLang.HolProg 64 :=
.seq RemovedBody453_54 RemovedBody453_65

def RemovedBody453_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody453_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody453_69 : StackLang.HolProg 64 :=
.seq RemovedBody453_67 RemovedBody453_68

def RemovedBody453_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody453_71 : StackLang.HolProg 64 :=
.seq RemovedBody453_69 RemovedBody453_70

def RemovedBody453_72 : StackLang.HolProg 64 :=
.call (some (RemovedBody453_66, 0, 453, 2)) (Sum.inl 186) (some (RemovedBody453_71, 453, 3))

def RemovedBody453_73 : StackLang.HolProg 64 :=
.seq RemovedBody453_53 RemovedBody453_72

def RemovedBody453_74 : StackLang.HolProg 64 :=
.seq RemovedBody453_52 RemovedBody453_73

def RemovedBody453_75 : StackLang.HolProg 64 :=
.seq RemovedBody453_51 RemovedBody453_74

def RemovedBody453_76 : StackLang.HolProg 64 :=
.seq RemovedBody453_22 RemovedBody453_75

def RemovedBody453_77 : StackLang.HolProg 64 :=
.seq RemovedBody453_19 RemovedBody453_76

def RemovedBody453_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody453_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody453_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody453_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody453_86 : StackLang.HolProg 64 :=
.seq RemovedBody453_84 RemovedBody453_85

def RemovedBody453_87 : StackLang.HolProg 64 :=
.seq RemovedBody453_83 RemovedBody453_86

def RemovedBody453_88 : StackLang.HolProg 64 :=
.seq RemovedBody453_82 RemovedBody453_87

def RemovedBody453_89 : StackLang.HolProg 64 :=
.seq RemovedBody453_81 RemovedBody453_88

def RemovedBody453_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody453_89 RemovedBody453_90

def RemovedBody453_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody453_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody453_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody453_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody453_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody453_100 : StackLang.HolProg 64 :=
.seq RemovedBody453_98 RemovedBody453_99

def RemovedBody453_101 : StackLang.HolProg 64 :=
.seq RemovedBody453_97 RemovedBody453_100

def RemovedBody453_102 : StackLang.HolProg 64 :=
.seq RemovedBody453_96 RemovedBody453_101

def RemovedBody453_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1377#64)

def RemovedBody453_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody453_106 : StackLang.HolProg 64 :=
.seq RemovedBody453_104 RemovedBody453_105

def RemovedBody453_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody453_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody453_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody453_110 : StackLang.HolProg 64 :=
.seq RemovedBody453_108 RemovedBody453_109

def RemovedBody453_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody453_110 RemovedBody453_111

def RemovedBody453_113 : StackLang.HolProg 64 :=
.seq RemovedBody453_107 RemovedBody453_112

def RemovedBody453_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody453_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody453_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 5

def RemovedBody453_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody453_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody453_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody453_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody453_123 : StackLang.HolProg 64 :=
.seq RemovedBody453_121 RemovedBody453_122

def RemovedBody453_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody453_125 : StackLang.HolProg 64 :=
.seq RemovedBody453_123 RemovedBody453_124

def RemovedBody453_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody453_127 : StackLang.HolProg 64 :=
.seq RemovedBody453_125 RemovedBody453_126

def RemovedBody453_128 : StackLang.HolProg 64 :=
.seq RemovedBody453_120 RemovedBody453_127

def RemovedBody453_129 : StackLang.HolProg 64 :=
.seq RemovedBody453_119 RemovedBody453_128

def RemovedBody453_130 : StackLang.HolProg 64 :=
.seq RemovedBody453_118 RemovedBody453_129

def RemovedBody453_131 : StackLang.HolProg 64 :=
.seq RemovedBody453_117 RemovedBody453_130

def RemovedBody453_132 : StackLang.HolProg 64 :=
.seq RemovedBody453_116 RemovedBody453_131

def RemovedBody453_133 : StackLang.HolProg 64 :=
.seq RemovedBody453_115 RemovedBody453_132

def RemovedBody453_134 : StackLang.HolProg 64 :=
.seq RemovedBody453_114 RemovedBody453_133

def RemovedBody453_135 : StackLang.HolProg 64 :=
.seq RemovedBody453_113 RemovedBody453_134

def RemovedBody453_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody453_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody453_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody453_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody453_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_145 : StackLang.HolProg 64 :=
.seq RemovedBody453_143 RemovedBody453_144

def RemovedBody453_146 : StackLang.HolProg 64 :=
.seq RemovedBody453_142 RemovedBody453_145

def RemovedBody453_147 : StackLang.HolProg 64 :=
.seq RemovedBody453_141 RemovedBody453_146

def RemovedBody453_148 : StackLang.HolProg 64 :=
.seq RemovedBody453_140 RemovedBody453_147

def RemovedBody453_149 : StackLang.HolProg 64 :=
.seq RemovedBody453_139 RemovedBody453_148

def RemovedBody453_150 : StackLang.HolProg 64 :=
.seq RemovedBody453_138 RemovedBody453_149

def RemovedBody453_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody453_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_153 : StackLang.HolProg 64 :=
.seq RemovedBody453_151 RemovedBody453_152

def RemovedBody453_154 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody453_155 : StackLang.HolProg 64 :=
.seq RemovedBody453_153 RemovedBody453_154

def RemovedBody453_156 : StackLang.HolProg 64 :=
.call (some (RemovedBody453_150, 0, 453, 4)) (Sum.inl 186) (some (RemovedBody453_155, 453, 5))

def RemovedBody453_157 : StackLang.HolProg 64 :=
.seq RemovedBody453_137 RemovedBody453_156

def RemovedBody453_158 : StackLang.HolProg 64 :=
.seq RemovedBody453_136 RemovedBody453_157

def RemovedBody453_159 : StackLang.HolProg 64 :=
.seq RemovedBody453_135 RemovedBody453_158

def RemovedBody453_160 : StackLang.HolProg 64 :=
.seq RemovedBody453_106 RemovedBody453_159

def RemovedBody453_161 : StackLang.HolProg 64 :=
.seq RemovedBody453_103 RemovedBody453_160

def RemovedBody453_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody453_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody453_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody453_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody453_170 : StackLang.HolProg 64 :=
.seq RemovedBody453_168 RemovedBody453_169

def RemovedBody453_171 : StackLang.HolProg 64 :=
.seq RemovedBody453_167 RemovedBody453_170

def RemovedBody453_172 : StackLang.HolProg 64 :=
.seq RemovedBody453_166 RemovedBody453_171

def RemovedBody453_173 : StackLang.HolProg 64 :=
.seq RemovedBody453_165 RemovedBody453_172

def RemovedBody453_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_175 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody453_173 RemovedBody453_174

def RemovedBody453_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody453_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 40#64)

def RemovedBody453_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody453_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_182 : StackLang.HolProg 64 :=
.seq RemovedBody453_180 RemovedBody453_181

def RemovedBody453_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1378#64)

def RemovedBody453_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody453_186 : StackLang.HolProg 64 :=
.seq RemovedBody453_184 RemovedBody453_185

def RemovedBody453_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody453_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody453_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody453_190 : StackLang.HolProg 64 :=
.seq RemovedBody453_188 RemovedBody453_189

def RemovedBody453_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_192 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody453_190 RemovedBody453_191

def RemovedBody453_193 : StackLang.HolProg 64 :=
.seq RemovedBody453_187 RemovedBody453_192

def RemovedBody453_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody453_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody453_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 7

def RemovedBody453_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody453_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody453_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody453_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody453_203 : StackLang.HolProg 64 :=
.seq RemovedBody453_201 RemovedBody453_202

def RemovedBody453_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody453_205 : StackLang.HolProg 64 :=
.seq RemovedBody453_203 RemovedBody453_204

def RemovedBody453_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody453_207 : StackLang.HolProg 64 :=
.seq RemovedBody453_205 RemovedBody453_206

def RemovedBody453_208 : StackLang.HolProg 64 :=
.seq RemovedBody453_200 RemovedBody453_207

def RemovedBody453_209 : StackLang.HolProg 64 :=
.seq RemovedBody453_199 RemovedBody453_208

def RemovedBody453_210 : StackLang.HolProg 64 :=
.seq RemovedBody453_198 RemovedBody453_209

def RemovedBody453_211 : StackLang.HolProg 64 :=
.seq RemovedBody453_197 RemovedBody453_210

def RemovedBody453_212 : StackLang.HolProg 64 :=
.seq RemovedBody453_196 RemovedBody453_211

def RemovedBody453_213 : StackLang.HolProg 64 :=
.seq RemovedBody453_195 RemovedBody453_212

def RemovedBody453_214 : StackLang.HolProg 64 :=
.seq RemovedBody453_194 RemovedBody453_213

def RemovedBody453_215 : StackLang.HolProg 64 :=
.seq RemovedBody453_193 RemovedBody453_214

def RemovedBody453_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody453_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody453_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody453_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody453_225 : StackLang.HolProg 64 :=
.seq RemovedBody453_223 RemovedBody453_224

def RemovedBody453_226 : StackLang.HolProg 64 :=
.seq RemovedBody453_222 RemovedBody453_225

def RemovedBody453_227 : StackLang.HolProg 64 :=
.seq RemovedBody453_221 RemovedBody453_226

def RemovedBody453_228 : StackLang.HolProg 64 :=
.seq RemovedBody453_220 RemovedBody453_227

def RemovedBody453_229 : StackLang.HolProg 64 :=
.seq RemovedBody453_219 RemovedBody453_228

def RemovedBody453_230 : StackLang.HolProg 64 :=
.seq RemovedBody453_218 RemovedBody453_229

def RemovedBody453_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody453_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody453_234 : StackLang.HolProg 64 :=
.seq RemovedBody453_232 RemovedBody453_233

def RemovedBody453_235 : StackLang.HolProg 64 :=
.seq RemovedBody453_231 RemovedBody453_234

def RemovedBody453_236 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody453_237 : StackLang.HolProg 64 :=
.seq RemovedBody453_235 RemovedBody453_236

def RemovedBody453_238 : StackLang.HolProg 64 :=
.call (some (RemovedBody453_230, 0, 453, 6)) (Sum.inl 451) (some (RemovedBody453_237, 453, 7))

def RemovedBody453_239 : StackLang.HolProg 64 :=
.seq RemovedBody453_217 RemovedBody453_238

def RemovedBody453_240 : StackLang.HolProg 64 :=
.seq RemovedBody453_216 RemovedBody453_239

def RemovedBody453_241 : StackLang.HolProg 64 :=
.seq RemovedBody453_215 RemovedBody453_240

def RemovedBody453_242 : StackLang.HolProg 64 :=
.seq RemovedBody453_186 RemovedBody453_241

def RemovedBody453_243 : StackLang.HolProg 64 :=
.seq RemovedBody453_183 RemovedBody453_242

def RemovedBody453_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody453_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody453_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody453_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1379#64)

def RemovedBody453_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody453_253 : StackLang.HolProg 64 :=
.seq RemovedBody453_251 RemovedBody453_252

def RemovedBody453_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody453_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody453_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody453_257 : StackLang.HolProg 64 :=
.seq RemovedBody453_255 RemovedBody453_256

def RemovedBody453_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_259 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody453_257 RemovedBody453_258

def RemovedBody453_260 : StackLang.HolProg 64 :=
.seq RemovedBody453_254 RemovedBody453_259

def RemovedBody453_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody453_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody453_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 9

def RemovedBody453_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody453_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody453_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody453_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody453_270 : StackLang.HolProg 64 :=
.seq RemovedBody453_268 RemovedBody453_269

def RemovedBody453_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody453_272 : StackLang.HolProg 64 :=
.seq RemovedBody453_270 RemovedBody453_271

def RemovedBody453_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody453_274 : StackLang.HolProg 64 :=
.seq RemovedBody453_272 RemovedBody453_273

def RemovedBody453_275 : StackLang.HolProg 64 :=
.seq RemovedBody453_267 RemovedBody453_274

def RemovedBody453_276 : StackLang.HolProg 64 :=
.seq RemovedBody453_266 RemovedBody453_275

def RemovedBody453_277 : StackLang.HolProg 64 :=
.seq RemovedBody453_265 RemovedBody453_276

def RemovedBody453_278 : StackLang.HolProg 64 :=
.seq RemovedBody453_264 RemovedBody453_277

def RemovedBody453_279 : StackLang.HolProg 64 :=
.seq RemovedBody453_263 RemovedBody453_278

def RemovedBody453_280 : StackLang.HolProg 64 :=
.seq RemovedBody453_262 RemovedBody453_279

def RemovedBody453_281 : StackLang.HolProg 64 :=
.seq RemovedBody453_261 RemovedBody453_280

def RemovedBody453_282 : StackLang.HolProg 64 :=
.seq RemovedBody453_260 RemovedBody453_281

def RemovedBody453_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody453_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody453_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody453_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody453_290 : StackLang.HolProg 64 :=
.seq RemovedBody453_288 RemovedBody453_289

def RemovedBody453_291 : StackLang.HolProg 64 :=
.seq RemovedBody453_287 RemovedBody453_290

def RemovedBody453_292 : StackLang.HolProg 64 :=
.seq RemovedBody453_286 RemovedBody453_291

def RemovedBody453_293 : StackLang.HolProg 64 :=
.seq RemovedBody453_285 RemovedBody453_292

def RemovedBody453_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody453_295 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody453_296 : StackLang.HolProg 64 :=
.seq RemovedBody453_294 RemovedBody453_295

def RemovedBody453_297 : StackLang.HolProg 64 :=
.call (some (RemovedBody453_293, 0, 453, 8)) (Sum.inl 193) (some (RemovedBody453_296, 453, 9))

def RemovedBody453_298 : StackLang.HolProg 64 :=
.seq RemovedBody453_284 RemovedBody453_297

def RemovedBody453_299 : StackLang.HolProg 64 :=
.seq RemovedBody453_283 RemovedBody453_298

def RemovedBody453_300 : StackLang.HolProg 64 :=
.seq RemovedBody453_282 RemovedBody453_299

def RemovedBody453_301 : StackLang.HolProg 64 :=
.seq RemovedBody453_253 RemovedBody453_300

def RemovedBody453_302 : StackLang.HolProg 64 :=
.seq RemovedBody453_250 RemovedBody453_301

def RemovedBody453_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_305 : StackLang.HolProg 64 :=
.seq RemovedBody453_303 RemovedBody453_304

def RemovedBody453_306 : StackLang.HolProg 64 :=
.seq RemovedBody453_302 RemovedBody453_305

def RemovedBody453_307 : StackLang.HolProg 64 :=
.seq RemovedBody453_249 RemovedBody453_306

def RemovedBody453_308 : StackLang.HolProg 64 :=
.seq RemovedBody453_248 RemovedBody453_307

def RemovedBody453_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody453_311 : StackLang.HolProg 64 :=
.seq RemovedBody453_309 RemovedBody453_310

def RemovedBody453_312 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody453_308 RemovedBody453_311

def RemovedBody453_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody453_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody453_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody453_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody453_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody453_318 : StackLang.HolProg 64 :=
.seq RemovedBody453_316 RemovedBody453_317

def RemovedBody453_319 : StackLang.HolProg 64 :=
.seq RemovedBody453_315 RemovedBody453_318

def RemovedBody453_320 : StackLang.HolProg 64 :=
.seq RemovedBody453_314 RemovedBody453_319

def RemovedBody453_321 : StackLang.HolProg 64 :=
.seq RemovedBody453_313 RemovedBody453_320

def RemovedBody453_322 : StackLang.HolProg 64 :=
.seq RemovedBody453_312 RemovedBody453_321

def RemovedBody453_323 : StackLang.HolProg 64 :=
.seq RemovedBody453_247 RemovedBody453_322

def RemovedBody453_324 : StackLang.HolProg 64 :=
.seq RemovedBody453_246 RemovedBody453_323

def RemovedBody453_325 : StackLang.HolProg 64 :=
.seq RemovedBody453_245 RemovedBody453_324

def RemovedBody453_326 : StackLang.HolProg 64 :=
.seq RemovedBody453_244 RemovedBody453_325

def RemovedBody453_327 : StackLang.HolProg 64 :=
.seq RemovedBody453_243 RemovedBody453_326

def RemovedBody453_328 : StackLang.HolProg 64 :=
.seq RemovedBody453_182 RemovedBody453_327

def RemovedBody453_329 : StackLang.HolProg 64 :=
.seq RemovedBody453_179 RemovedBody453_328

def RemovedBody453_330 : StackLang.HolProg 64 :=
.seq RemovedBody453_178 RemovedBody453_329

def RemovedBody453_331 : StackLang.HolProg 64 :=
.seq RemovedBody453_177 RemovedBody453_330

def RemovedBody453_332 : StackLang.HolProg 64 :=
.seq RemovedBody453_176 RemovedBody453_331

def RemovedBody453_333 : StackLang.HolProg 64 :=
.seq RemovedBody453_175 RemovedBody453_332

def RemovedBody453_334 : StackLang.HolProg 64 :=
.seq RemovedBody453_164 RemovedBody453_333

def RemovedBody453_335 : StackLang.HolProg 64 :=
.seq RemovedBody453_163 RemovedBody453_334

def RemovedBody453_336 : StackLang.HolProg 64 :=
.seq RemovedBody453_162 RemovedBody453_335

def RemovedBody453_337 : StackLang.HolProg 64 :=
.seq RemovedBody453_161 RemovedBody453_336

def RemovedBody453_338 : StackLang.HolProg 64 :=
.seq RemovedBody453_102 RemovedBody453_337

def RemovedBody453_339 : StackLang.HolProg 64 :=
.seq RemovedBody453_95 RemovedBody453_338

def RemovedBody453_340 : StackLang.HolProg 64 :=
.seq RemovedBody453_94 RemovedBody453_339

def RemovedBody453_341 : StackLang.HolProg 64 :=
.seq RemovedBody453_93 RemovedBody453_340

def RemovedBody453_342 : StackLang.HolProg 64 :=
.seq RemovedBody453_92 RemovedBody453_341

def RemovedBody453_343 : StackLang.HolProg 64 :=
.seq RemovedBody453_91 RemovedBody453_342

def RemovedBody453_344 : StackLang.HolProg 64 :=
.seq RemovedBody453_80 RemovedBody453_343

def RemovedBody453_345 : StackLang.HolProg 64 :=
.seq RemovedBody453_79 RemovedBody453_344

def RemovedBody453_346 : StackLang.HolProg 64 :=
.seq RemovedBody453_78 RemovedBody453_345

def RemovedBody453_347 : StackLang.HolProg 64 :=
.seq RemovedBody453_77 RemovedBody453_346

def RemovedBody453_348 : StackLang.HolProg 64 :=
.seq RemovedBody453_18 RemovedBody453_347

def RemovedBody453_349 : StackLang.HolProg 64 :=
.seq RemovedBody453_11 RemovedBody453_348

def RemovedBody453_350 : StackLang.HolProg 64 :=
.seq RemovedBody453_10 RemovedBody453_349

def RemovedBody453_351 : StackLang.HolProg 64 :=
.seq RemovedBody453_9 RemovedBody453_350

def RemovedBody453_352 : StackLang.HolProg 64 :=
.seq RemovedBody453_8 RemovedBody453_351

def RemovedBody453_353 : StackLang.HolProg 64 :=
.seq RemovedBody453_7 RemovedBody453_352

def RemovedBody453_354 : StackLang.HolProg 64 :=
.seq RemovedBody453_6 RemovedBody453_353

def Removed453 : Nat × StackLang.HolProg 64 := (453, RemovedBody453_354)
theorem Removed453_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc453 = Removed453 := by
  kernel_rfl
#print axioms Removed453_eq
end InitECandidate.Proofs.BackendStages
