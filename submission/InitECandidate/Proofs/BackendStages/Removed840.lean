import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc840
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody840_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody840_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody840_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody840_3 : StackLang.HolProg 64 :=
.seq RemovedBody840_1 RemovedBody840_2

def RemovedBody840_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody840_3 RemovedBody840_4

def RemovedBody840_6 : StackLang.HolProg 64 :=
.seq RemovedBody840_0 RemovedBody840_5

def RemovedBody840_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody840_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def RemovedBody840_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody840_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody840_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody840_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_13 : StackLang.HolProg 64 :=
.seq RemovedBody840_11 RemovedBody840_12

def RemovedBody840_14 : StackLang.HolProg 64 :=
.seq RemovedBody840_10 RemovedBody840_13

def RemovedBody840_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4206#64)

def RemovedBody840_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody840_18 : StackLang.HolProg 64 :=
.seq RemovedBody840_16 RemovedBody840_17

def RemovedBody840_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody840_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody840_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody840_22 : StackLang.HolProg 64 :=
.seq RemovedBody840_20 RemovedBody840_21

def RemovedBody840_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody840_22 RemovedBody840_23

def RemovedBody840_25 : StackLang.HolProg 64 :=
.seq RemovedBody840_19 RemovedBody840_24

def RemovedBody840_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody840_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody840_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 840 3

def RemovedBody840_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody840_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody840_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody840_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody840_35 : StackLang.HolProg 64 :=
.seq RemovedBody840_33 RemovedBody840_34

def RemovedBody840_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody840_37 : StackLang.HolProg 64 :=
.seq RemovedBody840_35 RemovedBody840_36

def RemovedBody840_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody840_39 : StackLang.HolProg 64 :=
.seq RemovedBody840_37 RemovedBody840_38

def RemovedBody840_40 : StackLang.HolProg 64 :=
.seq RemovedBody840_32 RemovedBody840_39

def RemovedBody840_41 : StackLang.HolProg 64 :=
.seq RemovedBody840_31 RemovedBody840_40

def RemovedBody840_42 : StackLang.HolProg 64 :=
.seq RemovedBody840_30 RemovedBody840_41

def RemovedBody840_43 : StackLang.HolProg 64 :=
.seq RemovedBody840_29 RemovedBody840_42

def RemovedBody840_44 : StackLang.HolProg 64 :=
.seq RemovedBody840_28 RemovedBody840_43

def RemovedBody840_45 : StackLang.HolProg 64 :=
.seq RemovedBody840_27 RemovedBody840_44

def RemovedBody840_46 : StackLang.HolProg 64 :=
.seq RemovedBody840_26 RemovedBody840_45

def RemovedBody840_47 : StackLang.HolProg 64 :=
.seq RemovedBody840_25 RemovedBody840_46

def RemovedBody840_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody840_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody840_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody840_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody840_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_57 : StackLang.HolProg 64 :=
.seq RemovedBody840_55 RemovedBody840_56

def RemovedBody840_58 : StackLang.HolProg 64 :=
.seq RemovedBody840_54 RemovedBody840_57

def RemovedBody840_59 : StackLang.HolProg 64 :=
.seq RemovedBody840_53 RemovedBody840_58

def RemovedBody840_60 : StackLang.HolProg 64 :=
.seq RemovedBody840_52 RemovedBody840_59

def RemovedBody840_61 : StackLang.HolProg 64 :=
.seq RemovedBody840_51 RemovedBody840_60

def RemovedBody840_62 : StackLang.HolProg 64 :=
.seq RemovedBody840_50 RemovedBody840_61

def RemovedBody840_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody840_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_65 : StackLang.HolProg 64 :=
.seq RemovedBody840_63 RemovedBody840_64

def RemovedBody840_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody840_67 : StackLang.HolProg 64 :=
.seq RemovedBody840_65 RemovedBody840_66

def RemovedBody840_68 : StackLang.HolProg 64 :=
.call (some (RemovedBody840_62, 0, 840, 2)) (Sum.inl 180) (some (RemovedBody840_67, 840, 3))

def RemovedBody840_69 : StackLang.HolProg 64 :=
.seq RemovedBody840_49 RemovedBody840_68

def RemovedBody840_70 : StackLang.HolProg 64 :=
.seq RemovedBody840_48 RemovedBody840_69

def RemovedBody840_71 : StackLang.HolProg 64 :=
.seq RemovedBody840_47 RemovedBody840_70

def RemovedBody840_72 : StackLang.HolProg 64 :=
.seq RemovedBody840_18 RemovedBody840_71

def RemovedBody840_73 : StackLang.HolProg 64 :=
.seq RemovedBody840_15 RemovedBody840_72

def RemovedBody840_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody840_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody840_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def RemovedBody840_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody840_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody840_82 : StackLang.HolProg 64 :=
.seq RemovedBody840_80 RemovedBody840_81

def RemovedBody840_83 : StackLang.HolProg 64 :=
.seq RemovedBody840_79 RemovedBody840_82

def RemovedBody840_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4207#64)

def RemovedBody840_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody840_87 : StackLang.HolProg 64 :=
.seq RemovedBody840_85 RemovedBody840_86

def RemovedBody840_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody840_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody840_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody840_91 : StackLang.HolProg 64 :=
.seq RemovedBody840_89 RemovedBody840_90

def RemovedBody840_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody840_91 RemovedBody840_92

def RemovedBody840_94 : StackLang.HolProg 64 :=
.seq RemovedBody840_88 RemovedBody840_93

def RemovedBody840_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody840_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody840_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 840 5

def RemovedBody840_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody840_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody840_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody840_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody840_104 : StackLang.HolProg 64 :=
.seq RemovedBody840_102 RemovedBody840_103

def RemovedBody840_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody840_106 : StackLang.HolProg 64 :=
.seq RemovedBody840_104 RemovedBody840_105

def RemovedBody840_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody840_108 : StackLang.HolProg 64 :=
.seq RemovedBody840_106 RemovedBody840_107

def RemovedBody840_109 : StackLang.HolProg 64 :=
.seq RemovedBody840_101 RemovedBody840_108

def RemovedBody840_110 : StackLang.HolProg 64 :=
.seq RemovedBody840_100 RemovedBody840_109

def RemovedBody840_111 : StackLang.HolProg 64 :=
.seq RemovedBody840_99 RemovedBody840_110

def RemovedBody840_112 : StackLang.HolProg 64 :=
.seq RemovedBody840_98 RemovedBody840_111

def RemovedBody840_113 : StackLang.HolProg 64 :=
.seq RemovedBody840_97 RemovedBody840_112

def RemovedBody840_114 : StackLang.HolProg 64 :=
.seq RemovedBody840_96 RemovedBody840_113

def RemovedBody840_115 : StackLang.HolProg 64 :=
.seq RemovedBody840_95 RemovedBody840_114

def RemovedBody840_116 : StackLang.HolProg 64 :=
.seq RemovedBody840_94 RemovedBody840_115

def RemovedBody840_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody840_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody840_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody840_125 : StackLang.HolProg 64 :=
.seq RemovedBody840_123 RemovedBody840_124

def RemovedBody840_126 : StackLang.HolProg 64 :=
.seq RemovedBody840_122 RemovedBody840_125

def RemovedBody840_127 : StackLang.HolProg 64 :=
.seq RemovedBody840_121 RemovedBody840_126

def RemovedBody840_128 : StackLang.HolProg 64 :=
.seq RemovedBody840_120 RemovedBody840_127

def RemovedBody840_129 : StackLang.HolProg 64 :=
.seq RemovedBody840_119 RemovedBody840_128

def RemovedBody840_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody840_132 : StackLang.HolProg 64 :=
.seq RemovedBody840_130 RemovedBody840_131

def RemovedBody840_133 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody840_134 : StackLang.HolProg 64 :=
.seq RemovedBody840_132 RemovedBody840_133

def RemovedBody840_135 : StackLang.HolProg 64 :=
.call (some (RemovedBody840_129, 0, 840, 4)) (Sum.inl 77) (some (RemovedBody840_134, 840, 5))

def RemovedBody840_136 : StackLang.HolProg 64 :=
.seq RemovedBody840_118 RemovedBody840_135

def RemovedBody840_137 : StackLang.HolProg 64 :=
.seq RemovedBody840_117 RemovedBody840_136

def RemovedBody840_138 : StackLang.HolProg 64 :=
.seq RemovedBody840_116 RemovedBody840_137

def RemovedBody840_139 : StackLang.HolProg 64 :=
.seq RemovedBody840_87 RemovedBody840_138

def RemovedBody840_140 : StackLang.HolProg 64 :=
.seq RemovedBody840_84 RemovedBody840_139

def RemovedBody840_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody840_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody840_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_144 : StackLang.HolProg 64 :=
.seq RemovedBody840_142 RemovedBody840_143

def RemovedBody840_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4208#64)

def RemovedBody840_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody840_148 : StackLang.HolProg 64 :=
.seq RemovedBody840_146 RemovedBody840_147

def RemovedBody840_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody840_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody840_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody840_152 : StackLang.HolProg 64 :=
.seq RemovedBody840_150 RemovedBody840_151

def RemovedBody840_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_154 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody840_152 RemovedBody840_153

def RemovedBody840_155 : StackLang.HolProg 64 :=
.seq RemovedBody840_149 RemovedBody840_154

def RemovedBody840_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody840_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody840_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 840 7

def RemovedBody840_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody840_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody840_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody840_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody840_165 : StackLang.HolProg 64 :=
.seq RemovedBody840_163 RemovedBody840_164

def RemovedBody840_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody840_167 : StackLang.HolProg 64 :=
.seq RemovedBody840_165 RemovedBody840_166

def RemovedBody840_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody840_169 : StackLang.HolProg 64 :=
.seq RemovedBody840_167 RemovedBody840_168

def RemovedBody840_170 : StackLang.HolProg 64 :=
.seq RemovedBody840_162 RemovedBody840_169

def RemovedBody840_171 : StackLang.HolProg 64 :=
.seq RemovedBody840_161 RemovedBody840_170

def RemovedBody840_172 : StackLang.HolProg 64 :=
.seq RemovedBody840_160 RemovedBody840_171

def RemovedBody840_173 : StackLang.HolProg 64 :=
.seq RemovedBody840_159 RemovedBody840_172

def RemovedBody840_174 : StackLang.HolProg 64 :=
.seq RemovedBody840_158 RemovedBody840_173

def RemovedBody840_175 : StackLang.HolProg 64 :=
.seq RemovedBody840_157 RemovedBody840_174

def RemovedBody840_176 : StackLang.HolProg 64 :=
.seq RemovedBody840_156 RemovedBody840_175

def RemovedBody840_177 : StackLang.HolProg 64 :=
.seq RemovedBody840_155 RemovedBody840_176

def RemovedBody840_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody840_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody840_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody840_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody840_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_187 : StackLang.HolProg 64 :=
.seq RemovedBody840_185 RemovedBody840_186

def RemovedBody840_188 : StackLang.HolProg 64 :=
.seq RemovedBody840_184 RemovedBody840_187

def RemovedBody840_189 : StackLang.HolProg 64 :=
.seq RemovedBody840_183 RemovedBody840_188

def RemovedBody840_190 : StackLang.HolProg 64 :=
.seq RemovedBody840_182 RemovedBody840_189

def RemovedBody840_191 : StackLang.HolProg 64 :=
.seq RemovedBody840_181 RemovedBody840_190

def RemovedBody840_192 : StackLang.HolProg 64 :=
.seq RemovedBody840_180 RemovedBody840_191

def RemovedBody840_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody840_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody840_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody840_196 : StackLang.HolProg 64 :=
.seq RemovedBody840_194 RemovedBody840_195

def RemovedBody840_197 : StackLang.HolProg 64 :=
.seq RemovedBody840_193 RemovedBody840_196

def RemovedBody840_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody840_199 : StackLang.HolProg 64 :=
.seq RemovedBody840_197 RemovedBody840_198

def RemovedBody840_200 : StackLang.HolProg 64 :=
.call (some (RemovedBody840_192, 0, 840, 6)) (Sum.inl 178) (some (RemovedBody840_199, 840, 7))

def RemovedBody840_201 : StackLang.HolProg 64 :=
.seq RemovedBody840_179 RemovedBody840_200

def RemovedBody840_202 : StackLang.HolProg 64 :=
.seq RemovedBody840_178 RemovedBody840_201

def RemovedBody840_203 : StackLang.HolProg 64 :=
.seq RemovedBody840_177 RemovedBody840_202

def RemovedBody840_204 : StackLang.HolProg 64 :=
.seq RemovedBody840_148 RemovedBody840_203

def RemovedBody840_205 : StackLang.HolProg 64 :=
.seq RemovedBody840_145 RemovedBody840_204

def RemovedBody840_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody840_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody840_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody840_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody840_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody840_212 : StackLang.HolProg 64 :=
.seq RemovedBody840_210 RemovedBody840_211

def RemovedBody840_213 : StackLang.HolProg 64 :=
.seq RemovedBody840_209 RemovedBody840_212

def RemovedBody840_214 : StackLang.HolProg 64 :=
.seq RemovedBody840_208 RemovedBody840_213

def RemovedBody840_215 : StackLang.HolProg 64 :=
.seq RemovedBody840_207 RemovedBody840_214

def RemovedBody840_216 : StackLang.HolProg 64 :=
.seq RemovedBody840_206 RemovedBody840_215

def RemovedBody840_217 : StackLang.HolProg 64 :=
.seq RemovedBody840_205 RemovedBody840_216

def RemovedBody840_218 : StackLang.HolProg 64 :=
.seq RemovedBody840_144 RemovedBody840_217

def RemovedBody840_219 : StackLang.HolProg 64 :=
.seq RemovedBody840_141 RemovedBody840_218

def RemovedBody840_220 : StackLang.HolProg 64 :=
.seq RemovedBody840_140 RemovedBody840_219

def RemovedBody840_221 : StackLang.HolProg 64 :=
.seq RemovedBody840_83 RemovedBody840_220

def RemovedBody840_222 : StackLang.HolProg 64 :=
.seq RemovedBody840_78 RemovedBody840_221

def RemovedBody840_223 : StackLang.HolProg 64 :=
.seq RemovedBody840_77 RemovedBody840_222

def RemovedBody840_224 : StackLang.HolProg 64 :=
.seq RemovedBody840_76 RemovedBody840_223

def RemovedBody840_225 : StackLang.HolProg 64 :=
.seq RemovedBody840_75 RemovedBody840_224

def RemovedBody840_226 : StackLang.HolProg 64 :=
.seq RemovedBody840_74 RemovedBody840_225

def RemovedBody840_227 : StackLang.HolProg 64 :=
.seq RemovedBody840_73 RemovedBody840_226

def RemovedBody840_228 : StackLang.HolProg 64 :=
.seq RemovedBody840_14 RemovedBody840_227

def RemovedBody840_229 : StackLang.HolProg 64 :=
.seq RemovedBody840_9 RemovedBody840_228

def RemovedBody840_230 : StackLang.HolProg 64 :=
.seq RemovedBody840_8 RemovedBody840_229

def RemovedBody840_231 : StackLang.HolProg 64 :=
.seq RemovedBody840_7 RemovedBody840_230

def RemovedBody840_232 : StackLang.HolProg 64 :=
.seq RemovedBody840_6 RemovedBody840_231

def Removed840 : Nat × StackLang.HolProg 64 := (840, RemovedBody840_232)
theorem Removed840_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc840 = Removed840 := by
  kernel_rfl
#print axioms Removed840_eq
end InitECandidate.Proofs.BackendStages
