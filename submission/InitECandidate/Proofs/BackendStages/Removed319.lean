import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc319
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody319_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody319_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody319_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody319_3 : StackLang.HolProg 64 :=
.seq RemovedBody319_1 RemovedBody319_2

def RemovedBody319_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody319_3 RemovedBody319_4

def RemovedBody319_6 : StackLang.HolProg 64 :=
.seq RemovedBody319_0 RemovedBody319_5

def RemovedBody319_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody319_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody319_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody319_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody319_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody319_12 : StackLang.HolProg 64 :=
.seq RemovedBody319_10 RemovedBody319_11

def RemovedBody319_13 : StackLang.HolProg 64 :=
.seq RemovedBody319_9 RemovedBody319_12

def RemovedBody319_14 : StackLang.HolProg 64 :=
.seq RemovedBody319_8 RemovedBody319_13

def RemovedBody319_15 : StackLang.HolProg 64 :=
.seq RemovedBody319_7 RemovedBody319_14

def RemovedBody319_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 892#64)

def RemovedBody319_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody319_19 : StackLang.HolProg 64 :=
.seq RemovedBody319_17 RemovedBody319_18

def RemovedBody319_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody319_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody319_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody319_23 : StackLang.HolProg 64 :=
.seq RemovedBody319_21 RemovedBody319_22

def RemovedBody319_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody319_23 RemovedBody319_24

def RemovedBody319_26 : StackLang.HolProg 64 :=
.seq RemovedBody319_20 RemovedBody319_25

def RemovedBody319_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody319_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody319_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 319 3

def RemovedBody319_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody319_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody319_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody319_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody319_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody319_36 : StackLang.HolProg 64 :=
.seq RemovedBody319_34 RemovedBody319_35

def RemovedBody319_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody319_38 : StackLang.HolProg 64 :=
.seq RemovedBody319_36 RemovedBody319_37

def RemovedBody319_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody319_40 : StackLang.HolProg 64 :=
.seq RemovedBody319_38 RemovedBody319_39

def RemovedBody319_41 : StackLang.HolProg 64 :=
.seq RemovedBody319_33 RemovedBody319_40

def RemovedBody319_42 : StackLang.HolProg 64 :=
.seq RemovedBody319_32 RemovedBody319_41

def RemovedBody319_43 : StackLang.HolProg 64 :=
.seq RemovedBody319_31 RemovedBody319_42

def RemovedBody319_44 : StackLang.HolProg 64 :=
.seq RemovedBody319_30 RemovedBody319_43

def RemovedBody319_45 : StackLang.HolProg 64 :=
.seq RemovedBody319_29 RemovedBody319_44

def RemovedBody319_46 : StackLang.HolProg 64 :=
.seq RemovedBody319_28 RemovedBody319_45

def RemovedBody319_47 : StackLang.HolProg 64 :=
.seq RemovedBody319_27 RemovedBody319_46

def RemovedBody319_48 : StackLang.HolProg 64 :=
.seq RemovedBody319_26 RemovedBody319_47

def RemovedBody319_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody319_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody319_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody319_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody319_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody319_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody319_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody319_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody319_60 : StackLang.HolProg 64 :=
.seq RemovedBody319_58 RemovedBody319_59

def RemovedBody319_61 : StackLang.HolProg 64 :=
.seq RemovedBody319_57 RemovedBody319_60

def RemovedBody319_62 : StackLang.HolProg 64 :=
.seq RemovedBody319_56 RemovedBody319_61

def RemovedBody319_63 : StackLang.HolProg 64 :=
.seq RemovedBody319_55 RemovedBody319_62

def RemovedBody319_64 : StackLang.HolProg 64 :=
.seq RemovedBody319_54 RemovedBody319_63

def RemovedBody319_65 : StackLang.HolProg 64 :=
.seq RemovedBody319_53 RemovedBody319_64

def RemovedBody319_66 : StackLang.HolProg 64 :=
.seq RemovedBody319_52 RemovedBody319_65

def RemovedBody319_67 : StackLang.HolProg 64 :=
.seq RemovedBody319_51 RemovedBody319_66

def RemovedBody319_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody319_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody319_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody319_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody319_72 : StackLang.HolProg 64 :=
.seq RemovedBody319_70 RemovedBody319_71

def RemovedBody319_73 : StackLang.HolProg 64 :=
.seq RemovedBody319_69 RemovedBody319_72

def RemovedBody319_74 : StackLang.HolProg 64 :=
.seq RemovedBody319_68 RemovedBody319_73

def RemovedBody319_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody319_76 : StackLang.HolProg 64 :=
.seq RemovedBody319_74 RemovedBody319_75

def RemovedBody319_77 : StackLang.HolProg 64 :=
.call (some (RemovedBody319_67, 0, 319, 2)) (Sum.inl 75) (some (RemovedBody319_76, 319, 3))

def RemovedBody319_78 : StackLang.HolProg 64 :=
.seq RemovedBody319_50 RemovedBody319_77

def RemovedBody319_79 : StackLang.HolProg 64 :=
.seq RemovedBody319_49 RemovedBody319_78

def RemovedBody319_80 : StackLang.HolProg 64 :=
.seq RemovedBody319_48 RemovedBody319_79

def RemovedBody319_81 : StackLang.HolProg 64 :=
.seq RemovedBody319_19 RemovedBody319_80

def RemovedBody319_82 : StackLang.HolProg 64 :=
.seq RemovedBody319_16 RemovedBody319_81

def RemovedBody319_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody319_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody319_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody319_86 : StackLang.HolProg 64 :=
.seq RemovedBody319_84 RemovedBody319_85

def RemovedBody319_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 893#64)

def RemovedBody319_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody319_90 : StackLang.HolProg 64 :=
.seq RemovedBody319_88 RemovedBody319_89

def RemovedBody319_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody319_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody319_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody319_94 : StackLang.HolProg 64 :=
.seq RemovedBody319_92 RemovedBody319_93

def RemovedBody319_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody319_94 RemovedBody319_95

def RemovedBody319_97 : StackLang.HolProg 64 :=
.seq RemovedBody319_91 RemovedBody319_96

def RemovedBody319_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody319_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody319_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 319 7

def RemovedBody319_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody319_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody319_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody319_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody319_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody319_107 : StackLang.HolProg 64 :=
.seq RemovedBody319_105 RemovedBody319_106

def RemovedBody319_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody319_109 : StackLang.HolProg 64 :=
.seq RemovedBody319_107 RemovedBody319_108

def RemovedBody319_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody319_111 : StackLang.HolProg 64 :=
.seq RemovedBody319_109 RemovedBody319_110

def RemovedBody319_112 : StackLang.HolProg 64 :=
.seq RemovedBody319_104 RemovedBody319_111

def RemovedBody319_113 : StackLang.HolProg 64 :=
.seq RemovedBody319_103 RemovedBody319_112

def RemovedBody319_114 : StackLang.HolProg 64 :=
.seq RemovedBody319_102 RemovedBody319_113

def RemovedBody319_115 : StackLang.HolProg 64 :=
.seq RemovedBody319_101 RemovedBody319_114

def RemovedBody319_116 : StackLang.HolProg 64 :=
.seq RemovedBody319_100 RemovedBody319_115

def RemovedBody319_117 : StackLang.HolProg 64 :=
.seq RemovedBody319_99 RemovedBody319_116

def RemovedBody319_118 : StackLang.HolProg 64 :=
.seq RemovedBody319_98 RemovedBody319_117

def RemovedBody319_119 : StackLang.HolProg 64 :=
.seq RemovedBody319_97 RemovedBody319_118

def RemovedBody319_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody319_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody319_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody319_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody319_127 : StackLang.HolProg 64 :=
.seq RemovedBody319_125 RemovedBody319_126

def RemovedBody319_128 : StackLang.HolProg 64 :=
.seq RemovedBody319_124 RemovedBody319_127

def RemovedBody319_129 : StackLang.HolProg 64 :=
.seq RemovedBody319_123 RemovedBody319_128

def RemovedBody319_130 : StackLang.HolProg 64 :=
.seq RemovedBody319_122 RemovedBody319_129

def RemovedBody319_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody319_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody319_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody319_134 : StackLang.HolProg 64 :=
.seq RemovedBody319_132 RemovedBody319_133

def RemovedBody319_135 : StackLang.HolProg 64 :=
.seq RemovedBody319_131 RemovedBody319_134

def RemovedBody319_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody319_138 : StackLang.HolProg 64 :=
.seq RemovedBody319_136 RemovedBody319_137

def RemovedBody319_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody319_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody319_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody319_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody319_143 : StackLang.HolProg 64 :=
.seq RemovedBody319_141 RemovedBody319_142

def RemovedBody319_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 894#64)

def RemovedBody319_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody319_147 : StackLang.HolProg 64 :=
.seq RemovedBody319_145 RemovedBody319_146

def RemovedBody319_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody319_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody319_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody319_151 : StackLang.HolProg 64 :=
.seq RemovedBody319_149 RemovedBody319_150

def RemovedBody319_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_153 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody319_151 RemovedBody319_152

def RemovedBody319_154 : StackLang.HolProg 64 :=
.seq RemovedBody319_148 RemovedBody319_153

def RemovedBody319_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody319_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody319_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 319 6

def RemovedBody319_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody319_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody319_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody319_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody319_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody319_164 : StackLang.HolProg 64 :=
.seq RemovedBody319_162 RemovedBody319_163

def RemovedBody319_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody319_166 : StackLang.HolProg 64 :=
.seq RemovedBody319_164 RemovedBody319_165

def RemovedBody319_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody319_168 : StackLang.HolProg 64 :=
.seq RemovedBody319_166 RemovedBody319_167

def RemovedBody319_169 : StackLang.HolProg 64 :=
.seq RemovedBody319_161 RemovedBody319_168

def RemovedBody319_170 : StackLang.HolProg 64 :=
.seq RemovedBody319_160 RemovedBody319_169

def RemovedBody319_171 : StackLang.HolProg 64 :=
.seq RemovedBody319_159 RemovedBody319_170

def RemovedBody319_172 : StackLang.HolProg 64 :=
.seq RemovedBody319_158 RemovedBody319_171

def RemovedBody319_173 : StackLang.HolProg 64 :=
.seq RemovedBody319_157 RemovedBody319_172

def RemovedBody319_174 : StackLang.HolProg 64 :=
.seq RemovedBody319_156 RemovedBody319_173

def RemovedBody319_175 : StackLang.HolProg 64 :=
.seq RemovedBody319_155 RemovedBody319_174

def RemovedBody319_176 : StackLang.HolProg 64 :=
.seq RemovedBody319_154 RemovedBody319_175

def RemovedBody319_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody319_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody319_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody319_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody319_184 : StackLang.HolProg 64 :=
.seq RemovedBody319_182 RemovedBody319_183

def RemovedBody319_185 : StackLang.HolProg 64 :=
.seq RemovedBody319_181 RemovedBody319_184

def RemovedBody319_186 : StackLang.HolProg 64 :=
.seq RemovedBody319_180 RemovedBody319_185

def RemovedBody319_187 : StackLang.HolProg 64 :=
.seq RemovedBody319_179 RemovedBody319_186

def RemovedBody319_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody319_189 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody319_190 : StackLang.HolProg 64 :=
.seq RemovedBody319_188 RemovedBody319_189

def RemovedBody319_191 : StackLang.HolProg 64 :=
.call (some (RemovedBody319_187, 0, 319, 5)) (Sum.inl 76) (some (RemovedBody319_190, 319, 6))

def RemovedBody319_192 : StackLang.HolProg 64 :=
.seq RemovedBody319_178 RemovedBody319_191

def RemovedBody319_193 : StackLang.HolProg 64 :=
.seq RemovedBody319_177 RemovedBody319_192

def RemovedBody319_194 : StackLang.HolProg 64 :=
.seq RemovedBody319_176 RemovedBody319_193

def RemovedBody319_195 : StackLang.HolProg 64 :=
.seq RemovedBody319_147 RemovedBody319_194

def RemovedBody319_196 : StackLang.HolProg 64 :=
.seq RemovedBody319_144 RemovedBody319_195

def RemovedBody319_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody319_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody319_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody319_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody319_203 : StackLang.HolProg 64 :=
.seq RemovedBody319_201 RemovedBody319_202

def RemovedBody319_204 : StackLang.HolProg 64 :=
.seq RemovedBody319_200 RemovedBody319_203

def RemovedBody319_205 : StackLang.HolProg 64 :=
.seq RemovedBody319_199 RemovedBody319_204

def RemovedBody319_206 : StackLang.HolProg 64 :=
.seq RemovedBody319_198 RemovedBody319_205

def RemovedBody319_207 : StackLang.HolProg 64 :=
.seq RemovedBody319_197 RemovedBody319_206

def RemovedBody319_208 : StackLang.HolProg 64 :=
.seq RemovedBody319_196 RemovedBody319_207

def RemovedBody319_209 : StackLang.HolProg 64 :=
.seq RemovedBody319_143 RemovedBody319_208

def RemovedBody319_210 : StackLang.HolProg 64 :=
.seq RemovedBody319_140 RemovedBody319_209

def RemovedBody319_211 : StackLang.HolProg 64 :=
.seq RemovedBody319_139 RemovedBody319_210

def RemovedBody319_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64) RemovedBody319_138 RemovedBody319_211

def RemovedBody319_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody319_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody319_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody319_216 : StackLang.HolProg 64 :=
.seq RemovedBody319_214 RemovedBody319_215

def RemovedBody319_217 : StackLang.HolProg 64 :=
.seq RemovedBody319_213 RemovedBody319_216

def RemovedBody319_218 : StackLang.HolProg 64 :=
.seq RemovedBody319_212 RemovedBody319_217

def RemovedBody319_219 : StackLang.HolProg 64 :=
.seq RemovedBody319_135 RemovedBody319_218

def RemovedBody319_220 : StackLang.HolProg 64 :=
.call (some (RemovedBody319_130, 0, 319, 4)) (Sum.inl 318) (some (RemovedBody319_219, 319, 7))

def RemovedBody319_221 : StackLang.HolProg 64 :=
.seq RemovedBody319_121 RemovedBody319_220

def RemovedBody319_222 : StackLang.HolProg 64 :=
.seq RemovedBody319_120 RemovedBody319_221

def RemovedBody319_223 : StackLang.HolProg 64 :=
.seq RemovedBody319_119 RemovedBody319_222

def RemovedBody319_224 : StackLang.HolProg 64 :=
.seq RemovedBody319_90 RemovedBody319_223

def RemovedBody319_225 : StackLang.HolProg 64 :=
.seq RemovedBody319_87 RemovedBody319_224

def RemovedBody319_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody319_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody319_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody319_229 : StackLang.HolProg 64 :=
.seq RemovedBody319_227 RemovedBody319_228

def RemovedBody319_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 895#64)

def RemovedBody319_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody319_233 : StackLang.HolProg 64 :=
.seq RemovedBody319_231 RemovedBody319_232

def RemovedBody319_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody319_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody319_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody319_237 : StackLang.HolProg 64 :=
.seq RemovedBody319_235 RemovedBody319_236

def RemovedBody319_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody319_237 RemovedBody319_238

def RemovedBody319_240 : StackLang.HolProg 64 :=
.seq RemovedBody319_234 RemovedBody319_239

def RemovedBody319_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody319_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody319_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 319 9

def RemovedBody319_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody319_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody319_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody319_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody319_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody319_250 : StackLang.HolProg 64 :=
.seq RemovedBody319_248 RemovedBody319_249

def RemovedBody319_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody319_252 : StackLang.HolProg 64 :=
.seq RemovedBody319_250 RemovedBody319_251

def RemovedBody319_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody319_254 : StackLang.HolProg 64 :=
.seq RemovedBody319_252 RemovedBody319_253

def RemovedBody319_255 : StackLang.HolProg 64 :=
.seq RemovedBody319_247 RemovedBody319_254

def RemovedBody319_256 : StackLang.HolProg 64 :=
.seq RemovedBody319_246 RemovedBody319_255

def RemovedBody319_257 : StackLang.HolProg 64 :=
.seq RemovedBody319_245 RemovedBody319_256

def RemovedBody319_258 : StackLang.HolProg 64 :=
.seq RemovedBody319_244 RemovedBody319_257

def RemovedBody319_259 : StackLang.HolProg 64 :=
.seq RemovedBody319_243 RemovedBody319_258

def RemovedBody319_260 : StackLang.HolProg 64 :=
.seq RemovedBody319_242 RemovedBody319_259

def RemovedBody319_261 : StackLang.HolProg 64 :=
.seq RemovedBody319_241 RemovedBody319_260

def RemovedBody319_262 : StackLang.HolProg 64 :=
.seq RemovedBody319_240 RemovedBody319_261

def RemovedBody319_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody319_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody319_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody319_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody319_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody319_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody319_271 : StackLang.HolProg 64 :=
.seq RemovedBody319_269 RemovedBody319_270

def RemovedBody319_272 : StackLang.HolProg 64 :=
.seq RemovedBody319_268 RemovedBody319_271

def RemovedBody319_273 : StackLang.HolProg 64 :=
.seq RemovedBody319_267 RemovedBody319_272

def RemovedBody319_274 : StackLang.HolProg 64 :=
.seq RemovedBody319_266 RemovedBody319_273

def RemovedBody319_275 : StackLang.HolProg 64 :=
.seq RemovedBody319_265 RemovedBody319_274

def RemovedBody319_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody319_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody319_278 : StackLang.HolProg 64 :=
.seq RemovedBody319_276 RemovedBody319_277

def RemovedBody319_279 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody319_280 : StackLang.HolProg 64 :=
.seq RemovedBody319_278 RemovedBody319_279

def RemovedBody319_281 : StackLang.HolProg 64 :=
.call (some (RemovedBody319_275, 0, 319, 8)) (Sum.inl 76) (some (RemovedBody319_280, 319, 9))

def RemovedBody319_282 : StackLang.HolProg 64 :=
.seq RemovedBody319_264 RemovedBody319_281

def RemovedBody319_283 : StackLang.HolProg 64 :=
.seq RemovedBody319_263 RemovedBody319_282

def RemovedBody319_284 : StackLang.HolProg 64 :=
.seq RemovedBody319_262 RemovedBody319_283

def RemovedBody319_285 : StackLang.HolProg 64 :=
.seq RemovedBody319_233 RemovedBody319_284

def RemovedBody319_286 : StackLang.HolProg 64 :=
.seq RemovedBody319_230 RemovedBody319_285

def RemovedBody319_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody319_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody319_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody319_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody319_291 : StackLang.HolProg 64 :=
.seq RemovedBody319_289 RemovedBody319_290

def RemovedBody319_292 : StackLang.HolProg 64 :=
.seq RemovedBody319_288 RemovedBody319_291

def RemovedBody319_293 : StackLang.HolProg 64 :=
.seq RemovedBody319_287 RemovedBody319_292

def RemovedBody319_294 : StackLang.HolProg 64 :=
.seq RemovedBody319_286 RemovedBody319_293

def RemovedBody319_295 : StackLang.HolProg 64 :=
.seq RemovedBody319_229 RemovedBody319_294

def RemovedBody319_296 : StackLang.HolProg 64 :=
.seq RemovedBody319_226 RemovedBody319_295

def RemovedBody319_297 : StackLang.HolProg 64 :=
.seq RemovedBody319_225 RemovedBody319_296

def RemovedBody319_298 : StackLang.HolProg 64 :=
.seq RemovedBody319_86 RemovedBody319_297

def RemovedBody319_299 : StackLang.HolProg 64 :=
.seq RemovedBody319_83 RemovedBody319_298

def RemovedBody319_300 : StackLang.HolProg 64 :=
.seq RemovedBody319_82 RemovedBody319_299

def RemovedBody319_301 : StackLang.HolProg 64 :=
.seq RemovedBody319_15 RemovedBody319_300

def RemovedBody319_302 : StackLang.HolProg 64 :=
.seq RemovedBody319_6 RemovedBody319_301

def Removed319 : Nat × StackLang.HolProg 64 := (319, RemovedBody319_302)
theorem Removed319_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc319 = Removed319 := by
  kernel_rfl
#print axioms Removed319_eq
end InitECandidate.Proofs.BackendStages
