import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc670
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody670_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody670_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody670_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody670_3 : StackLang.HolProg 64 :=
.seq RemovedBody670_1 RemovedBody670_2

def RemovedBody670_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody670_3 RemovedBody670_4

def RemovedBody670_6 : StackLang.HolProg 64 :=
.seq RemovedBody670_0 RemovedBody670_5

def RemovedBody670_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody670_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody670_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody670_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody670_11 : StackLang.HolProg 64 :=
.seq RemovedBody670_9 RemovedBody670_10

def RemovedBody670_12 : StackLang.HolProg 64 :=
.seq RemovedBody670_8 RemovedBody670_11

def RemovedBody670_13 : StackLang.HolProg 64 :=
.seq RemovedBody670_7 RemovedBody670_12

def RemovedBody670_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody670_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody670_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody670_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 8#64))

def RemovedBody670_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 16#64))

def RemovedBody670_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 24#64))

def RemovedBody670_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody670_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def RemovedBody670_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def RemovedBody670_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def RemovedBody670_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody670_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody670_34 : StackLang.HolProg 64 :=
.seq RemovedBody670_32 RemovedBody670_33

def RemovedBody670_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2783#64)

def RemovedBody670_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody670_38 : StackLang.HolProg 64 :=
.seq RemovedBody670_36 RemovedBody670_37

def RemovedBody670_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody670_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody670_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody670_42 : StackLang.HolProg 64 :=
.seq RemovedBody670_40 RemovedBody670_41

def RemovedBody670_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_44 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody670_42 RemovedBody670_43

def RemovedBody670_45 : StackLang.HolProg 64 :=
.seq RemovedBody670_39 RemovedBody670_44

def RemovedBody670_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody670_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody670_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 670 3

def RemovedBody670_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody670_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody670_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody670_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody670_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody670_55 : StackLang.HolProg 64 :=
.seq RemovedBody670_53 RemovedBody670_54

def RemovedBody670_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody670_57 : StackLang.HolProg 64 :=
.seq RemovedBody670_55 RemovedBody670_56

def RemovedBody670_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody670_59 : StackLang.HolProg 64 :=
.seq RemovedBody670_57 RemovedBody670_58

def RemovedBody670_60 : StackLang.HolProg 64 :=
.seq RemovedBody670_52 RemovedBody670_59

def RemovedBody670_61 : StackLang.HolProg 64 :=
.seq RemovedBody670_51 RemovedBody670_60

def RemovedBody670_62 : StackLang.HolProg 64 :=
.seq RemovedBody670_50 RemovedBody670_61

def RemovedBody670_63 : StackLang.HolProg 64 :=
.seq RemovedBody670_49 RemovedBody670_62

def RemovedBody670_64 : StackLang.HolProg 64 :=
.seq RemovedBody670_48 RemovedBody670_63

def RemovedBody670_65 : StackLang.HolProg 64 :=
.seq RemovedBody670_47 RemovedBody670_64

def RemovedBody670_66 : StackLang.HolProg 64 :=
.seq RemovedBody670_46 RemovedBody670_65

def RemovedBody670_67 : StackLang.HolProg 64 :=
.seq RemovedBody670_45 RemovedBody670_66

def RemovedBody670_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody670_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody670_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody670_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody670_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody670_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody670_77 : StackLang.HolProg 64 :=
.seq RemovedBody670_75 RemovedBody670_76

def RemovedBody670_78 : StackLang.HolProg 64 :=
.seq RemovedBody670_74 RemovedBody670_77

def RemovedBody670_79 : StackLang.HolProg 64 :=
.seq RemovedBody670_73 RemovedBody670_78

def RemovedBody670_80 : StackLang.HolProg 64 :=
.seq RemovedBody670_72 RemovedBody670_79

def RemovedBody670_81 : StackLang.HolProg 64 :=
.seq RemovedBody670_71 RemovedBody670_80

def RemovedBody670_82 : StackLang.HolProg 64 :=
.seq RemovedBody670_70 RemovedBody670_81

def RemovedBody670_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody670_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody670_85 : StackLang.HolProg 64 :=
.seq RemovedBody670_83 RemovedBody670_84

def RemovedBody670_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody670_87 : StackLang.HolProg 64 :=
.seq RemovedBody670_85 RemovedBody670_86

def RemovedBody670_88 : StackLang.HolProg 64 :=
.call (some (RemovedBody670_82, 0, 670, 2)) (Sum.inl 661) (some (RemovedBody670_87, 670, 3))

def RemovedBody670_89 : StackLang.HolProg 64 :=
.seq RemovedBody670_69 RemovedBody670_88

def RemovedBody670_90 : StackLang.HolProg 64 :=
.seq RemovedBody670_68 RemovedBody670_89

def RemovedBody670_91 : StackLang.HolProg 64 :=
.seq RemovedBody670_67 RemovedBody670_90

def RemovedBody670_92 : StackLang.HolProg 64 :=
.seq RemovedBody670_38 RemovedBody670_91

def RemovedBody670_93 : StackLang.HolProg 64 :=
.seq RemovedBody670_35 RemovedBody670_92

def RemovedBody670_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody670_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody670_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody670_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody670_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody670_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody670_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody670_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def RemovedBody670_107 : StackLang.HolProg 64 :=
.seq RemovedBody670_105 RemovedBody670_106

def RemovedBody670_108 : StackLang.HolProg 64 :=
.seq RemovedBody670_104 RemovedBody670_107

def RemovedBody670_109 : StackLang.HolProg 64 :=
.seq RemovedBody670_103 RemovedBody670_108

def RemovedBody670_110 : StackLang.HolProg 64 :=
.seq RemovedBody670_102 RemovedBody670_109

def RemovedBody670_111 : StackLang.HolProg 64 :=
.seq RemovedBody670_101 RemovedBody670_110

def RemovedBody670_112 : StackLang.HolProg 64 :=
.seq RemovedBody670_100 RemovedBody670_111

def RemovedBody670_113 : StackLang.HolProg 64 :=
.seq RemovedBody670_99 RemovedBody670_112

def RemovedBody670_114 : StackLang.HolProg 64 :=
.seq RemovedBody670_98 RemovedBody670_113

def RemovedBody670_115 : StackLang.HolProg 64 :=
.seq RemovedBody670_97 RemovedBody670_114

def RemovedBody670_116 : StackLang.HolProg 64 :=
.seq RemovedBody670_96 RemovedBody670_115

def RemovedBody670_117 : StackLang.HolProg 64 :=
.seq RemovedBody670_95 RemovedBody670_116

def RemovedBody670_118 : StackLang.HolProg 64 :=
.seq RemovedBody670_94 RemovedBody670_117

def RemovedBody670_119 : StackLang.HolProg 64 :=
.seq RemovedBody670_93 RemovedBody670_118

def RemovedBody670_120 : StackLang.HolProg 64 :=
.seq RemovedBody670_34 RemovedBody670_119

def RemovedBody670_121 : StackLang.HolProg 64 :=
.seq RemovedBody670_31 RemovedBody670_120

def RemovedBody670_122 : StackLang.HolProg 64 :=
.seq RemovedBody670_30 RemovedBody670_121

def RemovedBody670_123 : StackLang.HolProg 64 :=
.seq RemovedBody670_29 RemovedBody670_122

def RemovedBody670_124 : StackLang.HolProg 64 :=
.seq RemovedBody670_28 RemovedBody670_123

def RemovedBody670_125 : StackLang.HolProg 64 :=
.seq RemovedBody670_27 RemovedBody670_124

def RemovedBody670_126 : StackLang.HolProg 64 :=
.seq RemovedBody670_26 RemovedBody670_125

def RemovedBody670_127 : StackLang.HolProg 64 :=
.seq RemovedBody670_25 RemovedBody670_126

def RemovedBody670_128 : StackLang.HolProg 64 :=
.seq RemovedBody670_24 RemovedBody670_127

def RemovedBody670_129 : StackLang.HolProg 64 :=
.seq RemovedBody670_23 RemovedBody670_128

def RemovedBody670_130 : StackLang.HolProg 64 :=
.seq RemovedBody670_22 RemovedBody670_129

def RemovedBody670_131 : StackLang.HolProg 64 :=
.seq RemovedBody670_21 RemovedBody670_130

def RemovedBody670_132 : StackLang.HolProg 64 :=
.seq RemovedBody670_20 RemovedBody670_131

def RemovedBody670_133 : StackLang.HolProg 64 :=
.seq RemovedBody670_19 RemovedBody670_132

def RemovedBody670_134 : StackLang.HolProg 64 :=
.seq RemovedBody670_18 RemovedBody670_133

def RemovedBody670_135 : StackLang.HolProg 64 :=
.seq RemovedBody670_17 RemovedBody670_134

def RemovedBody670_136 : StackLang.HolProg 64 :=
.seq RemovedBody670_16 RemovedBody670_135

def RemovedBody670_137 : StackLang.HolProg 64 :=
.seq RemovedBody670_15 RemovedBody670_136

def RemovedBody670_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody670_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody670_137 RemovedBody670_138

def RemovedBody670_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody670_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody670_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2#64)

def RemovedBody670_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody670_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody670_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody670_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody670_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody670_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody670_150 : StackLang.HolProg 64 :=
.seq RemovedBody670_148 RemovedBody670_149

def RemovedBody670_151 : StackLang.HolProg 64 :=
.seq RemovedBody670_147 RemovedBody670_150

def RemovedBody670_152 : StackLang.HolProg 64 :=
.seq RemovedBody670_146 RemovedBody670_151

def RemovedBody670_153 : StackLang.HolProg 64 :=
.seq RemovedBody670_145 RemovedBody670_152

def RemovedBody670_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2784#64)

def RemovedBody670_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody670_157 : StackLang.HolProg 64 :=
.seq RemovedBody670_155 RemovedBody670_156

def RemovedBody670_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody670_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody670_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody670_161 : StackLang.HolProg 64 :=
.seq RemovedBody670_159 RemovedBody670_160

def RemovedBody670_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody670_161 RemovedBody670_162

def RemovedBody670_164 : StackLang.HolProg 64 :=
.seq RemovedBody670_158 RemovedBody670_163

def RemovedBody670_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody670_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody670_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 670 5

def RemovedBody670_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody670_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody670_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody670_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody670_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody670_174 : StackLang.HolProg 64 :=
.seq RemovedBody670_172 RemovedBody670_173

def RemovedBody670_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody670_176 : StackLang.HolProg 64 :=
.seq RemovedBody670_174 RemovedBody670_175

def RemovedBody670_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody670_178 : StackLang.HolProg 64 :=
.seq RemovedBody670_176 RemovedBody670_177

def RemovedBody670_179 : StackLang.HolProg 64 :=
.seq RemovedBody670_171 RemovedBody670_178

def RemovedBody670_180 : StackLang.HolProg 64 :=
.seq RemovedBody670_170 RemovedBody670_179

def RemovedBody670_181 : StackLang.HolProg 64 :=
.seq RemovedBody670_169 RemovedBody670_180

def RemovedBody670_182 : StackLang.HolProg 64 :=
.seq RemovedBody670_168 RemovedBody670_181

def RemovedBody670_183 : StackLang.HolProg 64 :=
.seq RemovedBody670_167 RemovedBody670_182

def RemovedBody670_184 : StackLang.HolProg 64 :=
.seq RemovedBody670_166 RemovedBody670_183

def RemovedBody670_185 : StackLang.HolProg 64 :=
.seq RemovedBody670_165 RemovedBody670_184

def RemovedBody670_186 : StackLang.HolProg 64 :=
.seq RemovedBody670_164 RemovedBody670_185

def RemovedBody670_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody670_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody670_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody670_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody670_194 : StackLang.HolProg 64 :=
.seq RemovedBody670_192 RemovedBody670_193

def RemovedBody670_195 : StackLang.HolProg 64 :=
.seq RemovedBody670_191 RemovedBody670_194

def RemovedBody670_196 : StackLang.HolProg 64 :=
.seq RemovedBody670_190 RemovedBody670_195

def RemovedBody670_197 : StackLang.HolProg 64 :=
.seq RemovedBody670_189 RemovedBody670_196

def RemovedBody670_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody670_199 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody670_200 : StackLang.HolProg 64 :=
.seq RemovedBody670_198 RemovedBody670_199

def RemovedBody670_201 : StackLang.HolProg 64 :=
.call (some (RemovedBody670_197, 0, 670, 4)) (Sum.inl 666) (some (RemovedBody670_200, 670, 5))

def RemovedBody670_202 : StackLang.HolProg 64 :=
.seq RemovedBody670_188 RemovedBody670_201

def RemovedBody670_203 : StackLang.HolProg 64 :=
.seq RemovedBody670_187 RemovedBody670_202

def RemovedBody670_204 : StackLang.HolProg 64 :=
.seq RemovedBody670_186 RemovedBody670_203

def RemovedBody670_205 : StackLang.HolProg 64 :=
.seq RemovedBody670_157 RemovedBody670_204

def RemovedBody670_206 : StackLang.HolProg 64 :=
.seq RemovedBody670_154 RemovedBody670_205

def RemovedBody670_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody670_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody670_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody670_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody670_212 : StackLang.HolProg 64 :=
.seq RemovedBody670_210 RemovedBody670_211

def RemovedBody670_213 : StackLang.HolProg 64 :=
.seq RemovedBody670_209 RemovedBody670_212

def RemovedBody670_214 : StackLang.HolProg 64 :=
.seq RemovedBody670_208 RemovedBody670_213

def RemovedBody670_215 : StackLang.HolProg 64 :=
.seq RemovedBody670_207 RemovedBody670_214

def RemovedBody670_216 : StackLang.HolProg 64 :=
.seq RemovedBody670_206 RemovedBody670_215

def RemovedBody670_217 : StackLang.HolProg 64 :=
.seq RemovedBody670_153 RemovedBody670_216

def RemovedBody670_218 : StackLang.HolProg 64 :=
.seq RemovedBody670_144 RemovedBody670_217

def RemovedBody670_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_220 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody670_218 RemovedBody670_219

def RemovedBody670_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody670_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody670_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody670_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody670_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody670_226 : StackLang.HolProg 64 :=
.seq RemovedBody670_224 RemovedBody670_225

def RemovedBody670_227 : StackLang.HolProg 64 :=
.seq RemovedBody670_223 RemovedBody670_226

def RemovedBody670_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2785#64)

def RemovedBody670_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody670_231 : StackLang.HolProg 64 :=
.seq RemovedBody670_229 RemovedBody670_230

def RemovedBody670_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody670_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody670_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody670_235 : StackLang.HolProg 64 :=
.seq RemovedBody670_233 RemovedBody670_234

def RemovedBody670_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_237 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody670_235 RemovedBody670_236

def RemovedBody670_238 : StackLang.HolProg 64 :=
.seq RemovedBody670_232 RemovedBody670_237

def RemovedBody670_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody670_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody670_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 670 7

def RemovedBody670_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody670_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody670_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody670_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody670_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody670_248 : StackLang.HolProg 64 :=
.seq RemovedBody670_246 RemovedBody670_247

def RemovedBody670_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody670_250 : StackLang.HolProg 64 :=
.seq RemovedBody670_248 RemovedBody670_249

def RemovedBody670_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody670_252 : StackLang.HolProg 64 :=
.seq RemovedBody670_250 RemovedBody670_251

def RemovedBody670_253 : StackLang.HolProg 64 :=
.seq RemovedBody670_245 RemovedBody670_252

def RemovedBody670_254 : StackLang.HolProg 64 :=
.seq RemovedBody670_244 RemovedBody670_253

def RemovedBody670_255 : StackLang.HolProg 64 :=
.seq RemovedBody670_243 RemovedBody670_254

def RemovedBody670_256 : StackLang.HolProg 64 :=
.seq RemovedBody670_242 RemovedBody670_255

def RemovedBody670_257 : StackLang.HolProg 64 :=
.seq RemovedBody670_241 RemovedBody670_256

def RemovedBody670_258 : StackLang.HolProg 64 :=
.seq RemovedBody670_240 RemovedBody670_257

def RemovedBody670_259 : StackLang.HolProg 64 :=
.seq RemovedBody670_239 RemovedBody670_258

def RemovedBody670_260 : StackLang.HolProg 64 :=
.seq RemovedBody670_238 RemovedBody670_259

def RemovedBody670_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody670_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody670_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody670_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody670_268 : StackLang.HolProg 64 :=
.seq RemovedBody670_266 RemovedBody670_267

def RemovedBody670_269 : StackLang.HolProg 64 :=
.seq RemovedBody670_265 RemovedBody670_268

def RemovedBody670_270 : StackLang.HolProg 64 :=
.seq RemovedBody670_264 RemovedBody670_269

def RemovedBody670_271 : StackLang.HolProg 64 :=
.seq RemovedBody670_263 RemovedBody670_270

def RemovedBody670_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody670_273 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody670_274 : StackLang.HolProg 64 :=
.seq RemovedBody670_272 RemovedBody670_273

def RemovedBody670_275 : StackLang.HolProg 64 :=
.call (some (RemovedBody670_271, 0, 670, 6)) (Sum.inl 668) (some (RemovedBody670_274, 670, 7))

def RemovedBody670_276 : StackLang.HolProg 64 :=
.seq RemovedBody670_262 RemovedBody670_275

def RemovedBody670_277 : StackLang.HolProg 64 :=
.seq RemovedBody670_261 RemovedBody670_276

def RemovedBody670_278 : StackLang.HolProg 64 :=
.seq RemovedBody670_260 RemovedBody670_277

def RemovedBody670_279 : StackLang.HolProg 64 :=
.seq RemovedBody670_231 RemovedBody670_278

def RemovedBody670_280 : StackLang.HolProg 64 :=
.seq RemovedBody670_228 RemovedBody670_279

def RemovedBody670_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody670_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody670_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody670_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody670_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody670_286 : StackLang.HolProg 64 :=
.seq RemovedBody670_284 RemovedBody670_285

def RemovedBody670_287 : StackLang.HolProg 64 :=
.seq RemovedBody670_283 RemovedBody670_286

def RemovedBody670_288 : StackLang.HolProg 64 :=
.seq RemovedBody670_282 RemovedBody670_287

def RemovedBody670_289 : StackLang.HolProg 64 :=
.seq RemovedBody670_281 RemovedBody670_288

def RemovedBody670_290 : StackLang.HolProg 64 :=
.seq RemovedBody670_280 RemovedBody670_289

def RemovedBody670_291 : StackLang.HolProg 64 :=
.seq RemovedBody670_227 RemovedBody670_290

def RemovedBody670_292 : StackLang.HolProg 64 :=
.seq RemovedBody670_222 RemovedBody670_291

def RemovedBody670_293 : StackLang.HolProg 64 :=
.seq RemovedBody670_221 RemovedBody670_292

def RemovedBody670_294 : StackLang.HolProg 64 :=
.seq RemovedBody670_220 RemovedBody670_293

def RemovedBody670_295 : StackLang.HolProg 64 :=
.seq RemovedBody670_143 RemovedBody670_294

def RemovedBody670_296 : StackLang.HolProg 64 :=
.seq RemovedBody670_142 RemovedBody670_295

def RemovedBody670_297 : StackLang.HolProg 64 :=
.seq RemovedBody670_141 RemovedBody670_296

def RemovedBody670_298 : StackLang.HolProg 64 :=
.seq RemovedBody670_140 RemovedBody670_297

def RemovedBody670_299 : StackLang.HolProg 64 :=
.seq RemovedBody670_139 RemovedBody670_298

def RemovedBody670_300 : StackLang.HolProg 64 :=
.seq RemovedBody670_14 RemovedBody670_299

def RemovedBody670_301 : StackLang.HolProg 64 :=
.seq RemovedBody670_13 RemovedBody670_300

def RemovedBody670_302 : StackLang.HolProg 64 :=
.seq RemovedBody670_6 RemovedBody670_301

def Removed670 : Nat × StackLang.HolProg 64 := (670, RemovedBody670_302)
theorem Removed670_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc670 = Removed670 := by
  kernel_rfl
#print axioms Removed670_eq
end InitECandidate.Proofs.BackendStages
