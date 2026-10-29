import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc835
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody835_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody835_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody835_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody835_3 : StackLang.HolProg 64 :=
.seq RemovedBody835_1 RemovedBody835_2

def RemovedBody835_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody835_3 RemovedBody835_4

def RemovedBody835_6 : StackLang.HolProg 64 :=
.seq RemovedBody835_0 RemovedBody835_5

def RemovedBody835_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody835_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody835_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody835_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody835_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody835_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody835_13 : StackLang.HolProg 64 :=
.seq RemovedBody835_11 RemovedBody835_12

def RemovedBody835_14 : StackLang.HolProg 64 :=
.seq RemovedBody835_10 RemovedBody835_13

def RemovedBody835_15 : StackLang.HolProg 64 :=
.seq RemovedBody835_9 RemovedBody835_14

def RemovedBody835_16 : StackLang.HolProg 64 :=
.seq RemovedBody835_8 RemovedBody835_15

def RemovedBody835_17 : StackLang.HolProg 64 :=
.seq RemovedBody835_7 RemovedBody835_16

def RemovedBody835_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4156#64)

def RemovedBody835_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody835_21 : StackLang.HolProg 64 :=
.seq RemovedBody835_19 RemovedBody835_20

def RemovedBody835_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody835_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody835_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody835_25 : StackLang.HolProg 64 :=
.seq RemovedBody835_23 RemovedBody835_24

def RemovedBody835_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody835_25 RemovedBody835_26

def RemovedBody835_28 : StackLang.HolProg 64 :=
.seq RemovedBody835_22 RemovedBody835_27

def RemovedBody835_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody835_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody835_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 835 3

def RemovedBody835_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody835_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody835_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody835_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody835_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody835_38 : StackLang.HolProg 64 :=
.seq RemovedBody835_36 RemovedBody835_37

def RemovedBody835_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody835_40 : StackLang.HolProg 64 :=
.seq RemovedBody835_38 RemovedBody835_39

def RemovedBody835_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody835_42 : StackLang.HolProg 64 :=
.seq RemovedBody835_40 RemovedBody835_41

def RemovedBody835_43 : StackLang.HolProg 64 :=
.seq RemovedBody835_35 RemovedBody835_42

def RemovedBody835_44 : StackLang.HolProg 64 :=
.seq RemovedBody835_34 RemovedBody835_43

def RemovedBody835_45 : StackLang.HolProg 64 :=
.seq RemovedBody835_33 RemovedBody835_44

def RemovedBody835_46 : StackLang.HolProg 64 :=
.seq RemovedBody835_32 RemovedBody835_45

def RemovedBody835_47 : StackLang.HolProg 64 :=
.seq RemovedBody835_31 RemovedBody835_46

def RemovedBody835_48 : StackLang.HolProg 64 :=
.seq RemovedBody835_30 RemovedBody835_47

def RemovedBody835_49 : StackLang.HolProg 64 :=
.seq RemovedBody835_29 RemovedBody835_48

def RemovedBody835_50 : StackLang.HolProg 64 :=
.seq RemovedBody835_28 RemovedBody835_49

def RemovedBody835_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody835_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody835_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody835_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody835_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody835_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody835_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody835_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody835_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody835_63 : StackLang.HolProg 64 :=
.seq RemovedBody835_61 RemovedBody835_62

def RemovedBody835_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody835_65 : StackLang.HolProg 64 :=
.seq RemovedBody835_63 RemovedBody835_64

def RemovedBody835_66 : StackLang.HolProg 64 :=
.seq RemovedBody835_60 RemovedBody835_65

def RemovedBody835_67 : StackLang.HolProg 64 :=
.seq RemovedBody835_59 RemovedBody835_66

def RemovedBody835_68 : StackLang.HolProg 64 :=
.seq RemovedBody835_58 RemovedBody835_67

def RemovedBody835_69 : StackLang.HolProg 64 :=
.seq RemovedBody835_57 RemovedBody835_68

def RemovedBody835_70 : StackLang.HolProg 64 :=
.seq RemovedBody835_56 RemovedBody835_69

def RemovedBody835_71 : StackLang.HolProg 64 :=
.seq RemovedBody835_55 RemovedBody835_70

def RemovedBody835_72 : StackLang.HolProg 64 :=
.seq RemovedBody835_54 RemovedBody835_71

def RemovedBody835_73 : StackLang.HolProg 64 :=
.seq RemovedBody835_53 RemovedBody835_72

def RemovedBody835_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody835_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody835_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody835_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody835_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody835_79 : StackLang.HolProg 64 :=
.seq RemovedBody835_77 RemovedBody835_78

def RemovedBody835_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody835_81 : StackLang.HolProg 64 :=
.seq RemovedBody835_79 RemovedBody835_80

def RemovedBody835_82 : StackLang.HolProg 64 :=
.seq RemovedBody835_76 RemovedBody835_81

def RemovedBody835_83 : StackLang.HolProg 64 :=
.seq RemovedBody835_75 RemovedBody835_82

def RemovedBody835_84 : StackLang.HolProg 64 :=
.seq RemovedBody835_74 RemovedBody835_83

def RemovedBody835_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody835_86 : StackLang.HolProg 64 :=
.seq RemovedBody835_84 RemovedBody835_85

def RemovedBody835_87 : StackLang.HolProg 64 :=
.call (some (RemovedBody835_73, 0, 835, 2)) (Sum.inl 93) (some (RemovedBody835_86, 835, 3))

def RemovedBody835_88 : StackLang.HolProg 64 :=
.seq RemovedBody835_52 RemovedBody835_87

def RemovedBody835_89 : StackLang.HolProg 64 :=
.seq RemovedBody835_51 RemovedBody835_88

def RemovedBody835_90 : StackLang.HolProg 64 :=
.seq RemovedBody835_50 RemovedBody835_89

def RemovedBody835_91 : StackLang.HolProg 64 :=
.seq RemovedBody835_21 RemovedBody835_90

def RemovedBody835_92 : StackLang.HolProg 64 :=
.seq RemovedBody835_18 RemovedBody835_91

def RemovedBody835_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody835_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody835_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def RemovedBody835_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody835_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody835_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody835_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody835_106 : StackLang.HolProg 64 :=
.seq RemovedBody835_104 RemovedBody835_105

def RemovedBody835_107 : StackLang.HolProg 64 :=
.seq RemovedBody835_103 RemovedBody835_106

def RemovedBody835_108 : StackLang.HolProg 64 :=
.seq RemovedBody835_102 RemovedBody835_107

def RemovedBody835_109 : StackLang.HolProg 64 :=
.seq RemovedBody835_101 RemovedBody835_108

def RemovedBody835_110 : StackLang.HolProg 64 :=
.seq RemovedBody835_100 RemovedBody835_109

def RemovedBody835_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody835_113 : StackLang.HolProg 64 :=
.seq RemovedBody835_111 RemovedBody835_112

def RemovedBody835_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody835_110 RemovedBody835_113

def RemovedBody835_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody835_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody835_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody835_119 : StackLang.HolProg 64 :=
.seq RemovedBody835_117 RemovedBody835_118

def RemovedBody835_120 : StackLang.HolProg 64 :=
.seq RemovedBody835_116 RemovedBody835_119

def RemovedBody835_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4157#64)

def RemovedBody835_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody835_124 : StackLang.HolProg 64 :=
.seq RemovedBody835_122 RemovedBody835_123

def RemovedBody835_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody835_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody835_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody835_128 : StackLang.HolProg 64 :=
.seq RemovedBody835_126 RemovedBody835_127

def RemovedBody835_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_130 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody835_128 RemovedBody835_129

def RemovedBody835_131 : StackLang.HolProg 64 :=
.seq RemovedBody835_125 RemovedBody835_130

def RemovedBody835_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody835_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody835_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 835 5

def RemovedBody835_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody835_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody835_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody835_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody835_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody835_141 : StackLang.HolProg 64 :=
.seq RemovedBody835_139 RemovedBody835_140

def RemovedBody835_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody835_143 : StackLang.HolProg 64 :=
.seq RemovedBody835_141 RemovedBody835_142

def RemovedBody835_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody835_145 : StackLang.HolProg 64 :=
.seq RemovedBody835_143 RemovedBody835_144

def RemovedBody835_146 : StackLang.HolProg 64 :=
.seq RemovedBody835_138 RemovedBody835_145

def RemovedBody835_147 : StackLang.HolProg 64 :=
.seq RemovedBody835_137 RemovedBody835_146

def RemovedBody835_148 : StackLang.HolProg 64 :=
.seq RemovedBody835_136 RemovedBody835_147

def RemovedBody835_149 : StackLang.HolProg 64 :=
.seq RemovedBody835_135 RemovedBody835_148

def RemovedBody835_150 : StackLang.HolProg 64 :=
.seq RemovedBody835_134 RemovedBody835_149

def RemovedBody835_151 : StackLang.HolProg 64 :=
.seq RemovedBody835_133 RemovedBody835_150

def RemovedBody835_152 : StackLang.HolProg 64 :=
.seq RemovedBody835_132 RemovedBody835_151

def RemovedBody835_153 : StackLang.HolProg 64 :=
.seq RemovedBody835_131 RemovedBody835_152

def RemovedBody835_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody835_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody835_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody835_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody835_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody835_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody835_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody835_164 : StackLang.HolProg 64 :=
.seq RemovedBody835_162 RemovedBody835_163

def RemovedBody835_165 : StackLang.HolProg 64 :=
.seq RemovedBody835_161 RemovedBody835_164

def RemovedBody835_166 : StackLang.HolProg 64 :=
.seq RemovedBody835_160 RemovedBody835_165

def RemovedBody835_167 : StackLang.HolProg 64 :=
.seq RemovedBody835_159 RemovedBody835_166

def RemovedBody835_168 : StackLang.HolProg 64 :=
.seq RemovedBody835_158 RemovedBody835_167

def RemovedBody835_169 : StackLang.HolProg 64 :=
.seq RemovedBody835_157 RemovedBody835_168

def RemovedBody835_170 : StackLang.HolProg 64 :=
.seq RemovedBody835_156 RemovedBody835_169

def RemovedBody835_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody835_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody835_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody835_174 : StackLang.HolProg 64 :=
.seq RemovedBody835_172 RemovedBody835_173

def RemovedBody835_175 : StackLang.HolProg 64 :=
.seq RemovedBody835_171 RemovedBody835_174

def RemovedBody835_176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody835_177 : StackLang.HolProg 64 :=
.seq RemovedBody835_175 RemovedBody835_176

def RemovedBody835_178 : StackLang.HolProg 64 :=
.call (some (RemovedBody835_170, 0, 835, 4)) (Sum.inl 138) (some (RemovedBody835_177, 835, 5))

def RemovedBody835_179 : StackLang.HolProg 64 :=
.seq RemovedBody835_155 RemovedBody835_178

def RemovedBody835_180 : StackLang.HolProg 64 :=
.seq RemovedBody835_154 RemovedBody835_179

def RemovedBody835_181 : StackLang.HolProg 64 :=
.seq RemovedBody835_153 RemovedBody835_180

def RemovedBody835_182 : StackLang.HolProg 64 :=
.seq RemovedBody835_124 RemovedBody835_181

def RemovedBody835_183 : StackLang.HolProg 64 :=
.seq RemovedBody835_121 RemovedBody835_182

def RemovedBody835_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody835_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody835_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_191 : StackLang.HolProg 64 :=
.seq RemovedBody835_189 RemovedBody835_190

def RemovedBody835_192 : StackLang.HolProg 64 :=
.seq RemovedBody835_188 RemovedBody835_191

def RemovedBody835_193 : StackLang.HolProg 64 :=
.seq RemovedBody835_187 RemovedBody835_192

def RemovedBody835_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_196 : StackLang.HolProg 64 :=
.seq RemovedBody835_194 RemovedBody835_195

def RemovedBody835_197 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody835_193 RemovedBody835_196

def RemovedBody835_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody835_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_203 : StackLang.HolProg 64 :=
.seq RemovedBody835_201 RemovedBody835_202

def RemovedBody835_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def RemovedBody835_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody835_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody835_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_210 : StackLang.HolProg 64 :=
.seq RemovedBody835_208 RemovedBody835_209

def RemovedBody835_211 : StackLang.HolProg 64 :=
.seq RemovedBody835_207 RemovedBody835_210

def RemovedBody835_212 : StackLang.HolProg 64 :=
.seq RemovedBody835_206 RemovedBody835_211

def RemovedBody835_213 : StackLang.HolProg 64 :=
.seq RemovedBody835_205 RemovedBody835_212

def RemovedBody835_214 : StackLang.HolProg 64 :=
.seq RemovedBody835_204 RemovedBody835_213

def RemovedBody835_215 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody835_203 RemovedBody835_214

def RemovedBody835_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody835_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody835_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_222 : StackLang.HolProg 64 :=
.seq RemovedBody835_220 RemovedBody835_221

def RemovedBody835_223 : StackLang.HolProg 64 :=
.seq RemovedBody835_219 RemovedBody835_222

def RemovedBody835_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_226 : StackLang.HolProg 64 :=
.seq RemovedBody835_224 RemovedBody835_225

def RemovedBody835_227 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody835_223 RemovedBody835_226

def RemovedBody835_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody835_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 500#64)

def RemovedBody835_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 500#64)

def RemovedBody835_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_236 : StackLang.HolProg 64 :=
.seq RemovedBody835_234 RemovedBody835_235

def RemovedBody835_237 : StackLang.HolProg 64 :=
.seq RemovedBody835_233 RemovedBody835_236

def RemovedBody835_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody835_240 : StackLang.HolProg 64 :=
.seq RemovedBody835_238 RemovedBody835_239

def RemovedBody835_241 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody835_237 RemovedBody835_240

def RemovedBody835_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody835_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody835_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody835_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody835_246 : StackLang.HolProg 64 :=
.seq RemovedBody835_244 RemovedBody835_245

def RemovedBody835_247 : StackLang.HolProg 64 :=
.seq RemovedBody835_243 RemovedBody835_246

def RemovedBody835_248 : StackLang.HolProg 64 :=
.seq RemovedBody835_242 RemovedBody835_247

def RemovedBody835_249 : StackLang.HolProg 64 :=
.seq RemovedBody835_241 RemovedBody835_248

def RemovedBody835_250 : StackLang.HolProg 64 :=
.seq RemovedBody835_232 RemovedBody835_249

def RemovedBody835_251 : StackLang.HolProg 64 :=
.seq RemovedBody835_231 RemovedBody835_250

def RemovedBody835_252 : StackLang.HolProg 64 :=
.seq RemovedBody835_230 RemovedBody835_251

def RemovedBody835_253 : StackLang.HolProg 64 :=
.seq RemovedBody835_229 RemovedBody835_252

def RemovedBody835_254 : StackLang.HolProg 64 :=
.seq RemovedBody835_228 RemovedBody835_253

def RemovedBody835_255 : StackLang.HolProg 64 :=
.seq RemovedBody835_227 RemovedBody835_254

def RemovedBody835_256 : StackLang.HolProg 64 :=
.seq RemovedBody835_218 RemovedBody835_255

def RemovedBody835_257 : StackLang.HolProg 64 :=
.seq RemovedBody835_217 RemovedBody835_256

def RemovedBody835_258 : StackLang.HolProg 64 :=
.seq RemovedBody835_216 RemovedBody835_257

def RemovedBody835_259 : StackLang.HolProg 64 :=
.seq RemovedBody835_215 RemovedBody835_258

def RemovedBody835_260 : StackLang.HolProg 64 :=
.seq RemovedBody835_200 RemovedBody835_259

def RemovedBody835_261 : StackLang.HolProg 64 :=
.seq RemovedBody835_199 RemovedBody835_260

def RemovedBody835_262 : StackLang.HolProg 64 :=
.seq RemovedBody835_198 RemovedBody835_261

def RemovedBody835_263 : StackLang.HolProg 64 :=
.seq RemovedBody835_197 RemovedBody835_262

def RemovedBody835_264 : StackLang.HolProg 64 :=
.seq RemovedBody835_186 RemovedBody835_263

def RemovedBody835_265 : StackLang.HolProg 64 :=
.seq RemovedBody835_185 RemovedBody835_264

def RemovedBody835_266 : StackLang.HolProg 64 :=
.seq RemovedBody835_184 RemovedBody835_265

def RemovedBody835_267 : StackLang.HolProg 64 :=
.seq RemovedBody835_183 RemovedBody835_266

def RemovedBody835_268 : StackLang.HolProg 64 :=
.seq RemovedBody835_120 RemovedBody835_267

def RemovedBody835_269 : StackLang.HolProg 64 :=
.seq RemovedBody835_115 RemovedBody835_268

def RemovedBody835_270 : StackLang.HolProg 64 :=
.seq RemovedBody835_114 RemovedBody835_269

def RemovedBody835_271 : StackLang.HolProg 64 :=
.seq RemovedBody835_99 RemovedBody835_270

def RemovedBody835_272 : StackLang.HolProg 64 :=
.seq RemovedBody835_98 RemovedBody835_271

def RemovedBody835_273 : StackLang.HolProg 64 :=
.seq RemovedBody835_97 RemovedBody835_272

def RemovedBody835_274 : StackLang.HolProg 64 :=
.seq RemovedBody835_96 RemovedBody835_273

def RemovedBody835_275 : StackLang.HolProg 64 :=
.seq RemovedBody835_95 RemovedBody835_274

def RemovedBody835_276 : StackLang.HolProg 64 :=
.seq RemovedBody835_94 RemovedBody835_275

def RemovedBody835_277 : StackLang.HolProg 64 :=
.seq RemovedBody835_93 RemovedBody835_276

def RemovedBody835_278 : StackLang.HolProg 64 :=
.seq RemovedBody835_92 RemovedBody835_277

def RemovedBody835_279 : StackLang.HolProg 64 :=
.seq RemovedBody835_17 RemovedBody835_278

def RemovedBody835_280 : StackLang.HolProg 64 :=
.seq RemovedBody835_6 RemovedBody835_279

def Removed835 : Nat × StackLang.HolProg 64 := (835, RemovedBody835_280)
theorem Removed835_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc835 = Removed835 := by
  kernel_rfl
#print axioms Removed835_eq
end InitECandidate.Proofs.BackendStages
