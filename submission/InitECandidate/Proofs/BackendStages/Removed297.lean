import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc297
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody297_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody297_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody297_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody297_3 : StackLang.HolProg 64 :=
.seq RemovedBody297_1 RemovedBody297_2

def RemovedBody297_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody297_3 RemovedBody297_4

def RemovedBody297_6 : StackLang.HolProg 64 :=
.seq RemovedBody297_0 RemovedBody297_5

def RemovedBody297_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody297_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 56#64)

def RemovedBody297_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody297_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody297_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody297_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody297_13 : StackLang.HolProg 64 :=
.seq RemovedBody297_11 RemovedBody297_12

def RemovedBody297_14 : StackLang.HolProg 64 :=
.seq RemovedBody297_10 RemovedBody297_13

def RemovedBody297_15 : StackLang.HolProg 64 :=
.seq RemovedBody297_9 RemovedBody297_14

def RemovedBody297_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 803#64)

def RemovedBody297_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody297_19 : StackLang.HolProg 64 :=
.seq RemovedBody297_17 RemovedBody297_18

def RemovedBody297_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody297_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody297_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody297_23 : StackLang.HolProg 64 :=
.seq RemovedBody297_21 RemovedBody297_22

def RemovedBody297_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody297_23 RemovedBody297_24

def RemovedBody297_26 : StackLang.HolProg 64 :=
.seq RemovedBody297_20 RemovedBody297_25

def RemovedBody297_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody297_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody297_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 297 3

def RemovedBody297_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody297_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody297_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody297_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody297_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody297_36 : StackLang.HolProg 64 :=
.seq RemovedBody297_34 RemovedBody297_35

def RemovedBody297_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody297_38 : StackLang.HolProg 64 :=
.seq RemovedBody297_36 RemovedBody297_37

def RemovedBody297_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody297_40 : StackLang.HolProg 64 :=
.seq RemovedBody297_38 RemovedBody297_39

def RemovedBody297_41 : StackLang.HolProg 64 :=
.seq RemovedBody297_33 RemovedBody297_40

def RemovedBody297_42 : StackLang.HolProg 64 :=
.seq RemovedBody297_32 RemovedBody297_41

def RemovedBody297_43 : StackLang.HolProg 64 :=
.seq RemovedBody297_31 RemovedBody297_42

def RemovedBody297_44 : StackLang.HolProg 64 :=
.seq RemovedBody297_30 RemovedBody297_43

def RemovedBody297_45 : StackLang.HolProg 64 :=
.seq RemovedBody297_29 RemovedBody297_44

def RemovedBody297_46 : StackLang.HolProg 64 :=
.seq RemovedBody297_28 RemovedBody297_45

def RemovedBody297_47 : StackLang.HolProg 64 :=
.seq RemovedBody297_27 RemovedBody297_46

def RemovedBody297_48 : StackLang.HolProg 64 :=
.seq RemovedBody297_26 RemovedBody297_47

def RemovedBody297_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody297_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody297_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody297_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody297_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody297_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody297_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody297_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody297_60 : StackLang.HolProg 64 :=
.seq RemovedBody297_58 RemovedBody297_59

def RemovedBody297_61 : StackLang.HolProg 64 :=
.seq RemovedBody297_57 RemovedBody297_60

def RemovedBody297_62 : StackLang.HolProg 64 :=
.seq RemovedBody297_56 RemovedBody297_61

def RemovedBody297_63 : StackLang.HolProg 64 :=
.seq RemovedBody297_55 RemovedBody297_62

def RemovedBody297_64 : StackLang.HolProg 64 :=
.seq RemovedBody297_54 RemovedBody297_63

def RemovedBody297_65 : StackLang.HolProg 64 :=
.seq RemovedBody297_53 RemovedBody297_64

def RemovedBody297_66 : StackLang.HolProg 64 :=
.seq RemovedBody297_52 RemovedBody297_65

def RemovedBody297_67 : StackLang.HolProg 64 :=
.seq RemovedBody297_51 RemovedBody297_66

def RemovedBody297_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody297_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody297_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody297_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody297_72 : StackLang.HolProg 64 :=
.seq RemovedBody297_70 RemovedBody297_71

def RemovedBody297_73 : StackLang.HolProg 64 :=
.seq RemovedBody297_69 RemovedBody297_72

def RemovedBody297_74 : StackLang.HolProg 64 :=
.seq RemovedBody297_68 RemovedBody297_73

def RemovedBody297_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody297_76 : StackLang.HolProg 64 :=
.seq RemovedBody297_74 RemovedBody297_75

def RemovedBody297_77 : StackLang.HolProg 64 :=
.call (some (RemovedBody297_67, 0, 297, 2)) (Sum.inl 68) (some (RemovedBody297_76, 297, 3))

def RemovedBody297_78 : StackLang.HolProg 64 :=
.seq RemovedBody297_50 RemovedBody297_77

def RemovedBody297_79 : StackLang.HolProg 64 :=
.seq RemovedBody297_49 RemovedBody297_78

def RemovedBody297_80 : StackLang.HolProg 64 :=
.seq RemovedBody297_48 RemovedBody297_79

def RemovedBody297_81 : StackLang.HolProg 64 :=
.seq RemovedBody297_19 RemovedBody297_80

def RemovedBody297_82 : StackLang.HolProg 64 :=
.seq RemovedBody297_16 RemovedBody297_81

def RemovedBody297_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody297_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody297_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody297_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody297_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody297_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody297_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody297_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody297_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody297_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody297_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody297_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody297_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody297_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody297_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody297_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody297_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody297_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody297_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody297_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody297_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody297_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody297_118 : StackLang.HolProg 64 :=
.seq RemovedBody297_116 RemovedBody297_117

def RemovedBody297_119 : StackLang.HolProg 64 :=
.seq RemovedBody297_115 RemovedBody297_118

def RemovedBody297_120 : StackLang.HolProg 64 :=
.seq RemovedBody297_114 RemovedBody297_119

def RemovedBody297_121 : StackLang.HolProg 64 :=
.seq RemovedBody297_113 RemovedBody297_120

def RemovedBody297_122 : StackLang.HolProg 64 :=
.seq RemovedBody297_112 RemovedBody297_121

def RemovedBody297_123 : StackLang.HolProg 64 :=
.seq RemovedBody297_111 RemovedBody297_122

def RemovedBody297_124 : StackLang.HolProg 64 :=
.seq RemovedBody297_110 RemovedBody297_123

def RemovedBody297_125 : StackLang.HolProg 64 :=
.seq RemovedBody297_109 RemovedBody297_124

def RemovedBody297_126 : StackLang.HolProg 64 :=
.seq RemovedBody297_108 RemovedBody297_125

def RemovedBody297_127 : StackLang.HolProg 64 :=
.seq RemovedBody297_107 RemovedBody297_126

def RemovedBody297_128 : StackLang.HolProg 64 :=
.seq RemovedBody297_106 RemovedBody297_127

def RemovedBody297_129 : StackLang.HolProg 64 :=
.seq RemovedBody297_105 RemovedBody297_128

def RemovedBody297_130 : StackLang.HolProg 64 :=
.seq RemovedBody297_104 RemovedBody297_129

def RemovedBody297_131 : StackLang.HolProg 64 :=
.seq RemovedBody297_103 RemovedBody297_130

def RemovedBody297_132 : StackLang.HolProg 64 :=
.seq RemovedBody297_102 RemovedBody297_131

def RemovedBody297_133 : StackLang.HolProg 64 :=
.seq RemovedBody297_101 RemovedBody297_132

def RemovedBody297_134 : StackLang.HolProg 64 :=
.seq RemovedBody297_100 RemovedBody297_133

def RemovedBody297_135 : StackLang.HolProg 64 :=
.seq RemovedBody297_99 RemovedBody297_134

def RemovedBody297_136 : StackLang.HolProg 64 :=
.seq RemovedBody297_98 RemovedBody297_135

def RemovedBody297_137 : StackLang.HolProg 64 :=
.seq RemovedBody297_97 RemovedBody297_136

def RemovedBody297_138 : StackLang.HolProg 64 :=
.seq RemovedBody297_96 RemovedBody297_137

def RemovedBody297_139 : StackLang.HolProg 64 :=
.seq RemovedBody297_95 RemovedBody297_138

def RemovedBody297_140 : StackLang.HolProg 64 :=
.seq RemovedBody297_94 RemovedBody297_139

def RemovedBody297_141 : StackLang.HolProg 64 :=
.seq RemovedBody297_93 RemovedBody297_140

def RemovedBody297_142 : StackLang.HolProg 64 :=
.seq RemovedBody297_92 RemovedBody297_141

def RemovedBody297_143 : StackLang.HolProg 64 :=
.seq RemovedBody297_91 RemovedBody297_142

def RemovedBody297_144 : StackLang.HolProg 64 :=
.seq RemovedBody297_90 RemovedBody297_143

def RemovedBody297_145 : StackLang.HolProg 64 :=
.seq RemovedBody297_89 RemovedBody297_144

def RemovedBody297_146 : StackLang.HolProg 64 :=
.seq RemovedBody297_88 RemovedBody297_145

def RemovedBody297_147 : StackLang.HolProg 64 :=
.seq RemovedBody297_87 RemovedBody297_146

def RemovedBody297_148 : StackLang.HolProg 64 :=
.seq RemovedBody297_86 RemovedBody297_147

def RemovedBody297_149 : StackLang.HolProg 64 :=
.seq RemovedBody297_85 RemovedBody297_148

def RemovedBody297_150 : StackLang.HolProg 64 :=
.seq RemovedBody297_84 RemovedBody297_149

def RemovedBody297_151 : StackLang.HolProg 64 :=
.seq RemovedBody297_83 RemovedBody297_150

def RemovedBody297_152 : StackLang.HolProg 64 :=
.seq RemovedBody297_82 RemovedBody297_151

def RemovedBody297_153 : StackLang.HolProg 64 :=
.seq RemovedBody297_15 RemovedBody297_152

def RemovedBody297_154 : StackLang.HolProg 64 :=
.seq RemovedBody297_8 RemovedBody297_153

def RemovedBody297_155 : StackLang.HolProg 64 :=
.seq RemovedBody297_7 RemovedBody297_154

def RemovedBody297_156 : StackLang.HolProg 64 :=
.seq RemovedBody297_6 RemovedBody297_155

def Removed297 : Nat × StackLang.HolProg 64 := (297, RemovedBody297_156)
theorem Removed297_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc297 = Removed297 := by
  kernel_rfl
#print axioms Removed297_eq
end InitECandidate.Proofs.BackendStages
