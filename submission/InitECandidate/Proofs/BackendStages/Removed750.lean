import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc750
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody750_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody750_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody750_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody750_3 : StackLang.HolProg 64 :=
.seq RemovedBody750_1 RemovedBody750_2

def RemovedBody750_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody750_3 RemovedBody750_4

def RemovedBody750_6 : StackLang.HolProg 64 :=
.seq RemovedBody750_0 RemovedBody750_5

def RemovedBody750_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody750_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody750_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody750_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody750_11 : StackLang.HolProg 64 :=
.seq RemovedBody750_9 RemovedBody750_10

def RemovedBody750_12 : StackLang.HolProg 64 :=
.seq RemovedBody750_8 RemovedBody750_11

def RemovedBody750_13 : StackLang.HolProg 64 :=
.seq RemovedBody750_7 RemovedBody750_12

def RemovedBody750_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3314#64)

def RemovedBody750_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody750_17 : StackLang.HolProg 64 :=
.seq RemovedBody750_15 RemovedBody750_16

def RemovedBody750_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody750_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody750_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody750_21 : StackLang.HolProg 64 :=
.seq RemovedBody750_19 RemovedBody750_20

def RemovedBody750_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody750_21 RemovedBody750_22

def RemovedBody750_24 : StackLang.HolProg 64 :=
.seq RemovedBody750_18 RemovedBody750_23

def RemovedBody750_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody750_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody750_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 750 3

def RemovedBody750_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody750_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody750_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody750_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody750_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody750_34 : StackLang.HolProg 64 :=
.seq RemovedBody750_32 RemovedBody750_33

def RemovedBody750_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody750_36 : StackLang.HolProg 64 :=
.seq RemovedBody750_34 RemovedBody750_35

def RemovedBody750_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody750_38 : StackLang.HolProg 64 :=
.seq RemovedBody750_36 RemovedBody750_37

def RemovedBody750_39 : StackLang.HolProg 64 :=
.seq RemovedBody750_31 RemovedBody750_38

def RemovedBody750_40 : StackLang.HolProg 64 :=
.seq RemovedBody750_30 RemovedBody750_39

def RemovedBody750_41 : StackLang.HolProg 64 :=
.seq RemovedBody750_29 RemovedBody750_40

def RemovedBody750_42 : StackLang.HolProg 64 :=
.seq RemovedBody750_28 RemovedBody750_41

def RemovedBody750_43 : StackLang.HolProg 64 :=
.seq RemovedBody750_27 RemovedBody750_42

def RemovedBody750_44 : StackLang.HolProg 64 :=
.seq RemovedBody750_26 RemovedBody750_43

def RemovedBody750_45 : StackLang.HolProg 64 :=
.seq RemovedBody750_25 RemovedBody750_44

def RemovedBody750_46 : StackLang.HolProg 64 :=
.seq RemovedBody750_24 RemovedBody750_45

def RemovedBody750_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody750_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody750_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody750_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody750_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody750_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody750_56 : StackLang.HolProg 64 :=
.seq RemovedBody750_54 RemovedBody750_55

def RemovedBody750_57 : StackLang.HolProg 64 :=
.seq RemovedBody750_53 RemovedBody750_56

def RemovedBody750_58 : StackLang.HolProg 64 :=
.seq RemovedBody750_52 RemovedBody750_57

def RemovedBody750_59 : StackLang.HolProg 64 :=
.seq RemovedBody750_51 RemovedBody750_58

def RemovedBody750_60 : StackLang.HolProg 64 :=
.seq RemovedBody750_50 RemovedBody750_59

def RemovedBody750_61 : StackLang.HolProg 64 :=
.seq RemovedBody750_49 RemovedBody750_60

def RemovedBody750_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody750_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody750_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody750_65 : StackLang.HolProg 64 :=
.seq RemovedBody750_63 RemovedBody750_64

def RemovedBody750_66 : StackLang.HolProg 64 :=
.seq RemovedBody750_62 RemovedBody750_65

def RemovedBody750_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody750_68 : StackLang.HolProg 64 :=
.seq RemovedBody750_66 RemovedBody750_67

def RemovedBody750_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody750_61, 0, 750, 2)) (Sum.inl 735) (some (RemovedBody750_68, 750, 3))

def RemovedBody750_70 : StackLang.HolProg 64 :=
.seq RemovedBody750_48 RemovedBody750_69

def RemovedBody750_71 : StackLang.HolProg 64 :=
.seq RemovedBody750_47 RemovedBody750_70

def RemovedBody750_72 : StackLang.HolProg 64 :=
.seq RemovedBody750_46 RemovedBody750_71

def RemovedBody750_73 : StackLang.HolProg 64 :=
.seq RemovedBody750_17 RemovedBody750_72

def RemovedBody750_74 : StackLang.HolProg 64 :=
.seq RemovedBody750_14 RemovedBody750_73

def RemovedBody750_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody750_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody750_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody750_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody750_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody750_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody750_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody750_85 : StackLang.HolProg 64 :=
.seq RemovedBody750_83 RemovedBody750_84

def RemovedBody750_86 : StackLang.HolProg 64 :=
.seq RemovedBody750_82 RemovedBody750_85

def RemovedBody750_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3315#64)

def RemovedBody750_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody750_90 : StackLang.HolProg 64 :=
.seq RemovedBody750_88 RemovedBody750_89

def RemovedBody750_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody750_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody750_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody750_94 : StackLang.HolProg 64 :=
.seq RemovedBody750_92 RemovedBody750_93

def RemovedBody750_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody750_94 RemovedBody750_95

def RemovedBody750_97 : StackLang.HolProg 64 :=
.seq RemovedBody750_91 RemovedBody750_96

def RemovedBody750_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody750_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody750_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 750 5

def RemovedBody750_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody750_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody750_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody750_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody750_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody750_107 : StackLang.HolProg 64 :=
.seq RemovedBody750_105 RemovedBody750_106

def RemovedBody750_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody750_109 : StackLang.HolProg 64 :=
.seq RemovedBody750_107 RemovedBody750_108

def RemovedBody750_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody750_111 : StackLang.HolProg 64 :=
.seq RemovedBody750_109 RemovedBody750_110

def RemovedBody750_112 : StackLang.HolProg 64 :=
.seq RemovedBody750_104 RemovedBody750_111

def RemovedBody750_113 : StackLang.HolProg 64 :=
.seq RemovedBody750_103 RemovedBody750_112

def RemovedBody750_114 : StackLang.HolProg 64 :=
.seq RemovedBody750_102 RemovedBody750_113

def RemovedBody750_115 : StackLang.HolProg 64 :=
.seq RemovedBody750_101 RemovedBody750_114

def RemovedBody750_116 : StackLang.HolProg 64 :=
.seq RemovedBody750_100 RemovedBody750_115

def RemovedBody750_117 : StackLang.HolProg 64 :=
.seq RemovedBody750_99 RemovedBody750_116

def RemovedBody750_118 : StackLang.HolProg 64 :=
.seq RemovedBody750_98 RemovedBody750_117

def RemovedBody750_119 : StackLang.HolProg 64 :=
.seq RemovedBody750_97 RemovedBody750_118

def RemovedBody750_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody750_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody750_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody750_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody750_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody750_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody750_129 : StackLang.HolProg 64 :=
.seq RemovedBody750_127 RemovedBody750_128

def RemovedBody750_130 : StackLang.HolProg 64 :=
.seq RemovedBody750_126 RemovedBody750_129

def RemovedBody750_131 : StackLang.HolProg 64 :=
.seq RemovedBody750_125 RemovedBody750_130

def RemovedBody750_132 : StackLang.HolProg 64 :=
.seq RemovedBody750_124 RemovedBody750_131

def RemovedBody750_133 : StackLang.HolProg 64 :=
.seq RemovedBody750_123 RemovedBody750_132

def RemovedBody750_134 : StackLang.HolProg 64 :=
.seq RemovedBody750_122 RemovedBody750_133

def RemovedBody750_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody750_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody750_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody750_138 : StackLang.HolProg 64 :=
.seq RemovedBody750_136 RemovedBody750_137

def RemovedBody750_139 : StackLang.HolProg 64 :=
.seq RemovedBody750_135 RemovedBody750_138

def RemovedBody750_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody750_141 : StackLang.HolProg 64 :=
.seq RemovedBody750_139 RemovedBody750_140

def RemovedBody750_142 : StackLang.HolProg 64 :=
.call (some (RemovedBody750_134, 0, 750, 4)) (Sum.inl 735) (some (RemovedBody750_141, 750, 5))

def RemovedBody750_143 : StackLang.HolProg 64 :=
.seq RemovedBody750_121 RemovedBody750_142

def RemovedBody750_144 : StackLang.HolProg 64 :=
.seq RemovedBody750_120 RemovedBody750_143

def RemovedBody750_145 : StackLang.HolProg 64 :=
.seq RemovedBody750_119 RemovedBody750_144

def RemovedBody750_146 : StackLang.HolProg 64 :=
.seq RemovedBody750_90 RemovedBody750_145

def RemovedBody750_147 : StackLang.HolProg 64 :=
.seq RemovedBody750_87 RemovedBody750_146

def RemovedBody750_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody750_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody750_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody750_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody750_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3316#64)

def RemovedBody750_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody750_159 : StackLang.HolProg 64 :=
.seq RemovedBody750_157 RemovedBody750_158

def RemovedBody750_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody750_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody750_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody750_163 : StackLang.HolProg 64 :=
.seq RemovedBody750_161 RemovedBody750_162

def RemovedBody750_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_165 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody750_163 RemovedBody750_164

def RemovedBody750_166 : StackLang.HolProg 64 :=
.seq RemovedBody750_160 RemovedBody750_165

def RemovedBody750_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody750_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody750_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 750 7

def RemovedBody750_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody750_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody750_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody750_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody750_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody750_176 : StackLang.HolProg 64 :=
.seq RemovedBody750_174 RemovedBody750_175

def RemovedBody750_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody750_178 : StackLang.HolProg 64 :=
.seq RemovedBody750_176 RemovedBody750_177

def RemovedBody750_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody750_180 : StackLang.HolProg 64 :=
.seq RemovedBody750_178 RemovedBody750_179

def RemovedBody750_181 : StackLang.HolProg 64 :=
.seq RemovedBody750_173 RemovedBody750_180

def RemovedBody750_182 : StackLang.HolProg 64 :=
.seq RemovedBody750_172 RemovedBody750_181

def RemovedBody750_183 : StackLang.HolProg 64 :=
.seq RemovedBody750_171 RemovedBody750_182

def RemovedBody750_184 : StackLang.HolProg 64 :=
.seq RemovedBody750_170 RemovedBody750_183

def RemovedBody750_185 : StackLang.HolProg 64 :=
.seq RemovedBody750_169 RemovedBody750_184

def RemovedBody750_186 : StackLang.HolProg 64 :=
.seq RemovedBody750_168 RemovedBody750_185

def RemovedBody750_187 : StackLang.HolProg 64 :=
.seq RemovedBody750_167 RemovedBody750_186

def RemovedBody750_188 : StackLang.HolProg 64 :=
.seq RemovedBody750_166 RemovedBody750_187

def RemovedBody750_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody750_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody750_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody750_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody750_196 : StackLang.HolProg 64 :=
.seq RemovedBody750_194 RemovedBody750_195

def RemovedBody750_197 : StackLang.HolProg 64 :=
.seq RemovedBody750_193 RemovedBody750_196

def RemovedBody750_198 : StackLang.HolProg 64 :=
.seq RemovedBody750_192 RemovedBody750_197

def RemovedBody750_199 : StackLang.HolProg 64 :=
.seq RemovedBody750_191 RemovedBody750_198

def RemovedBody750_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody750_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody750_202 : StackLang.HolProg 64 :=
.seq RemovedBody750_200 RemovedBody750_201

def RemovedBody750_203 : StackLang.HolProg 64 :=
.call (some (RemovedBody750_199, 0, 750, 6)) (Sum.inl 735) (some (RemovedBody750_202, 750, 7))

def RemovedBody750_204 : StackLang.HolProg 64 :=
.seq RemovedBody750_190 RemovedBody750_203

def RemovedBody750_205 : StackLang.HolProg 64 :=
.seq RemovedBody750_189 RemovedBody750_204

def RemovedBody750_206 : StackLang.HolProg 64 :=
.seq RemovedBody750_188 RemovedBody750_205

def RemovedBody750_207 : StackLang.HolProg 64 :=
.seq RemovedBody750_159 RemovedBody750_206

def RemovedBody750_208 : StackLang.HolProg 64 :=
.seq RemovedBody750_156 RemovedBody750_207

def RemovedBody750_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody750_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody750_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody750_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody750_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody750_214 : StackLang.HolProg 64 :=
.seq RemovedBody750_212 RemovedBody750_213

def RemovedBody750_215 : StackLang.HolProg 64 :=
.seq RemovedBody750_211 RemovedBody750_214

def RemovedBody750_216 : StackLang.HolProg 64 :=
.seq RemovedBody750_210 RemovedBody750_215

def RemovedBody750_217 : StackLang.HolProg 64 :=
.seq RemovedBody750_209 RemovedBody750_216

def RemovedBody750_218 : StackLang.HolProg 64 :=
.seq RemovedBody750_208 RemovedBody750_217

def RemovedBody750_219 : StackLang.HolProg 64 :=
.seq RemovedBody750_155 RemovedBody750_218

def RemovedBody750_220 : StackLang.HolProg 64 :=
.seq RemovedBody750_154 RemovedBody750_219

def RemovedBody750_221 : StackLang.HolProg 64 :=
.seq RemovedBody750_153 RemovedBody750_220

def RemovedBody750_222 : StackLang.HolProg 64 :=
.seq RemovedBody750_152 RemovedBody750_221

def RemovedBody750_223 : StackLang.HolProg 64 :=
.seq RemovedBody750_151 RemovedBody750_222

def RemovedBody750_224 : StackLang.HolProg 64 :=
.seq RemovedBody750_150 RemovedBody750_223

def RemovedBody750_225 : StackLang.HolProg 64 :=
.seq RemovedBody750_149 RemovedBody750_224

def RemovedBody750_226 : StackLang.HolProg 64 :=
.seq RemovedBody750_148 RemovedBody750_225

def RemovedBody750_227 : StackLang.HolProg 64 :=
.seq RemovedBody750_147 RemovedBody750_226

def RemovedBody750_228 : StackLang.HolProg 64 :=
.seq RemovedBody750_86 RemovedBody750_227

def RemovedBody750_229 : StackLang.HolProg 64 :=
.seq RemovedBody750_81 RemovedBody750_228

def RemovedBody750_230 : StackLang.HolProg 64 :=
.seq RemovedBody750_80 RemovedBody750_229

def RemovedBody750_231 : StackLang.HolProg 64 :=
.seq RemovedBody750_79 RemovedBody750_230

def RemovedBody750_232 : StackLang.HolProg 64 :=
.seq RemovedBody750_78 RemovedBody750_231

def RemovedBody750_233 : StackLang.HolProg 64 :=
.seq RemovedBody750_77 RemovedBody750_232

def RemovedBody750_234 : StackLang.HolProg 64 :=
.seq RemovedBody750_76 RemovedBody750_233

def RemovedBody750_235 : StackLang.HolProg 64 :=
.seq RemovedBody750_75 RemovedBody750_234

def RemovedBody750_236 : StackLang.HolProg 64 :=
.seq RemovedBody750_74 RemovedBody750_235

def RemovedBody750_237 : StackLang.HolProg 64 :=
.seq RemovedBody750_13 RemovedBody750_236

def RemovedBody750_238 : StackLang.HolProg 64 :=
.seq RemovedBody750_6 RemovedBody750_237

def Removed750 : Nat × StackLang.HolProg 64 := (750, RemovedBody750_238)
theorem Removed750_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc750 = Removed750 := by
  kernel_rfl
#print axioms Removed750_eq
end InitECandidate.Proofs.BackendStages
