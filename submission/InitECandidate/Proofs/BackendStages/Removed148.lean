import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc148
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody148_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody148_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody148_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody148_3 : StackLang.HolProg 64 :=
.seq RemovedBody148_1 RemovedBody148_2

def RemovedBody148_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody148_3 RemovedBody148_4

def RemovedBody148_6 : StackLang.HolProg 64 :=
.seq RemovedBody148_0 RemovedBody148_5

def RemovedBody148_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody148_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody148_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody148_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody148_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody148_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody148_13 : StackLang.HolProg 64 :=
.seq RemovedBody148_11 RemovedBody148_12

def RemovedBody148_14 : StackLang.HolProg 64 :=
.seq RemovedBody148_10 RemovedBody148_13

def RemovedBody148_15 : StackLang.HolProg 64 :=
.seq RemovedBody148_9 RemovedBody148_14

def RemovedBody148_16 : StackLang.HolProg 64 :=
.seq RemovedBody148_8 RemovedBody148_15

def RemovedBody148_17 : StackLang.HolProg 64 :=
.seq RemovedBody148_7 RemovedBody148_16

def RemovedBody148_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 124#64)

def RemovedBody148_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody148_21 : StackLang.HolProg 64 :=
.seq RemovedBody148_19 RemovedBody148_20

def RemovedBody148_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody148_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody148_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody148_25 : StackLang.HolProg 64 :=
.seq RemovedBody148_23 RemovedBody148_24

def RemovedBody148_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody148_25 RemovedBody148_26

def RemovedBody148_28 : StackLang.HolProg 64 :=
.seq RemovedBody148_22 RemovedBody148_27

def RemovedBody148_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody148_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody148_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 148 3

def RemovedBody148_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody148_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody148_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody148_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody148_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody148_38 : StackLang.HolProg 64 :=
.seq RemovedBody148_36 RemovedBody148_37

def RemovedBody148_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody148_40 : StackLang.HolProg 64 :=
.seq RemovedBody148_38 RemovedBody148_39

def RemovedBody148_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody148_42 : StackLang.HolProg 64 :=
.seq RemovedBody148_40 RemovedBody148_41

def RemovedBody148_43 : StackLang.HolProg 64 :=
.seq RemovedBody148_35 RemovedBody148_42

def RemovedBody148_44 : StackLang.HolProg 64 :=
.seq RemovedBody148_34 RemovedBody148_43

def RemovedBody148_45 : StackLang.HolProg 64 :=
.seq RemovedBody148_33 RemovedBody148_44

def RemovedBody148_46 : StackLang.HolProg 64 :=
.seq RemovedBody148_32 RemovedBody148_45

def RemovedBody148_47 : StackLang.HolProg 64 :=
.seq RemovedBody148_31 RemovedBody148_46

def RemovedBody148_48 : StackLang.HolProg 64 :=
.seq RemovedBody148_30 RemovedBody148_47

def RemovedBody148_49 : StackLang.HolProg 64 :=
.seq RemovedBody148_29 RemovedBody148_48

def RemovedBody148_50 : StackLang.HolProg 64 :=
.seq RemovedBody148_28 RemovedBody148_49

def RemovedBody148_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody148_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody148_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody148_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody148_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody148_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody148_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody148_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody148_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody148_63 : StackLang.HolProg 64 :=
.seq RemovedBody148_61 RemovedBody148_62

def RemovedBody148_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody148_65 : StackLang.HolProg 64 :=
.seq RemovedBody148_63 RemovedBody148_64

def RemovedBody148_66 : StackLang.HolProg 64 :=
.seq RemovedBody148_60 RemovedBody148_65

def RemovedBody148_67 : StackLang.HolProg 64 :=
.seq RemovedBody148_59 RemovedBody148_66

def RemovedBody148_68 : StackLang.HolProg 64 :=
.seq RemovedBody148_58 RemovedBody148_67

def RemovedBody148_69 : StackLang.HolProg 64 :=
.seq RemovedBody148_57 RemovedBody148_68

def RemovedBody148_70 : StackLang.HolProg 64 :=
.seq RemovedBody148_56 RemovedBody148_69

def RemovedBody148_71 : StackLang.HolProg 64 :=
.seq RemovedBody148_55 RemovedBody148_70

def RemovedBody148_72 : StackLang.HolProg 64 :=
.seq RemovedBody148_54 RemovedBody148_71

def RemovedBody148_73 : StackLang.HolProg 64 :=
.seq RemovedBody148_53 RemovedBody148_72

def RemovedBody148_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody148_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody148_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody148_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody148_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody148_79 : StackLang.HolProg 64 :=
.seq RemovedBody148_77 RemovedBody148_78

def RemovedBody148_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody148_81 : StackLang.HolProg 64 :=
.seq RemovedBody148_79 RemovedBody148_80

def RemovedBody148_82 : StackLang.HolProg 64 :=
.seq RemovedBody148_76 RemovedBody148_81

def RemovedBody148_83 : StackLang.HolProg 64 :=
.seq RemovedBody148_75 RemovedBody148_82

def RemovedBody148_84 : StackLang.HolProg 64 :=
.seq RemovedBody148_74 RemovedBody148_83

def RemovedBody148_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody148_86 : StackLang.HolProg 64 :=
.seq RemovedBody148_84 RemovedBody148_85

def RemovedBody148_87 : StackLang.HolProg 64 :=
.call (some (RemovedBody148_73, 0, 148, 2)) (Sum.inl 139) (some (RemovedBody148_86, 148, 3))

def RemovedBody148_88 : StackLang.HolProg 64 :=
.seq RemovedBody148_52 RemovedBody148_87

def RemovedBody148_89 : StackLang.HolProg 64 :=
.seq RemovedBody148_51 RemovedBody148_88

def RemovedBody148_90 : StackLang.HolProg 64 :=
.seq RemovedBody148_50 RemovedBody148_89

def RemovedBody148_91 : StackLang.HolProg 64 :=
.seq RemovedBody148_21 RemovedBody148_90

def RemovedBody148_92 : StackLang.HolProg 64 :=
.seq RemovedBody148_18 RemovedBody148_91

def RemovedBody148_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody148_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody148_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody148_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody148_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody148_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody148_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody148_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody148_105 : StackLang.HolProg 64 :=
.seq RemovedBody148_103 RemovedBody148_104

def RemovedBody148_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody148_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody148_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody148_109 : StackLang.HolProg 64 :=
.seq RemovedBody148_107 RemovedBody148_108

def RemovedBody148_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody148_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody148_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody148_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody148_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody148_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody148_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody148_117 : StackLang.HolProg 64 :=
.seq RemovedBody148_115 RemovedBody148_116

def RemovedBody148_118 : StackLang.HolProg 64 :=
.seq RemovedBody148_114 RemovedBody148_117

def RemovedBody148_119 : StackLang.HolProg 64 :=
.seq RemovedBody148_113 RemovedBody148_118

def RemovedBody148_120 : StackLang.HolProg 64 :=
.seq RemovedBody148_112 RemovedBody148_119

def RemovedBody148_121 : StackLang.HolProg 64 :=
.seq RemovedBody148_111 RemovedBody148_120

def RemovedBody148_122 : StackLang.HolProg 64 :=
.seq RemovedBody148_110 RemovedBody148_121

def RemovedBody148_123 : StackLang.HolProg 64 :=
.seq RemovedBody148_109 RemovedBody148_122

def RemovedBody148_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 125#64)

def RemovedBody148_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody148_127 : StackLang.HolProg 64 :=
.seq RemovedBody148_125 RemovedBody148_126

def RemovedBody148_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody148_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody148_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody148_131 : StackLang.HolProg 64 :=
.seq RemovedBody148_129 RemovedBody148_130

def RemovedBody148_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody148_131 RemovedBody148_132

def RemovedBody148_134 : StackLang.HolProg 64 :=
.seq RemovedBody148_128 RemovedBody148_133

def RemovedBody148_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody148_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody148_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 148 5

def RemovedBody148_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody148_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody148_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody148_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody148_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody148_144 : StackLang.HolProg 64 :=
.seq RemovedBody148_142 RemovedBody148_143

def RemovedBody148_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody148_146 : StackLang.HolProg 64 :=
.seq RemovedBody148_144 RemovedBody148_145

def RemovedBody148_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody148_148 : StackLang.HolProg 64 :=
.seq RemovedBody148_146 RemovedBody148_147

def RemovedBody148_149 : StackLang.HolProg 64 :=
.seq RemovedBody148_141 RemovedBody148_148

def RemovedBody148_150 : StackLang.HolProg 64 :=
.seq RemovedBody148_140 RemovedBody148_149

def RemovedBody148_151 : StackLang.HolProg 64 :=
.seq RemovedBody148_139 RemovedBody148_150

def RemovedBody148_152 : StackLang.HolProg 64 :=
.seq RemovedBody148_138 RemovedBody148_151

def RemovedBody148_153 : StackLang.HolProg 64 :=
.seq RemovedBody148_137 RemovedBody148_152

def RemovedBody148_154 : StackLang.HolProg 64 :=
.seq RemovedBody148_136 RemovedBody148_153

def RemovedBody148_155 : StackLang.HolProg 64 :=
.seq RemovedBody148_135 RemovedBody148_154

def RemovedBody148_156 : StackLang.HolProg 64 :=
.seq RemovedBody148_134 RemovedBody148_155

def RemovedBody148_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody148_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody148_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody148_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody148_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody148_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody148_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody148_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody148_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody148_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody148_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody148_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody148_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody148_173 : StackLang.HolProg 64 :=
.seq RemovedBody148_171 RemovedBody148_172

def RemovedBody148_174 : StackLang.HolProg 64 :=
.seq RemovedBody148_170 RemovedBody148_173

def RemovedBody148_175 : StackLang.HolProg 64 :=
.seq RemovedBody148_169 RemovedBody148_174

def RemovedBody148_176 : StackLang.HolProg 64 :=
.seq RemovedBody148_168 RemovedBody148_175

def RemovedBody148_177 : StackLang.HolProg 64 :=
.seq RemovedBody148_167 RemovedBody148_176

def RemovedBody148_178 : StackLang.HolProg 64 :=
.seq RemovedBody148_166 RemovedBody148_177

def RemovedBody148_179 : StackLang.HolProg 64 :=
.seq RemovedBody148_165 RemovedBody148_178

def RemovedBody148_180 : StackLang.HolProg 64 :=
.seq RemovedBody148_164 RemovedBody148_179

def RemovedBody148_181 : StackLang.HolProg 64 :=
.seq RemovedBody148_163 RemovedBody148_180

def RemovedBody148_182 : StackLang.HolProg 64 :=
.seq RemovedBody148_162 RemovedBody148_181

def RemovedBody148_183 : StackLang.HolProg 64 :=
.seq RemovedBody148_161 RemovedBody148_182

def RemovedBody148_184 : StackLang.HolProg 64 :=
.seq RemovedBody148_160 RemovedBody148_183

def RemovedBody148_185 : StackLang.HolProg 64 :=
.seq RemovedBody148_159 RemovedBody148_184

def RemovedBody148_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody148_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody148_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody148_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody148_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody148_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody148_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody148_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody148_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody148_195 : StackLang.HolProg 64 :=
.seq RemovedBody148_193 RemovedBody148_194

def RemovedBody148_196 : StackLang.HolProg 64 :=
.seq RemovedBody148_192 RemovedBody148_195

def RemovedBody148_197 : StackLang.HolProg 64 :=
.seq RemovedBody148_191 RemovedBody148_196

def RemovedBody148_198 : StackLang.HolProg 64 :=
.seq RemovedBody148_190 RemovedBody148_197

def RemovedBody148_199 : StackLang.HolProg 64 :=
.seq RemovedBody148_189 RemovedBody148_198

def RemovedBody148_200 : StackLang.HolProg 64 :=
.seq RemovedBody148_188 RemovedBody148_199

def RemovedBody148_201 : StackLang.HolProg 64 :=
.seq RemovedBody148_187 RemovedBody148_200

def RemovedBody148_202 : StackLang.HolProg 64 :=
.seq RemovedBody148_186 RemovedBody148_201

def RemovedBody148_203 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody148_204 : StackLang.HolProg 64 :=
.seq RemovedBody148_202 RemovedBody148_203

def RemovedBody148_205 : StackLang.HolProg 64 :=
.call (some (RemovedBody148_185, 0, 148, 4)) (Sum.inl 103) (some (RemovedBody148_204, 148, 5))

def RemovedBody148_206 : StackLang.HolProg 64 :=
.seq RemovedBody148_158 RemovedBody148_205

def RemovedBody148_207 : StackLang.HolProg 64 :=
.seq RemovedBody148_157 RemovedBody148_206

def RemovedBody148_208 : StackLang.HolProg 64 :=
.seq RemovedBody148_156 RemovedBody148_207

def RemovedBody148_209 : StackLang.HolProg 64 :=
.seq RemovedBody148_127 RemovedBody148_208

def RemovedBody148_210 : StackLang.HolProg 64 :=
.seq RemovedBody148_124 RemovedBody148_209

def RemovedBody148_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody148_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody148_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody148_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody148_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody148_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def RemovedBody148_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def RemovedBody148_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody148_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody148_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody148_225 : StackLang.HolProg 64 :=
.seq RemovedBody148_223 RemovedBody148_224

def RemovedBody148_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody148_227 : StackLang.HolProg 64 :=
.seq RemovedBody148_225 RemovedBody148_226

def RemovedBody148_228 : StackLang.HolProg 64 :=
.seq RemovedBody148_222 RemovedBody148_227

def RemovedBody148_229 : StackLang.HolProg 64 :=
.seq RemovedBody148_221 RemovedBody148_228

def RemovedBody148_230 : StackLang.HolProg 64 :=
.seq RemovedBody148_220 RemovedBody148_229

def RemovedBody148_231 : StackLang.HolProg 64 :=
.seq RemovedBody148_219 RemovedBody148_230

def RemovedBody148_232 : StackLang.HolProg 64 :=
.seq RemovedBody148_218 RemovedBody148_231

def RemovedBody148_233 : StackLang.HolProg 64 :=
.seq RemovedBody148_217 RemovedBody148_232

def RemovedBody148_234 : StackLang.HolProg 64 :=
.seq RemovedBody148_216 RemovedBody148_233

def RemovedBody148_235 : StackLang.HolProg 64 :=
.seq RemovedBody148_215 RemovedBody148_234

def RemovedBody148_236 : StackLang.HolProg 64 :=
.seq RemovedBody148_214 RemovedBody148_235

def RemovedBody148_237 : StackLang.HolProg 64 :=
.seq RemovedBody148_213 RemovedBody148_236

def RemovedBody148_238 : StackLang.HolProg 64 :=
.seq RemovedBody148_212 RemovedBody148_237

def RemovedBody148_239 : StackLang.HolProg 64 :=
.seq RemovedBody148_211 RemovedBody148_238

def RemovedBody148_240 : StackLang.HolProg 64 :=
.seq RemovedBody148_210 RemovedBody148_239

def RemovedBody148_241 : StackLang.HolProg 64 :=
.seq RemovedBody148_123 RemovedBody148_240

def RemovedBody148_242 : StackLang.HolProg 64 :=
.seq RemovedBody148_106 RemovedBody148_241

def RemovedBody148_243 : StackLang.HolProg 64 :=
.seq RemovedBody148_105 RemovedBody148_242

def RemovedBody148_244 : StackLang.HolProg 64 :=
.seq RemovedBody148_102 RemovedBody148_243

def RemovedBody148_245 : StackLang.HolProg 64 :=
.seq RemovedBody148_101 RemovedBody148_244

def RemovedBody148_246 : StackLang.HolProg 64 :=
.seq RemovedBody148_100 RemovedBody148_245

def RemovedBody148_247 : StackLang.HolProg 64 :=
.seq RemovedBody148_99 RemovedBody148_246

def RemovedBody148_248 : StackLang.HolProg 64 :=
.seq RemovedBody148_98 RemovedBody148_247

def RemovedBody148_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody148_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody148_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody148_252 : StackLang.HolProg 64 :=
.seq RemovedBody148_250 RemovedBody148_251

def RemovedBody148_253 : StackLang.HolProg 64 :=
.seq RemovedBody148_249 RemovedBody148_252

def RemovedBody148_254 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody148_248 RemovedBody148_253

def RemovedBody148_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody148_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody148_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody148_258 : StackLang.HolProg 64 :=
.seq RemovedBody148_256 RemovedBody148_257

def RemovedBody148_259 : StackLang.HolProg 64 :=
.seq RemovedBody148_255 RemovedBody148_258

def RemovedBody148_260 : StackLang.HolProg 64 :=
.seq RemovedBody148_254 RemovedBody148_259

def RemovedBody148_261 : StackLang.HolProg 64 :=
.seq RemovedBody148_97 RemovedBody148_260

def RemovedBody148_262 : StackLang.HolProg 64 :=
.loop RemovedBody148_261

def RemovedBody148_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody148_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody148_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody148_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody148_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody148_268 : StackLang.HolProg 64 :=
.seq RemovedBody148_266 RemovedBody148_267

def RemovedBody148_269 : StackLang.HolProg 64 :=
.seq RemovedBody148_265 RemovedBody148_268

def RemovedBody148_270 : StackLang.HolProg 64 :=
.seq RemovedBody148_264 RemovedBody148_269

def RemovedBody148_271 : StackLang.HolProg 64 :=
.seq RemovedBody148_263 RemovedBody148_270

def RemovedBody148_272 : StackLang.HolProg 64 :=
.seq RemovedBody148_262 RemovedBody148_271

def RemovedBody148_273 : StackLang.HolProg 64 :=
.seq RemovedBody148_96 RemovedBody148_272

def RemovedBody148_274 : StackLang.HolProg 64 :=
.seq RemovedBody148_95 RemovedBody148_273

def RemovedBody148_275 : StackLang.HolProg 64 :=
.seq RemovedBody148_94 RemovedBody148_274

def RemovedBody148_276 : StackLang.HolProg 64 :=
.seq RemovedBody148_93 RemovedBody148_275

def RemovedBody148_277 : StackLang.HolProg 64 :=
.seq RemovedBody148_92 RemovedBody148_276

def RemovedBody148_278 : StackLang.HolProg 64 :=
.seq RemovedBody148_17 RemovedBody148_277

def RemovedBody148_279 : StackLang.HolProg 64 :=
.seq RemovedBody148_6 RemovedBody148_278

def Removed148 : Nat × StackLang.HolProg 64 := (148, RemovedBody148_279)
theorem Removed148_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc148 = Removed148 := by
  kernel_rfl
#print axioms Removed148_eq
end InitECandidate.Proofs.BackendStages
