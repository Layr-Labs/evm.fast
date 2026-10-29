import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc606
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody606_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def RemovedBody606_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody606_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody606_3 : StackLang.HolProg 64 :=
.seq RemovedBody606_1 RemovedBody606_2

def RemovedBody606_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody606_3 RemovedBody606_4

def RemovedBody606_6 : StackLang.HolProg 64 :=
.seq RemovedBody606_0 RemovedBody606_5

def RemovedBody606_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1024#64)

def RemovedBody606_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody606_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 128#64))

def RemovedBody606_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def RemovedBody606_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody606_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody606_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_18 : StackLang.HolProg 64 :=
.seq RemovedBody606_16 RemovedBody606_17

def RemovedBody606_19 : StackLang.HolProg 64 :=
.seq RemovedBody606_15 RemovedBody606_18

def RemovedBody606_20 : StackLang.HolProg 64 :=
.seq RemovedBody606_14 RemovedBody606_19

def RemovedBody606_21 : StackLang.HolProg 64 :=
.seq RemovedBody606_13 RemovedBody606_20

def RemovedBody606_22 : StackLang.HolProg 64 :=
.seq RemovedBody606_12 RemovedBody606_21

def RemovedBody606_23 : StackLang.HolProg 64 :=
.seq RemovedBody606_11 RemovedBody606_22

def RemovedBody606_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody606_23 RemovedBody606_24

def RemovedBody606_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody606_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody606_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody606_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody606_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def RemovedBody606_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody606_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody606_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody606_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody606_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody606_40 : StackLang.HolProg 64 :=
.seq RemovedBody606_38 RemovedBody606_39

def RemovedBody606_41 : StackLang.HolProg 64 :=
.seq RemovedBody606_37 RemovedBody606_40

def RemovedBody606_42 : StackLang.HolProg 64 :=
.seq RemovedBody606_36 RemovedBody606_41

def RemovedBody606_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2318#64)

def RemovedBody606_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_46 : StackLang.HolProg 64 :=
.seq RemovedBody606_44 RemovedBody606_45

def RemovedBody606_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody606_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody606_50 : StackLang.HolProg 64 :=
.seq RemovedBody606_48 RemovedBody606_49

def RemovedBody606_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_52 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody606_50 RemovedBody606_51

def RemovedBody606_53 : StackLang.HolProg 64 :=
.seq RemovedBody606_47 RemovedBody606_52

def RemovedBody606_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody606_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 3

def RemovedBody606_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody606_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody606_63 : StackLang.HolProg 64 :=
.seq RemovedBody606_61 RemovedBody606_62

def RemovedBody606_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody606_65 : StackLang.HolProg 64 :=
.seq RemovedBody606_63 RemovedBody606_64

def RemovedBody606_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_67 : StackLang.HolProg 64 :=
.seq RemovedBody606_65 RemovedBody606_66

def RemovedBody606_68 : StackLang.HolProg 64 :=
.seq RemovedBody606_60 RemovedBody606_67

def RemovedBody606_69 : StackLang.HolProg 64 :=
.seq RemovedBody606_59 RemovedBody606_68

def RemovedBody606_70 : StackLang.HolProg 64 :=
.seq RemovedBody606_58 RemovedBody606_69

def RemovedBody606_71 : StackLang.HolProg 64 :=
.seq RemovedBody606_57 RemovedBody606_70

def RemovedBody606_72 : StackLang.HolProg 64 :=
.seq RemovedBody606_56 RemovedBody606_71

def RemovedBody606_73 : StackLang.HolProg 64 :=
.seq RemovedBody606_55 RemovedBody606_72

def RemovedBody606_74 : StackLang.HolProg 64 :=
.seq RemovedBody606_54 RemovedBody606_73

def RemovedBody606_75 : StackLang.HolProg 64 :=
.seq RemovedBody606_53 RemovedBody606_74

def RemovedBody606_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody606_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_84 : StackLang.HolProg 64 :=
.seq RemovedBody606_82 RemovedBody606_83

def RemovedBody606_85 : StackLang.HolProg 64 :=
.seq RemovedBody606_81 RemovedBody606_84

def RemovedBody606_86 : StackLang.HolProg 64 :=
.seq RemovedBody606_80 RemovedBody606_85

def RemovedBody606_87 : StackLang.HolProg 64 :=
.seq RemovedBody606_79 RemovedBody606_86

def RemovedBody606_88 : StackLang.HolProg 64 :=
.seq RemovedBody606_78 RemovedBody606_87

def RemovedBody606_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_91 : StackLang.HolProg 64 :=
.seq RemovedBody606_89 RemovedBody606_90

def RemovedBody606_92 : StackLang.HolProg 64 :=
.call (some (RemovedBody606_88, 0, 606, 2)) (Sum.inl 596) (some (RemovedBody606_91, 606, 3))

def RemovedBody606_93 : StackLang.HolProg 64 :=
.seq RemovedBody606_77 RemovedBody606_92

def RemovedBody606_94 : StackLang.HolProg 64 :=
.seq RemovedBody606_76 RemovedBody606_93

def RemovedBody606_95 : StackLang.HolProg 64 :=
.seq RemovedBody606_75 RemovedBody606_94

def RemovedBody606_96 : StackLang.HolProg 64 :=
.seq RemovedBody606_46 RemovedBody606_95

def RemovedBody606_97 : StackLang.HolProg 64 :=
.seq RemovedBody606_43 RemovedBody606_96

def RemovedBody606_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 128#64))

def RemovedBody606_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody606_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_105 : StackLang.HolProg 64 :=
.seq RemovedBody606_103 RemovedBody606_104

def RemovedBody606_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2319#64)

def RemovedBody606_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_109 : StackLang.HolProg 64 :=
.seq RemovedBody606_107 RemovedBody606_108

def RemovedBody606_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody606_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody606_113 : StackLang.HolProg 64 :=
.seq RemovedBody606_111 RemovedBody606_112

def RemovedBody606_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody606_113 RemovedBody606_114

def RemovedBody606_116 : StackLang.HolProg 64 :=
.seq RemovedBody606_110 RemovedBody606_115

def RemovedBody606_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody606_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 5

def RemovedBody606_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody606_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody606_126 : StackLang.HolProg 64 :=
.seq RemovedBody606_124 RemovedBody606_125

def RemovedBody606_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody606_128 : StackLang.HolProg 64 :=
.seq RemovedBody606_126 RemovedBody606_127

def RemovedBody606_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_130 : StackLang.HolProg 64 :=
.seq RemovedBody606_128 RemovedBody606_129

def RemovedBody606_131 : StackLang.HolProg 64 :=
.seq RemovedBody606_123 RemovedBody606_130

def RemovedBody606_132 : StackLang.HolProg 64 :=
.seq RemovedBody606_122 RemovedBody606_131

def RemovedBody606_133 : StackLang.HolProg 64 :=
.seq RemovedBody606_121 RemovedBody606_132

def RemovedBody606_134 : StackLang.HolProg 64 :=
.seq RemovedBody606_120 RemovedBody606_133

def RemovedBody606_135 : StackLang.HolProg 64 :=
.seq RemovedBody606_119 RemovedBody606_134

def RemovedBody606_136 : StackLang.HolProg 64 :=
.seq RemovedBody606_118 RemovedBody606_135

def RemovedBody606_137 : StackLang.HolProg 64 :=
.seq RemovedBody606_117 RemovedBody606_136

def RemovedBody606_138 : StackLang.HolProg 64 :=
.seq RemovedBody606_116 RemovedBody606_137

def RemovedBody606_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody606_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_149 : StackLang.HolProg 64 :=
.seq RemovedBody606_147 RemovedBody606_148

def RemovedBody606_150 : StackLang.HolProg 64 :=
.seq RemovedBody606_146 RemovedBody606_149

def RemovedBody606_151 : StackLang.HolProg 64 :=
.seq RemovedBody606_145 RemovedBody606_150

def RemovedBody606_152 : StackLang.HolProg 64 :=
.seq RemovedBody606_144 RemovedBody606_151

def RemovedBody606_153 : StackLang.HolProg 64 :=
.seq RemovedBody606_143 RemovedBody606_152

def RemovedBody606_154 : StackLang.HolProg 64 :=
.seq RemovedBody606_142 RemovedBody606_153

def RemovedBody606_155 : StackLang.HolProg 64 :=
.seq RemovedBody606_141 RemovedBody606_154

def RemovedBody606_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_159 : StackLang.HolProg 64 :=
.seq RemovedBody606_157 RemovedBody606_158

def RemovedBody606_160 : StackLang.HolProg 64 :=
.seq RemovedBody606_156 RemovedBody606_159

def RemovedBody606_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_162 : StackLang.HolProg 64 :=
.seq RemovedBody606_160 RemovedBody606_161

def RemovedBody606_163 : StackLang.HolProg 64 :=
.call (some (RemovedBody606_155, 0, 606, 4)) (Sum.inl 390) (some (RemovedBody606_162, 606, 5))

def RemovedBody606_164 : StackLang.HolProg 64 :=
.seq RemovedBody606_140 RemovedBody606_163

def RemovedBody606_165 : StackLang.HolProg 64 :=
.seq RemovedBody606_139 RemovedBody606_164

def RemovedBody606_166 : StackLang.HolProg 64 :=
.seq RemovedBody606_138 RemovedBody606_165

def RemovedBody606_167 : StackLang.HolProg 64 :=
.seq RemovedBody606_109 RemovedBody606_166

def RemovedBody606_168 : StackLang.HolProg 64 :=
.seq RemovedBody606_106 RemovedBody606_167

def RemovedBody606_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def RemovedBody606_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody606_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_175 : StackLang.HolProg 64 :=
.seq RemovedBody606_173 RemovedBody606_174

def RemovedBody606_176 : StackLang.HolProg 64 :=
.seq RemovedBody606_172 RemovedBody606_175

def RemovedBody606_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2320#64)

def RemovedBody606_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_180 : StackLang.HolProg 64 :=
.seq RemovedBody606_178 RemovedBody606_179

def RemovedBody606_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody606_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody606_184 : StackLang.HolProg 64 :=
.seq RemovedBody606_182 RemovedBody606_183

def RemovedBody606_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody606_184 RemovedBody606_185

def RemovedBody606_187 : StackLang.HolProg 64 :=
.seq RemovedBody606_181 RemovedBody606_186

def RemovedBody606_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody606_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 17

def RemovedBody606_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody606_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody606_197 : StackLang.HolProg 64 :=
.seq RemovedBody606_195 RemovedBody606_196

def RemovedBody606_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody606_199 : StackLang.HolProg 64 :=
.seq RemovedBody606_197 RemovedBody606_198

def RemovedBody606_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_201 : StackLang.HolProg 64 :=
.seq RemovedBody606_199 RemovedBody606_200

def RemovedBody606_202 : StackLang.HolProg 64 :=
.seq RemovedBody606_194 RemovedBody606_201

def RemovedBody606_203 : StackLang.HolProg 64 :=
.seq RemovedBody606_193 RemovedBody606_202

def RemovedBody606_204 : StackLang.HolProg 64 :=
.seq RemovedBody606_192 RemovedBody606_203

def RemovedBody606_205 : StackLang.HolProg 64 :=
.seq RemovedBody606_191 RemovedBody606_204

def RemovedBody606_206 : StackLang.HolProg 64 :=
.seq RemovedBody606_190 RemovedBody606_205

def RemovedBody606_207 : StackLang.HolProg 64 :=
.seq RemovedBody606_189 RemovedBody606_206

def RemovedBody606_208 : StackLang.HolProg 64 :=
.seq RemovedBody606_188 RemovedBody606_207

def RemovedBody606_209 : StackLang.HolProg 64 :=
.seq RemovedBody606_187 RemovedBody606_208

def RemovedBody606_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_217 : StackLang.HolProg 64 :=
.seq RemovedBody606_215 RemovedBody606_216

def RemovedBody606_218 : StackLang.HolProg 64 :=
.seq RemovedBody606_214 RemovedBody606_217

def RemovedBody606_219 : StackLang.HolProg 64 :=
.seq RemovedBody606_213 RemovedBody606_218

def RemovedBody606_220 : StackLang.HolProg 64 :=
.seq RemovedBody606_212 RemovedBody606_219

def RemovedBody606_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody606_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody606_224 : StackLang.HolProg 64 :=
.seq RemovedBody606_222 RemovedBody606_223

def RemovedBody606_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_227 : StackLang.HolProg 64 :=
.seq RemovedBody606_225 RemovedBody606_226

def RemovedBody606_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody606_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody606_232 : StackLang.HolProg 64 :=
.seq RemovedBody606_230 RemovedBody606_231

def RemovedBody606_233 : StackLang.HolProg 64 :=
.seq RemovedBody606_229 RemovedBody606_232

def RemovedBody606_234 : StackLang.HolProg 64 :=
.seq RemovedBody606_228 RemovedBody606_233

def RemovedBody606_235 : StackLang.HolProg 64 :=
.seq RemovedBody606_227 RemovedBody606_234

def RemovedBody606_236 : StackLang.HolProg 64 :=
.seq RemovedBody606_224 RemovedBody606_235

def RemovedBody606_237 : StackLang.HolProg 64 :=
.seq RemovedBody606_221 RemovedBody606_236

def RemovedBody606_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_240 : StackLang.HolProg 64 :=
.seq RemovedBody606_238 RemovedBody606_239

def RemovedBody606_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody606_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody606_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody606_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 208#64))

def RemovedBody606_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody606_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_251 : StackLang.HolProg 64 :=
.seq RemovedBody606_249 RemovedBody606_250

def RemovedBody606_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody606_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_254 : StackLang.HolProg 64 :=
.seq RemovedBody606_252 RemovedBody606_253

def RemovedBody606_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_256 : StackLang.HolProg 64 :=
.seq RemovedBody606_254 RemovedBody606_255

def RemovedBody606_257 : StackLang.HolProg 64 :=
.seq RemovedBody606_251 RemovedBody606_256

def RemovedBody606_258 : StackLang.HolProg 64 :=
.seq RemovedBody606_248 RemovedBody606_257

def RemovedBody606_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2321#64)

def RemovedBody606_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_262 : StackLang.HolProg 64 :=
.seq RemovedBody606_260 RemovedBody606_261

def RemovedBody606_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody606_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody606_266 : StackLang.HolProg 64 :=
.seq RemovedBody606_264 RemovedBody606_265

def RemovedBody606_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_268 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody606_266 RemovedBody606_267

def RemovedBody606_269 : StackLang.HolProg 64 :=
.seq RemovedBody606_263 RemovedBody606_268

def RemovedBody606_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody606_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 8

def RemovedBody606_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody606_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody606_279 : StackLang.HolProg 64 :=
.seq RemovedBody606_277 RemovedBody606_278

def RemovedBody606_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody606_281 : StackLang.HolProg 64 :=
.seq RemovedBody606_279 RemovedBody606_280

def RemovedBody606_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_283 : StackLang.HolProg 64 :=
.seq RemovedBody606_281 RemovedBody606_282

def RemovedBody606_284 : StackLang.HolProg 64 :=
.seq RemovedBody606_276 RemovedBody606_283

def RemovedBody606_285 : StackLang.HolProg 64 :=
.seq RemovedBody606_275 RemovedBody606_284

def RemovedBody606_286 : StackLang.HolProg 64 :=
.seq RemovedBody606_274 RemovedBody606_285

def RemovedBody606_287 : StackLang.HolProg 64 :=
.seq RemovedBody606_273 RemovedBody606_286

def RemovedBody606_288 : StackLang.HolProg 64 :=
.seq RemovedBody606_272 RemovedBody606_287

def RemovedBody606_289 : StackLang.HolProg 64 :=
.seq RemovedBody606_271 RemovedBody606_288

def RemovedBody606_290 : StackLang.HolProg 64 :=
.seq RemovedBody606_270 RemovedBody606_289

def RemovedBody606_291 : StackLang.HolProg 64 :=
.seq RemovedBody606_269 RemovedBody606_290

def RemovedBody606_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_299 : StackLang.HolProg 64 :=
.seq RemovedBody606_297 RemovedBody606_298

def RemovedBody606_300 : StackLang.HolProg 64 :=
.seq RemovedBody606_296 RemovedBody606_299

def RemovedBody606_301 : StackLang.HolProg 64 :=
.seq RemovedBody606_295 RemovedBody606_300

def RemovedBody606_302 : StackLang.HolProg 64 :=
.seq RemovedBody606_294 RemovedBody606_301

def RemovedBody606_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_305 : StackLang.HolProg 64 :=
.seq RemovedBody606_303 RemovedBody606_304

def RemovedBody606_306 : StackLang.HolProg 64 :=
.call (some (RemovedBody606_302, 0, 606, 7)) (Sum.inl 76) (some (RemovedBody606_305, 606, 8))

def RemovedBody606_307 : StackLang.HolProg 64 :=
.seq RemovedBody606_293 RemovedBody606_306

def RemovedBody606_308 : StackLang.HolProg 64 :=
.seq RemovedBody606_292 RemovedBody606_307

def RemovedBody606_309 : StackLang.HolProg 64 :=
.seq RemovedBody606_291 RemovedBody606_308

def RemovedBody606_310 : StackLang.HolProg 64 :=
.seq RemovedBody606_262 RemovedBody606_309

def RemovedBody606_311 : StackLang.HolProg 64 :=
.seq RemovedBody606_259 RemovedBody606_310

def RemovedBody606_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 224#64))

def RemovedBody606_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2322#64)

def RemovedBody606_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_319 : StackLang.HolProg 64 :=
.seq RemovedBody606_317 RemovedBody606_318

def RemovedBody606_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody606_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody606_323 : StackLang.HolProg 64 :=
.seq RemovedBody606_321 RemovedBody606_322

def RemovedBody606_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_325 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody606_323 RemovedBody606_324

def RemovedBody606_326 : StackLang.HolProg 64 :=
.seq RemovedBody606_320 RemovedBody606_325

def RemovedBody606_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody606_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 10

def RemovedBody606_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody606_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody606_336 : StackLang.HolProg 64 :=
.seq RemovedBody606_334 RemovedBody606_335

def RemovedBody606_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody606_338 : StackLang.HolProg 64 :=
.seq RemovedBody606_336 RemovedBody606_337

def RemovedBody606_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_340 : StackLang.HolProg 64 :=
.seq RemovedBody606_338 RemovedBody606_339

def RemovedBody606_341 : StackLang.HolProg 64 :=
.seq RemovedBody606_333 RemovedBody606_340

def RemovedBody606_342 : StackLang.HolProg 64 :=
.seq RemovedBody606_332 RemovedBody606_341

def RemovedBody606_343 : StackLang.HolProg 64 :=
.seq RemovedBody606_331 RemovedBody606_342

def RemovedBody606_344 : StackLang.HolProg 64 :=
.seq RemovedBody606_330 RemovedBody606_343

def RemovedBody606_345 : StackLang.HolProg 64 :=
.seq RemovedBody606_329 RemovedBody606_344

def RemovedBody606_346 : StackLang.HolProg 64 :=
.seq RemovedBody606_328 RemovedBody606_345

def RemovedBody606_347 : StackLang.HolProg 64 :=
.seq RemovedBody606_327 RemovedBody606_346

def RemovedBody606_348 : StackLang.HolProg 64 :=
.seq RemovedBody606_326 RemovedBody606_347

def RemovedBody606_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody606_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_358 : StackLang.HolProg 64 :=
.seq RemovedBody606_356 RemovedBody606_357

def RemovedBody606_359 : StackLang.HolProg 64 :=
.seq RemovedBody606_355 RemovedBody606_358

def RemovedBody606_360 : StackLang.HolProg 64 :=
.seq RemovedBody606_354 RemovedBody606_359

def RemovedBody606_361 : StackLang.HolProg 64 :=
.seq RemovedBody606_353 RemovedBody606_360

def RemovedBody606_362 : StackLang.HolProg 64 :=
.seq RemovedBody606_352 RemovedBody606_361

def RemovedBody606_363 : StackLang.HolProg 64 :=
.seq RemovedBody606_351 RemovedBody606_362

def RemovedBody606_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody606_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_367 : StackLang.HolProg 64 :=
.seq RemovedBody606_365 RemovedBody606_366

def RemovedBody606_368 : StackLang.HolProg 64 :=
.seq RemovedBody606_364 RemovedBody606_367

def RemovedBody606_369 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_370 : StackLang.HolProg 64 :=
.seq RemovedBody606_368 RemovedBody606_369

def RemovedBody606_371 : StackLang.HolProg 64 :=
.call (some (RemovedBody606_363, 0, 606, 9)) (Sum.inl 73) (some (RemovedBody606_370, 606, 10))

def RemovedBody606_372 : StackLang.HolProg 64 :=
.seq RemovedBody606_350 RemovedBody606_371

def RemovedBody606_373 : StackLang.HolProg 64 :=
.seq RemovedBody606_349 RemovedBody606_372

def RemovedBody606_374 : StackLang.HolProg 64 :=
.seq RemovedBody606_348 RemovedBody606_373

def RemovedBody606_375 : StackLang.HolProg 64 :=
.seq RemovedBody606_319 RemovedBody606_374

def RemovedBody606_376 : StackLang.HolProg 64 :=
.seq RemovedBody606_316 RemovedBody606_375

def RemovedBody606_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody606_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody606_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody606_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def RemovedBody606_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody606_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody606_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody606_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody606_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551328#64)))

def RemovedBody606_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody606_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody606_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody606_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_394 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_395 : StackLang.HolProg 64 :=
.seq RemovedBody606_393 RemovedBody606_394

def RemovedBody606_396 : StackLang.HolProg 64 :=
.seq RemovedBody606_392 RemovedBody606_395

def RemovedBody606_397 : StackLang.HolProg 64 :=
.seq RemovedBody606_391 RemovedBody606_396

def RemovedBody606_398 : StackLang.HolProg 64 :=
.seq RemovedBody606_390 RemovedBody606_397

def RemovedBody606_399 : StackLang.HolProg 64 :=
.seq RemovedBody606_389 RemovedBody606_398

def RemovedBody606_400 : StackLang.HolProg 64 :=
.seq RemovedBody606_388 RemovedBody606_399

def RemovedBody606_401 : StackLang.HolProg 64 :=
.seq RemovedBody606_387 RemovedBody606_400

def RemovedBody606_402 : StackLang.HolProg 64 :=
.seq RemovedBody606_386 RemovedBody606_401

def RemovedBody606_403 : StackLang.HolProg 64 :=
.seq RemovedBody606_385 RemovedBody606_402

def RemovedBody606_404 : StackLang.HolProg 64 :=
.seq RemovedBody606_384 RemovedBody606_403

def RemovedBody606_405 : StackLang.HolProg 64 :=
.seq RemovedBody606_383 RemovedBody606_404

def RemovedBody606_406 : StackLang.HolProg 64 :=
.seq RemovedBody606_382 RemovedBody606_405

def RemovedBody606_407 : StackLang.HolProg 64 :=
.seq RemovedBody606_381 RemovedBody606_406

def RemovedBody606_408 : StackLang.HolProg 64 :=
.seq RemovedBody606_380 RemovedBody606_407

def RemovedBody606_409 : StackLang.HolProg 64 :=
.seq RemovedBody606_379 RemovedBody606_408

def RemovedBody606_410 : StackLang.HolProg 64 :=
.seq RemovedBody606_378 RemovedBody606_409

def RemovedBody606_411 : StackLang.HolProg 64 :=
.seq RemovedBody606_377 RemovedBody606_410

def RemovedBody606_412 : StackLang.HolProg 64 :=
.seq RemovedBody606_376 RemovedBody606_411

def RemovedBody606_413 : StackLang.HolProg 64 :=
.seq RemovedBody606_315 RemovedBody606_412

def RemovedBody606_414 : StackLang.HolProg 64 :=
.seq RemovedBody606_314 RemovedBody606_413

def RemovedBody606_415 : StackLang.HolProg 64 :=
.seq RemovedBody606_313 RemovedBody606_414

def RemovedBody606_416 : StackLang.HolProg 64 :=
.seq RemovedBody606_312 RemovedBody606_415

def RemovedBody606_417 : StackLang.HolProg 64 :=
.seq RemovedBody606_311 RemovedBody606_416

def RemovedBody606_418 : StackLang.HolProg 64 :=
.seq RemovedBody606_258 RemovedBody606_417

def RemovedBody606_419 : StackLang.HolProg 64 :=
.seq RemovedBody606_247 RemovedBody606_418

def RemovedBody606_420 : StackLang.HolProg 64 :=
.seq RemovedBody606_246 RemovedBody606_419

def RemovedBody606_421 : StackLang.HolProg 64 :=
.seq RemovedBody606_245 RemovedBody606_420

def RemovedBody606_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_424 : StackLang.HolProg 64 :=
.seq RemovedBody606_422 RemovedBody606_423

def RemovedBody606_425 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody606_421 RemovedBody606_424

def RemovedBody606_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody606_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2323#64)

def RemovedBody606_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_431 : StackLang.HolProg 64 :=
.seq RemovedBody606_429 RemovedBody606_430

def RemovedBody606_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody606_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody606_435 : StackLang.HolProg 64 :=
.seq RemovedBody606_433 RemovedBody606_434

def RemovedBody606_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_437 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody606_435 RemovedBody606_436

def RemovedBody606_438 : StackLang.HolProg 64 :=
.seq RemovedBody606_432 RemovedBody606_437

def RemovedBody606_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody606_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 12

def RemovedBody606_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody606_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody606_448 : StackLang.HolProg 64 :=
.seq RemovedBody606_446 RemovedBody606_447

def RemovedBody606_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody606_450 : StackLang.HolProg 64 :=
.seq RemovedBody606_448 RemovedBody606_449

def RemovedBody606_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_452 : StackLang.HolProg 64 :=
.seq RemovedBody606_450 RemovedBody606_451

def RemovedBody606_453 : StackLang.HolProg 64 :=
.seq RemovedBody606_445 RemovedBody606_452

def RemovedBody606_454 : StackLang.HolProg 64 :=
.seq RemovedBody606_444 RemovedBody606_453

def RemovedBody606_455 : StackLang.HolProg 64 :=
.seq RemovedBody606_443 RemovedBody606_454

def RemovedBody606_456 : StackLang.HolProg 64 :=
.seq RemovedBody606_442 RemovedBody606_455

def RemovedBody606_457 : StackLang.HolProg 64 :=
.seq RemovedBody606_441 RemovedBody606_456

def RemovedBody606_458 : StackLang.HolProg 64 :=
.seq RemovedBody606_440 RemovedBody606_457

def RemovedBody606_459 : StackLang.HolProg 64 :=
.seq RemovedBody606_439 RemovedBody606_458

def RemovedBody606_460 : StackLang.HolProg 64 :=
.seq RemovedBody606_438 RemovedBody606_459

def RemovedBody606_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody606_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_470 : StackLang.HolProg 64 :=
.seq RemovedBody606_468 RemovedBody606_469

def RemovedBody606_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody606_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody606_473 : StackLang.HolProg 64 :=
.seq RemovedBody606_471 RemovedBody606_472

def RemovedBody606_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody606_475 : StackLang.HolProg 64 :=
.seq RemovedBody606_473 RemovedBody606_474

def RemovedBody606_476 : StackLang.HolProg 64 :=
.seq RemovedBody606_470 RemovedBody606_475

def RemovedBody606_477 : StackLang.HolProg 64 :=
.seq RemovedBody606_467 RemovedBody606_476

def RemovedBody606_478 : StackLang.HolProg 64 :=
.seq RemovedBody606_466 RemovedBody606_477

def RemovedBody606_479 : StackLang.HolProg 64 :=
.seq RemovedBody606_465 RemovedBody606_478

def RemovedBody606_480 : StackLang.HolProg 64 :=
.seq RemovedBody606_464 RemovedBody606_479

def RemovedBody606_481 : StackLang.HolProg 64 :=
.seq RemovedBody606_463 RemovedBody606_480

def RemovedBody606_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody606_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_485 : StackLang.HolProg 64 :=
.seq RemovedBody606_483 RemovedBody606_484

def RemovedBody606_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody606_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody606_488 : StackLang.HolProg 64 :=
.seq RemovedBody606_486 RemovedBody606_487

def RemovedBody606_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody606_490 : StackLang.HolProg 64 :=
.seq RemovedBody606_488 RemovedBody606_489

def RemovedBody606_491 : StackLang.HolProg 64 :=
.seq RemovedBody606_485 RemovedBody606_490

def RemovedBody606_492 : StackLang.HolProg 64 :=
.seq RemovedBody606_482 RemovedBody606_491

def RemovedBody606_493 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_494 : StackLang.HolProg 64 :=
.seq RemovedBody606_492 RemovedBody606_493

def RemovedBody606_495 : StackLang.HolProg 64 :=
.call (some (RemovedBody606_481, 0, 606, 11)) (Sum.inl 391) (some (RemovedBody606_494, 606, 12))

def RemovedBody606_496 : StackLang.HolProg 64 :=
.seq RemovedBody606_462 RemovedBody606_495

def RemovedBody606_497 : StackLang.HolProg 64 :=
.seq RemovedBody606_461 RemovedBody606_496

def RemovedBody606_498 : StackLang.HolProg 64 :=
.seq RemovedBody606_460 RemovedBody606_497

def RemovedBody606_499 : StackLang.HolProg 64 :=
.seq RemovedBody606_431 RemovedBody606_498

def RemovedBody606_500 : StackLang.HolProg 64 :=
.seq RemovedBody606_428 RemovedBody606_499

def RemovedBody606_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody606_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody606_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody606_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody606_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody606_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody606_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 200#64)))

def RemovedBody606_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody606_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody606_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2324#64)

def RemovedBody606_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_518 : StackLang.HolProg 64 :=
.seq RemovedBody606_516 RemovedBody606_517

def RemovedBody606_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody606_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody606_522 : StackLang.HolProg 64 :=
.seq RemovedBody606_520 RemovedBody606_521

def RemovedBody606_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_524 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody606_522 RemovedBody606_523

def RemovedBody606_525 : StackLang.HolProg 64 :=
.seq RemovedBody606_519 RemovedBody606_524

def RemovedBody606_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody606_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 14

def RemovedBody606_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody606_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody606_535 : StackLang.HolProg 64 :=
.seq RemovedBody606_533 RemovedBody606_534

def RemovedBody606_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody606_537 : StackLang.HolProg 64 :=
.seq RemovedBody606_535 RemovedBody606_536

def RemovedBody606_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_539 : StackLang.HolProg 64 :=
.seq RemovedBody606_537 RemovedBody606_538

def RemovedBody606_540 : StackLang.HolProg 64 :=
.seq RemovedBody606_532 RemovedBody606_539

def RemovedBody606_541 : StackLang.HolProg 64 :=
.seq RemovedBody606_531 RemovedBody606_540

def RemovedBody606_542 : StackLang.HolProg 64 :=
.seq RemovedBody606_530 RemovedBody606_541

def RemovedBody606_543 : StackLang.HolProg 64 :=
.seq RemovedBody606_529 RemovedBody606_542

def RemovedBody606_544 : StackLang.HolProg 64 :=
.seq RemovedBody606_528 RemovedBody606_543

def RemovedBody606_545 : StackLang.HolProg 64 :=
.seq RemovedBody606_527 RemovedBody606_544

def RemovedBody606_546 : StackLang.HolProg 64 :=
.seq RemovedBody606_526 RemovedBody606_545

def RemovedBody606_547 : StackLang.HolProg 64 :=
.seq RemovedBody606_525 RemovedBody606_546

def RemovedBody606_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_557 : StackLang.HolProg 64 :=
.seq RemovedBody606_555 RemovedBody606_556

def RemovedBody606_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_560 : StackLang.HolProg 64 :=
.seq RemovedBody606_558 RemovedBody606_559

def RemovedBody606_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody606_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_563 : StackLang.HolProg 64 :=
.seq RemovedBody606_561 RemovedBody606_562

def RemovedBody606_564 : StackLang.HolProg 64 :=
.seq RemovedBody606_560 RemovedBody606_563

def RemovedBody606_565 : StackLang.HolProg 64 :=
.seq RemovedBody606_557 RemovedBody606_564

def RemovedBody606_566 : StackLang.HolProg 64 :=
.seq RemovedBody606_554 RemovedBody606_565

def RemovedBody606_567 : StackLang.HolProg 64 :=
.seq RemovedBody606_553 RemovedBody606_566

def RemovedBody606_568 : StackLang.HolProg 64 :=
.seq RemovedBody606_552 RemovedBody606_567

def RemovedBody606_569 : StackLang.HolProg 64 :=
.seq RemovedBody606_551 RemovedBody606_568

def RemovedBody606_570 : StackLang.HolProg 64 :=
.seq RemovedBody606_550 RemovedBody606_569

def RemovedBody606_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_574 : StackLang.HolProg 64 :=
.seq RemovedBody606_572 RemovedBody606_573

def RemovedBody606_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_577 : StackLang.HolProg 64 :=
.seq RemovedBody606_575 RemovedBody606_576

def RemovedBody606_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody606_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_580 : StackLang.HolProg 64 :=
.seq RemovedBody606_578 RemovedBody606_579

def RemovedBody606_581 : StackLang.HolProg 64 :=
.seq RemovedBody606_577 RemovedBody606_580

def RemovedBody606_582 : StackLang.HolProg 64 :=
.seq RemovedBody606_574 RemovedBody606_581

def RemovedBody606_583 : StackLang.HolProg 64 :=
.seq RemovedBody606_571 RemovedBody606_582

def RemovedBody606_584 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_585 : StackLang.HolProg 64 :=
.seq RemovedBody606_583 RemovedBody606_584

def RemovedBody606_586 : StackLang.HolProg 64 :=
.call (some (RemovedBody606_570, 0, 606, 13)) (Sum.inl 474) (some (RemovedBody606_585, 606, 14))

def RemovedBody606_587 : StackLang.HolProg 64 :=
.seq RemovedBody606_549 RemovedBody606_586

def RemovedBody606_588 : StackLang.HolProg 64 :=
.seq RemovedBody606_548 RemovedBody606_587

def RemovedBody606_589 : StackLang.HolProg 64 :=
.seq RemovedBody606_547 RemovedBody606_588

def RemovedBody606_590 : StackLang.HolProg 64 :=
.seq RemovedBody606_518 RemovedBody606_589

def RemovedBody606_591 : StackLang.HolProg 64 :=
.seq RemovedBody606_515 RemovedBody606_590

def RemovedBody606_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody606_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2325#64)

def RemovedBody606_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_597 : StackLang.HolProg 64 :=
.seq RemovedBody606_595 RemovedBody606_596

def RemovedBody606_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody606_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody606_601 : StackLang.HolProg 64 :=
.seq RemovedBody606_599 RemovedBody606_600

def RemovedBody606_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_603 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody606_601 RemovedBody606_602

def RemovedBody606_604 : StackLang.HolProg 64 :=
.seq RemovedBody606_598 RemovedBody606_603

def RemovedBody606_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody606_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 16

def RemovedBody606_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody606_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody606_614 : StackLang.HolProg 64 :=
.seq RemovedBody606_612 RemovedBody606_613

def RemovedBody606_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody606_616 : StackLang.HolProg 64 :=
.seq RemovedBody606_614 RemovedBody606_615

def RemovedBody606_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_618 : StackLang.HolProg 64 :=
.seq RemovedBody606_616 RemovedBody606_617

def RemovedBody606_619 : StackLang.HolProg 64 :=
.seq RemovedBody606_611 RemovedBody606_618

def RemovedBody606_620 : StackLang.HolProg 64 :=
.seq RemovedBody606_610 RemovedBody606_619

def RemovedBody606_621 : StackLang.HolProg 64 :=
.seq RemovedBody606_609 RemovedBody606_620

def RemovedBody606_622 : StackLang.HolProg 64 :=
.seq RemovedBody606_608 RemovedBody606_621

def RemovedBody606_623 : StackLang.HolProg 64 :=
.seq RemovedBody606_607 RemovedBody606_622

def RemovedBody606_624 : StackLang.HolProg 64 :=
.seq RemovedBody606_606 RemovedBody606_623

def RemovedBody606_625 : StackLang.HolProg 64 :=
.seq RemovedBody606_605 RemovedBody606_624

def RemovedBody606_626 : StackLang.HolProg 64 :=
.seq RemovedBody606_604 RemovedBody606_625

def RemovedBody606_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody606_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_637 : StackLang.HolProg 64 :=
.seq RemovedBody606_635 RemovedBody606_636

def RemovedBody606_638 : StackLang.HolProg 64 :=
.seq RemovedBody606_634 RemovedBody606_637

def RemovedBody606_639 : StackLang.HolProg 64 :=
.seq RemovedBody606_633 RemovedBody606_638

def RemovedBody606_640 : StackLang.HolProg 64 :=
.seq RemovedBody606_632 RemovedBody606_639

def RemovedBody606_641 : StackLang.HolProg 64 :=
.seq RemovedBody606_631 RemovedBody606_640

def RemovedBody606_642 : StackLang.HolProg 64 :=
.seq RemovedBody606_630 RemovedBody606_641

def RemovedBody606_643 : StackLang.HolProg 64 :=
.seq RemovedBody606_629 RemovedBody606_642

def RemovedBody606_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody606_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody606_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody606_648 : StackLang.HolProg 64 :=
.seq RemovedBody606_646 RemovedBody606_647

def RemovedBody606_649 : StackLang.HolProg 64 :=
.seq RemovedBody606_645 RemovedBody606_648

def RemovedBody606_650 : StackLang.HolProg 64 :=
.seq RemovedBody606_644 RemovedBody606_649

def RemovedBody606_651 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_652 : StackLang.HolProg 64 :=
.seq RemovedBody606_650 RemovedBody606_651

def RemovedBody606_653 : StackLang.HolProg 64 :=
.call (some (RemovedBody606_643, 0, 606, 15)) (Sum.inl 604) (some (RemovedBody606_652, 606, 16))

def RemovedBody606_654 : StackLang.HolProg 64 :=
.seq RemovedBody606_628 RemovedBody606_653

def RemovedBody606_655 : StackLang.HolProg 64 :=
.seq RemovedBody606_627 RemovedBody606_654

def RemovedBody606_656 : StackLang.HolProg 64 :=
.seq RemovedBody606_626 RemovedBody606_655

def RemovedBody606_657 : StackLang.HolProg 64 :=
.seq RemovedBody606_597 RemovedBody606_656

def RemovedBody606_658 : StackLang.HolProg 64 :=
.seq RemovedBody606_594 RemovedBody606_657

def RemovedBody606_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody606_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody606_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody606_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def RemovedBody606_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody606_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody606_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody606_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody606_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551328#64)))

def RemovedBody606_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody606_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody606_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def RemovedBody606_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody606_675 : StackLang.HolProg 64 :=
.seq RemovedBody606_673 RemovedBody606_674

def RemovedBody606_676 : StackLang.HolProg 64 :=
.seq RemovedBody606_672 RemovedBody606_675

def RemovedBody606_677 : StackLang.HolProg 64 :=
.seq RemovedBody606_671 RemovedBody606_676

def RemovedBody606_678 : StackLang.HolProg 64 :=
.seq RemovedBody606_670 RemovedBody606_677

def RemovedBody606_679 : StackLang.HolProg 64 :=
.seq RemovedBody606_669 RemovedBody606_678

def RemovedBody606_680 : StackLang.HolProg 64 :=
.seq RemovedBody606_668 RemovedBody606_679

def RemovedBody606_681 : StackLang.HolProg 64 :=
.seq RemovedBody606_667 RemovedBody606_680

def RemovedBody606_682 : StackLang.HolProg 64 :=
.seq RemovedBody606_666 RemovedBody606_681

def RemovedBody606_683 : StackLang.HolProg 64 :=
.seq RemovedBody606_665 RemovedBody606_682

def RemovedBody606_684 : StackLang.HolProg 64 :=
.seq RemovedBody606_664 RemovedBody606_683

def RemovedBody606_685 : StackLang.HolProg 64 :=
.seq RemovedBody606_663 RemovedBody606_684

def RemovedBody606_686 : StackLang.HolProg 64 :=
.seq RemovedBody606_662 RemovedBody606_685

def RemovedBody606_687 : StackLang.HolProg 64 :=
.seq RemovedBody606_661 RemovedBody606_686

def RemovedBody606_688 : StackLang.HolProg 64 :=
.seq RemovedBody606_660 RemovedBody606_687

def RemovedBody606_689 : StackLang.HolProg 64 :=
.seq RemovedBody606_659 RemovedBody606_688

def RemovedBody606_690 : StackLang.HolProg 64 :=
.seq RemovedBody606_658 RemovedBody606_689

def RemovedBody606_691 : StackLang.HolProg 64 :=
.seq RemovedBody606_593 RemovedBody606_690

def RemovedBody606_692 : StackLang.HolProg 64 :=
.seq RemovedBody606_592 RemovedBody606_691

def RemovedBody606_693 : StackLang.HolProg 64 :=
.seq RemovedBody606_591 RemovedBody606_692

def RemovedBody606_694 : StackLang.HolProg 64 :=
.seq RemovedBody606_514 RemovedBody606_693

def RemovedBody606_695 : StackLang.HolProg 64 :=
.seq RemovedBody606_513 RemovedBody606_694

def RemovedBody606_696 : StackLang.HolProg 64 :=
.seq RemovedBody606_512 RemovedBody606_695

def RemovedBody606_697 : StackLang.HolProg 64 :=
.seq RemovedBody606_511 RemovedBody606_696

def RemovedBody606_698 : StackLang.HolProg 64 :=
.seq RemovedBody606_510 RemovedBody606_697

def RemovedBody606_699 : StackLang.HolProg 64 :=
.seq RemovedBody606_509 RemovedBody606_698

def RemovedBody606_700 : StackLang.HolProg 64 :=
.seq RemovedBody606_508 RemovedBody606_699

def RemovedBody606_701 : StackLang.HolProg 64 :=
.seq RemovedBody606_507 RemovedBody606_700

def RemovedBody606_702 : StackLang.HolProg 64 :=
.seq RemovedBody606_506 RemovedBody606_701

def RemovedBody606_703 : StackLang.HolProg 64 :=
.seq RemovedBody606_505 RemovedBody606_702

def RemovedBody606_704 : StackLang.HolProg 64 :=
.seq RemovedBody606_504 RemovedBody606_703

def RemovedBody606_705 : StackLang.HolProg 64 :=
.seq RemovedBody606_503 RemovedBody606_704

def RemovedBody606_706 : StackLang.HolProg 64 :=
.seq RemovedBody606_502 RemovedBody606_705

def RemovedBody606_707 : StackLang.HolProg 64 :=
.seq RemovedBody606_501 RemovedBody606_706

def RemovedBody606_708 : StackLang.HolProg 64 :=
.seq RemovedBody606_500 RemovedBody606_707

def RemovedBody606_709 : StackLang.HolProg 64 :=
.seq RemovedBody606_427 RemovedBody606_708

def RemovedBody606_710 : StackLang.HolProg 64 :=
.seq RemovedBody606_426 RemovedBody606_709

def RemovedBody606_711 : StackLang.HolProg 64 :=
.seq RemovedBody606_425 RemovedBody606_710

def RemovedBody606_712 : StackLang.HolProg 64 :=
.seq RemovedBody606_244 RemovedBody606_711

def RemovedBody606_713 : StackLang.HolProg 64 :=
.seq RemovedBody606_243 RemovedBody606_712

def RemovedBody606_714 : StackLang.HolProg 64 :=
.seq RemovedBody606_242 RemovedBody606_713

def RemovedBody606_715 : StackLang.HolProg 64 :=
.seq RemovedBody606_241 RemovedBody606_714

def RemovedBody606_716 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) RemovedBody606_240 RemovedBody606_715

def RemovedBody606_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody606_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_720 : StackLang.HolProg 64 :=
.seq RemovedBody606_718 RemovedBody606_719

def RemovedBody606_721 : StackLang.HolProg 64 :=
.seq RemovedBody606_717 RemovedBody606_720

def RemovedBody606_722 : StackLang.HolProg 64 :=
.seq RemovedBody606_716 RemovedBody606_721

def RemovedBody606_723 : StackLang.HolProg 64 :=
.seq RemovedBody606_237 RemovedBody606_722

def RemovedBody606_724 : StackLang.HolProg 64 :=
.call (some (RemovedBody606_220, 0, 606, 6)) (Sum.inl 605) (some (RemovedBody606_723, 606, 17))

def RemovedBody606_725 : StackLang.HolProg 64 :=
.seq RemovedBody606_211 RemovedBody606_724

def RemovedBody606_726 : StackLang.HolProg 64 :=
.seq RemovedBody606_210 RemovedBody606_725

def RemovedBody606_727 : StackLang.HolProg 64 :=
.seq RemovedBody606_209 RemovedBody606_726

def RemovedBody606_728 : StackLang.HolProg 64 :=
.seq RemovedBody606_180 RemovedBody606_727

def RemovedBody606_729 : StackLang.HolProg 64 :=
.seq RemovedBody606_177 RemovedBody606_728

def RemovedBody606_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_732 : StackLang.HolProg 64 :=
.seq RemovedBody606_730 RemovedBody606_731

def RemovedBody606_733 : StackLang.HolProg 64 :=
.seq RemovedBody606_729 RemovedBody606_732

def RemovedBody606_734 : StackLang.HolProg 64 :=
.seq RemovedBody606_176 RemovedBody606_733

def RemovedBody606_735 : StackLang.HolProg 64 :=
.seq RemovedBody606_171 RemovedBody606_734

def RemovedBody606_736 : StackLang.HolProg 64 :=
.seq RemovedBody606_170 RemovedBody606_735

def RemovedBody606_737 : StackLang.HolProg 64 :=
.seq RemovedBody606_169 RemovedBody606_736

def RemovedBody606_738 : StackLang.HolProg 64 :=
.seq RemovedBody606_168 RemovedBody606_737

def RemovedBody606_739 : StackLang.HolProg 64 :=
.seq RemovedBody606_105 RemovedBody606_738

def RemovedBody606_740 : StackLang.HolProg 64 :=
.seq RemovedBody606_102 RemovedBody606_739

def RemovedBody606_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_743 : StackLang.HolProg 64 :=
.seq RemovedBody606_741 RemovedBody606_742

def RemovedBody606_744 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody606_740 RemovedBody606_743

def RemovedBody606_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2326#64)

def RemovedBody606_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_750 : StackLang.HolProg 64 :=
.seq RemovedBody606_748 RemovedBody606_749

def RemovedBody606_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody606_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody606_754 : StackLang.HolProg 64 :=
.seq RemovedBody606_752 RemovedBody606_753

def RemovedBody606_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_756 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody606_754 RemovedBody606_755

def RemovedBody606_757 : StackLang.HolProg 64 :=
.seq RemovedBody606_751 RemovedBody606_756

def RemovedBody606_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody606_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 19

def RemovedBody606_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody606_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody606_767 : StackLang.HolProg 64 :=
.seq RemovedBody606_765 RemovedBody606_766

def RemovedBody606_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody606_769 : StackLang.HolProg 64 :=
.seq RemovedBody606_767 RemovedBody606_768

def RemovedBody606_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_771 : StackLang.HolProg 64 :=
.seq RemovedBody606_769 RemovedBody606_770

def RemovedBody606_772 : StackLang.HolProg 64 :=
.seq RemovedBody606_764 RemovedBody606_771

def RemovedBody606_773 : StackLang.HolProg 64 :=
.seq RemovedBody606_763 RemovedBody606_772

def RemovedBody606_774 : StackLang.HolProg 64 :=
.seq RemovedBody606_762 RemovedBody606_773

def RemovedBody606_775 : StackLang.HolProg 64 :=
.seq RemovedBody606_761 RemovedBody606_774

def RemovedBody606_776 : StackLang.HolProg 64 :=
.seq RemovedBody606_760 RemovedBody606_775

def RemovedBody606_777 : StackLang.HolProg 64 :=
.seq RemovedBody606_759 RemovedBody606_776

def RemovedBody606_778 : StackLang.HolProg 64 :=
.seq RemovedBody606_758 RemovedBody606_777

def RemovedBody606_779 : StackLang.HolProg 64 :=
.seq RemovedBody606_757 RemovedBody606_778

def RemovedBody606_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody606_787 : StackLang.HolProg 64 :=
.seq RemovedBody606_785 RemovedBody606_786

def RemovedBody606_788 : StackLang.HolProg 64 :=
.seq RemovedBody606_784 RemovedBody606_787

def RemovedBody606_789 : StackLang.HolProg 64 :=
.seq RemovedBody606_783 RemovedBody606_788

def RemovedBody606_790 : StackLang.HolProg 64 :=
.seq RemovedBody606_782 RemovedBody606_789

def RemovedBody606_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_792 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_793 : StackLang.HolProg 64 :=
.seq RemovedBody606_791 RemovedBody606_792

def RemovedBody606_794 : StackLang.HolProg 64 :=
.call (some (RemovedBody606_790, 0, 606, 18)) (Sum.inl 390) (some (RemovedBody606_793, 606, 19))

def RemovedBody606_795 : StackLang.HolProg 64 :=
.seq RemovedBody606_781 RemovedBody606_794

def RemovedBody606_796 : StackLang.HolProg 64 :=
.seq RemovedBody606_780 RemovedBody606_795

def RemovedBody606_797 : StackLang.HolProg 64 :=
.seq RemovedBody606_779 RemovedBody606_796

def RemovedBody606_798 : StackLang.HolProg 64 :=
.seq RemovedBody606_750 RemovedBody606_797

def RemovedBody606_799 : StackLang.HolProg 64 :=
.seq RemovedBody606_747 RemovedBody606_798

def RemovedBody606_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody606_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody606_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody606_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def RemovedBody606_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody606_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2327#64)

def RemovedBody606_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_812 : StackLang.HolProg 64 :=
.seq RemovedBody606_810 RemovedBody606_811

def RemovedBody606_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody606_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody606_816 : StackLang.HolProg 64 :=
.seq RemovedBody606_814 RemovedBody606_815

def RemovedBody606_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_818 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody606_816 RemovedBody606_817

def RemovedBody606_819 : StackLang.HolProg 64 :=
.seq RemovedBody606_813 RemovedBody606_818

def RemovedBody606_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody606_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 21

def RemovedBody606_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody606_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody606_829 : StackLang.HolProg 64 :=
.seq RemovedBody606_827 RemovedBody606_828

def RemovedBody606_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody606_831 : StackLang.HolProg 64 :=
.seq RemovedBody606_829 RemovedBody606_830

def RemovedBody606_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_833 : StackLang.HolProg 64 :=
.seq RemovedBody606_831 RemovedBody606_832

def RemovedBody606_834 : StackLang.HolProg 64 :=
.seq RemovedBody606_826 RemovedBody606_833

def RemovedBody606_835 : StackLang.HolProg 64 :=
.seq RemovedBody606_825 RemovedBody606_834

def RemovedBody606_836 : StackLang.HolProg 64 :=
.seq RemovedBody606_824 RemovedBody606_835

def RemovedBody606_837 : StackLang.HolProg 64 :=
.seq RemovedBody606_823 RemovedBody606_836

def RemovedBody606_838 : StackLang.HolProg 64 :=
.seq RemovedBody606_822 RemovedBody606_837

def RemovedBody606_839 : StackLang.HolProg 64 :=
.seq RemovedBody606_821 RemovedBody606_838

def RemovedBody606_840 : StackLang.HolProg 64 :=
.seq RemovedBody606_820 RemovedBody606_839

def RemovedBody606_841 : StackLang.HolProg 64 :=
.seq RemovedBody606_819 RemovedBody606_840

def RemovedBody606_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_849 : StackLang.HolProg 64 :=
.seq RemovedBody606_847 RemovedBody606_848

def RemovedBody606_850 : StackLang.HolProg 64 :=
.seq RemovedBody606_846 RemovedBody606_849

def RemovedBody606_851 : StackLang.HolProg 64 :=
.seq RemovedBody606_845 RemovedBody606_850

def RemovedBody606_852 : StackLang.HolProg 64 :=
.seq RemovedBody606_844 RemovedBody606_851

def RemovedBody606_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_854 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_855 : StackLang.HolProg 64 :=
.seq RemovedBody606_853 RemovedBody606_854

def RemovedBody606_856 : StackLang.HolProg 64 :=
.call (some (RemovedBody606_852, 0, 606, 20)) (Sum.inl 599) (some (RemovedBody606_855, 606, 21))

def RemovedBody606_857 : StackLang.HolProg 64 :=
.seq RemovedBody606_843 RemovedBody606_856

def RemovedBody606_858 : StackLang.HolProg 64 :=
.seq RemovedBody606_842 RemovedBody606_857

def RemovedBody606_859 : StackLang.HolProg 64 :=
.seq RemovedBody606_841 RemovedBody606_858

def RemovedBody606_860 : StackLang.HolProg 64 :=
.seq RemovedBody606_812 RemovedBody606_859

def RemovedBody606_861 : StackLang.HolProg 64 :=
.seq RemovedBody606_809 RemovedBody606_860

def RemovedBody606_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2328#64)

def RemovedBody606_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_867 : StackLang.HolProg 64 :=
.seq RemovedBody606_865 RemovedBody606_866

def RemovedBody606_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody606_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody606_871 : StackLang.HolProg 64 :=
.seq RemovedBody606_869 RemovedBody606_870

def RemovedBody606_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_873 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody606_871 RemovedBody606_872

def RemovedBody606_874 : StackLang.HolProg 64 :=
.seq RemovedBody606_868 RemovedBody606_873

def RemovedBody606_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody606_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody606_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 23

def RemovedBody606_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody606_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody606_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody606_884 : StackLang.HolProg 64 :=
.seq RemovedBody606_882 RemovedBody606_883

def RemovedBody606_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody606_886 : StackLang.HolProg 64 :=
.seq RemovedBody606_884 RemovedBody606_885

def RemovedBody606_887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_888 : StackLang.HolProg 64 :=
.seq RemovedBody606_886 RemovedBody606_887

def RemovedBody606_889 : StackLang.HolProg 64 :=
.seq RemovedBody606_881 RemovedBody606_888

def RemovedBody606_890 : StackLang.HolProg 64 :=
.seq RemovedBody606_880 RemovedBody606_889

def RemovedBody606_891 : StackLang.HolProg 64 :=
.seq RemovedBody606_879 RemovedBody606_890

def RemovedBody606_892 : StackLang.HolProg 64 :=
.seq RemovedBody606_878 RemovedBody606_891

def RemovedBody606_893 : StackLang.HolProg 64 :=
.seq RemovedBody606_877 RemovedBody606_892

def RemovedBody606_894 : StackLang.HolProg 64 :=
.seq RemovedBody606_876 RemovedBody606_893

def RemovedBody606_895 : StackLang.HolProg 64 :=
.seq RemovedBody606_875 RemovedBody606_894

def RemovedBody606_896 : StackLang.HolProg 64 :=
.seq RemovedBody606_874 RemovedBody606_895

def RemovedBody606_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody606_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody606_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody606_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody606_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody606_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_905 : StackLang.HolProg 64 :=
.seq RemovedBody606_903 RemovedBody606_904

def RemovedBody606_906 : StackLang.HolProg 64 :=
.seq RemovedBody606_902 RemovedBody606_905

def RemovedBody606_907 : StackLang.HolProg 64 :=
.seq RemovedBody606_901 RemovedBody606_906

def RemovedBody606_908 : StackLang.HolProg 64 :=
.seq RemovedBody606_900 RemovedBody606_907

def RemovedBody606_909 : StackLang.HolProg 64 :=
.seq RemovedBody606_899 RemovedBody606_908

def RemovedBody606_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody606_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody606_912 : StackLang.HolProg 64 :=
.seq RemovedBody606_910 RemovedBody606_911

def RemovedBody606_913 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody606_914 : StackLang.HolProg 64 :=
.seq RemovedBody606_912 RemovedBody606_913

def RemovedBody606_915 : StackLang.HolProg 64 :=
.call (some (RemovedBody606_909, 0, 606, 22)) (Sum.inl 602) (some (RemovedBody606_914, 606, 23))

def RemovedBody606_916 : StackLang.HolProg 64 :=
.seq RemovedBody606_898 RemovedBody606_915

def RemovedBody606_917 : StackLang.HolProg 64 :=
.seq RemovedBody606_897 RemovedBody606_916

def RemovedBody606_918 : StackLang.HolProg 64 :=
.seq RemovedBody606_896 RemovedBody606_917

def RemovedBody606_919 : StackLang.HolProg 64 :=
.seq RemovedBody606_867 RemovedBody606_918

def RemovedBody606_920 : StackLang.HolProg 64 :=
.seq RemovedBody606_864 RemovedBody606_919

def RemovedBody606_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody606_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody606_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def RemovedBody606_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody606_925 : StackLang.HolProg 64 :=
.seq RemovedBody606_923 RemovedBody606_924

def RemovedBody606_926 : StackLang.HolProg 64 :=
.seq RemovedBody606_922 RemovedBody606_925

def RemovedBody606_927 : StackLang.HolProg 64 :=
.seq RemovedBody606_921 RemovedBody606_926

def RemovedBody606_928 : StackLang.HolProg 64 :=
.seq RemovedBody606_920 RemovedBody606_927

def RemovedBody606_929 : StackLang.HolProg 64 :=
.seq RemovedBody606_863 RemovedBody606_928

def RemovedBody606_930 : StackLang.HolProg 64 :=
.seq RemovedBody606_862 RemovedBody606_929

def RemovedBody606_931 : StackLang.HolProg 64 :=
.seq RemovedBody606_861 RemovedBody606_930

def RemovedBody606_932 : StackLang.HolProg 64 :=
.seq RemovedBody606_808 RemovedBody606_931

def RemovedBody606_933 : StackLang.HolProg 64 :=
.seq RemovedBody606_807 RemovedBody606_932

def RemovedBody606_934 : StackLang.HolProg 64 :=
.seq RemovedBody606_806 RemovedBody606_933

def RemovedBody606_935 : StackLang.HolProg 64 :=
.seq RemovedBody606_805 RemovedBody606_934

def RemovedBody606_936 : StackLang.HolProg 64 :=
.seq RemovedBody606_804 RemovedBody606_935

def RemovedBody606_937 : StackLang.HolProg 64 :=
.seq RemovedBody606_803 RemovedBody606_936

def RemovedBody606_938 : StackLang.HolProg 64 :=
.seq RemovedBody606_802 RemovedBody606_937

def RemovedBody606_939 : StackLang.HolProg 64 :=
.seq RemovedBody606_801 RemovedBody606_938

def RemovedBody606_940 : StackLang.HolProg 64 :=
.seq RemovedBody606_800 RemovedBody606_939

def RemovedBody606_941 : StackLang.HolProg 64 :=
.seq RemovedBody606_799 RemovedBody606_940

def RemovedBody606_942 : StackLang.HolProg 64 :=
.seq RemovedBody606_746 RemovedBody606_941

def RemovedBody606_943 : StackLang.HolProg 64 :=
.seq RemovedBody606_745 RemovedBody606_942

def RemovedBody606_944 : StackLang.HolProg 64 :=
.seq RemovedBody606_744 RemovedBody606_943

def RemovedBody606_945 : StackLang.HolProg 64 :=
.seq RemovedBody606_101 RemovedBody606_944

def RemovedBody606_946 : StackLang.HolProg 64 :=
.seq RemovedBody606_100 RemovedBody606_945

def RemovedBody606_947 : StackLang.HolProg 64 :=
.seq RemovedBody606_99 RemovedBody606_946

def RemovedBody606_948 : StackLang.HolProg 64 :=
.seq RemovedBody606_98 RemovedBody606_947

def RemovedBody606_949 : StackLang.HolProg 64 :=
.seq RemovedBody606_97 RemovedBody606_948

def RemovedBody606_950 : StackLang.HolProg 64 :=
.seq RemovedBody606_42 RemovedBody606_949

def RemovedBody606_951 : StackLang.HolProg 64 :=
.seq RemovedBody606_35 RemovedBody606_950

def RemovedBody606_952 : StackLang.HolProg 64 :=
.seq RemovedBody606_34 RemovedBody606_951

def RemovedBody606_953 : StackLang.HolProg 64 :=
.seq RemovedBody606_33 RemovedBody606_952

def RemovedBody606_954 : StackLang.HolProg 64 :=
.seq RemovedBody606_32 RemovedBody606_953

def RemovedBody606_955 : StackLang.HolProg 64 :=
.seq RemovedBody606_31 RemovedBody606_954

def RemovedBody606_956 : StackLang.HolProg 64 :=
.seq RemovedBody606_30 RemovedBody606_955

def RemovedBody606_957 : StackLang.HolProg 64 :=
.seq RemovedBody606_29 RemovedBody606_956

def RemovedBody606_958 : StackLang.HolProg 64 :=
.seq RemovedBody606_28 RemovedBody606_957

def RemovedBody606_959 : StackLang.HolProg 64 :=
.seq RemovedBody606_27 RemovedBody606_958

def RemovedBody606_960 : StackLang.HolProg 64 :=
.seq RemovedBody606_26 RemovedBody606_959

def RemovedBody606_961 : StackLang.HolProg 64 :=
.seq RemovedBody606_25 RemovedBody606_960

def RemovedBody606_962 : StackLang.HolProg 64 :=
.seq RemovedBody606_10 RemovedBody606_961

def RemovedBody606_963 : StackLang.HolProg 64 :=
.seq RemovedBody606_9 RemovedBody606_962

def RemovedBody606_964 : StackLang.HolProg 64 :=
.seq RemovedBody606_8 RemovedBody606_963

def RemovedBody606_965 : StackLang.HolProg 64 :=
.seq RemovedBody606_7 RemovedBody606_964

def RemovedBody606_966 : StackLang.HolProg 64 :=
.seq RemovedBody606_6 RemovedBody606_965

def Removed606 : Nat × StackLang.HolProg 64 := (606, RemovedBody606_966)
theorem Removed606_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc606 = Removed606 := by
  kernel_rfl
#print axioms Removed606_eq
end InitECandidate.Proofs.BackendStages
