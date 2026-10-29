import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc479
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody479_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody479_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody479_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody479_3 : StackLang.HolProg 64 :=
.seq RemovedBody479_1 RemovedBody479_2

def RemovedBody479_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody479_3 RemovedBody479_4

def RemovedBody479_6 : StackLang.HolProg 64 :=
.seq RemovedBody479_0 RemovedBody479_5

def RemovedBody479_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody479_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1501#64)

def RemovedBody479_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody479_11 : StackLang.HolProg 64 :=
.seq RemovedBody479_9 RemovedBody479_10

def RemovedBody479_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody479_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody479_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody479_15 : StackLang.HolProg 64 :=
.seq RemovedBody479_13 RemovedBody479_14

def RemovedBody479_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody479_15 RemovedBody479_16

def RemovedBody479_18 : StackLang.HolProg 64 :=
.seq RemovedBody479_12 RemovedBody479_17

def RemovedBody479_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody479_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody479_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 479 3

def RemovedBody479_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody479_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody479_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody479_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody479_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody479_28 : StackLang.HolProg 64 :=
.seq RemovedBody479_26 RemovedBody479_27

def RemovedBody479_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody479_30 : StackLang.HolProg 64 :=
.seq RemovedBody479_28 RemovedBody479_29

def RemovedBody479_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody479_32 : StackLang.HolProg 64 :=
.seq RemovedBody479_30 RemovedBody479_31

def RemovedBody479_33 : StackLang.HolProg 64 :=
.seq RemovedBody479_25 RemovedBody479_32

def RemovedBody479_34 : StackLang.HolProg 64 :=
.seq RemovedBody479_24 RemovedBody479_33

def RemovedBody479_35 : StackLang.HolProg 64 :=
.seq RemovedBody479_23 RemovedBody479_34

def RemovedBody479_36 : StackLang.HolProg 64 :=
.seq RemovedBody479_22 RemovedBody479_35

def RemovedBody479_37 : StackLang.HolProg 64 :=
.seq RemovedBody479_21 RemovedBody479_36

def RemovedBody479_38 : StackLang.HolProg 64 :=
.seq RemovedBody479_20 RemovedBody479_37

def RemovedBody479_39 : StackLang.HolProg 64 :=
.seq RemovedBody479_19 RemovedBody479_38

def RemovedBody479_40 : StackLang.HolProg 64 :=
.seq RemovedBody479_18 RemovedBody479_39

def RemovedBody479_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody479_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody479_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody479_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody479_48 : StackLang.HolProg 64 :=
.seq RemovedBody479_46 RemovedBody479_47

def RemovedBody479_49 : StackLang.HolProg 64 :=
.seq RemovedBody479_45 RemovedBody479_48

def RemovedBody479_50 : StackLang.HolProg 64 :=
.seq RemovedBody479_44 RemovedBody479_49

def RemovedBody479_51 : StackLang.HolProg 64 :=
.seq RemovedBody479_43 RemovedBody479_50

def RemovedBody479_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody479_54 : StackLang.HolProg 64 :=
.seq RemovedBody479_52 RemovedBody479_53

def RemovedBody479_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody479_51, 0, 479, 2)) (Sum.inl 465) (some (RemovedBody479_54, 479, 3))

def RemovedBody479_56 : StackLang.HolProg 64 :=
.seq RemovedBody479_42 RemovedBody479_55

def RemovedBody479_57 : StackLang.HolProg 64 :=
.seq RemovedBody479_41 RemovedBody479_56

def RemovedBody479_58 : StackLang.HolProg 64 :=
.seq RemovedBody479_40 RemovedBody479_57

def RemovedBody479_59 : StackLang.HolProg 64 :=
.seq RemovedBody479_11 RemovedBody479_58

def RemovedBody479_60 : StackLang.HolProg 64 :=
.seq RemovedBody479_8 RemovedBody479_59

def RemovedBody479_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody479_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody479_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody479_64 : StackLang.HolProg 64 :=
.seq RemovedBody479_62 RemovedBody479_63

def RemovedBody479_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1502#64)

def RemovedBody479_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody479_68 : StackLang.HolProg 64 :=
.seq RemovedBody479_66 RemovedBody479_67

def RemovedBody479_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody479_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody479_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody479_72 : StackLang.HolProg 64 :=
.seq RemovedBody479_70 RemovedBody479_71

def RemovedBody479_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody479_72 RemovedBody479_73

def RemovedBody479_75 : StackLang.HolProg 64 :=
.seq RemovedBody479_69 RemovedBody479_74

def RemovedBody479_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody479_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody479_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 479 5

def RemovedBody479_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody479_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody479_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody479_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody479_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody479_85 : StackLang.HolProg 64 :=
.seq RemovedBody479_83 RemovedBody479_84

def RemovedBody479_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody479_87 : StackLang.HolProg 64 :=
.seq RemovedBody479_85 RemovedBody479_86

def RemovedBody479_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody479_89 : StackLang.HolProg 64 :=
.seq RemovedBody479_87 RemovedBody479_88

def RemovedBody479_90 : StackLang.HolProg 64 :=
.seq RemovedBody479_82 RemovedBody479_89

def RemovedBody479_91 : StackLang.HolProg 64 :=
.seq RemovedBody479_81 RemovedBody479_90

def RemovedBody479_92 : StackLang.HolProg 64 :=
.seq RemovedBody479_80 RemovedBody479_91

def RemovedBody479_93 : StackLang.HolProg 64 :=
.seq RemovedBody479_79 RemovedBody479_92

def RemovedBody479_94 : StackLang.HolProg 64 :=
.seq RemovedBody479_78 RemovedBody479_93

def RemovedBody479_95 : StackLang.HolProg 64 :=
.seq RemovedBody479_77 RemovedBody479_94

def RemovedBody479_96 : StackLang.HolProg 64 :=
.seq RemovedBody479_76 RemovedBody479_95

def RemovedBody479_97 : StackLang.HolProg 64 :=
.seq RemovedBody479_75 RemovedBody479_96

def RemovedBody479_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody479_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody479_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody479_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody479_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody479_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody479_107 : StackLang.HolProg 64 :=
.seq RemovedBody479_105 RemovedBody479_106

def RemovedBody479_108 : StackLang.HolProg 64 :=
.seq RemovedBody479_104 RemovedBody479_107

def RemovedBody479_109 : StackLang.HolProg 64 :=
.seq RemovedBody479_103 RemovedBody479_108

def RemovedBody479_110 : StackLang.HolProg 64 :=
.seq RemovedBody479_102 RemovedBody479_109

def RemovedBody479_111 : StackLang.HolProg 64 :=
.seq RemovedBody479_101 RemovedBody479_110

def RemovedBody479_112 : StackLang.HolProg 64 :=
.seq RemovedBody479_100 RemovedBody479_111

def RemovedBody479_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody479_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody479_115 : StackLang.HolProg 64 :=
.seq RemovedBody479_113 RemovedBody479_114

def RemovedBody479_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody479_117 : StackLang.HolProg 64 :=
.seq RemovedBody479_115 RemovedBody479_116

def RemovedBody479_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody479_112, 0, 479, 4)) (Sum.inl 119) (some (RemovedBody479_117, 479, 5))

def RemovedBody479_119 : StackLang.HolProg 64 :=
.seq RemovedBody479_99 RemovedBody479_118

def RemovedBody479_120 : StackLang.HolProg 64 :=
.seq RemovedBody479_98 RemovedBody479_119

def RemovedBody479_121 : StackLang.HolProg 64 :=
.seq RemovedBody479_97 RemovedBody479_120

def RemovedBody479_122 : StackLang.HolProg 64 :=
.seq RemovedBody479_68 RemovedBody479_121

def RemovedBody479_123 : StackLang.HolProg 64 :=
.seq RemovedBody479_65 RemovedBody479_122

def RemovedBody479_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody479_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody479_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody479_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody479_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody479_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody479_132 : StackLang.HolProg 64 :=
.seq RemovedBody479_130 RemovedBody479_131

def RemovedBody479_133 : StackLang.HolProg 64 :=
.seq RemovedBody479_129 RemovedBody479_132

def RemovedBody479_134 : StackLang.HolProg 64 :=
.seq RemovedBody479_128 RemovedBody479_133

def RemovedBody479_135 : StackLang.HolProg 64 :=
.seq RemovedBody479_127 RemovedBody479_134

def RemovedBody479_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody479_135 RemovedBody479_136

def RemovedBody479_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody479_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody479_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 3#64)

def RemovedBody479_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody479_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody479_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def RemovedBody479_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody479_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1503#64)

def RemovedBody479_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody479_150 : StackLang.HolProg 64 :=
.seq RemovedBody479_148 RemovedBody479_149

def RemovedBody479_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody479_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody479_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody479_154 : StackLang.HolProg 64 :=
.seq RemovedBody479_152 RemovedBody479_153

def RemovedBody479_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_156 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody479_154 RemovedBody479_155

def RemovedBody479_157 : StackLang.HolProg 64 :=
.seq RemovedBody479_151 RemovedBody479_156

def RemovedBody479_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody479_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody479_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 479 7

def RemovedBody479_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody479_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody479_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody479_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody479_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody479_167 : StackLang.HolProg 64 :=
.seq RemovedBody479_165 RemovedBody479_166

def RemovedBody479_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody479_169 : StackLang.HolProg 64 :=
.seq RemovedBody479_167 RemovedBody479_168

def RemovedBody479_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody479_171 : StackLang.HolProg 64 :=
.seq RemovedBody479_169 RemovedBody479_170

def RemovedBody479_172 : StackLang.HolProg 64 :=
.seq RemovedBody479_164 RemovedBody479_171

def RemovedBody479_173 : StackLang.HolProg 64 :=
.seq RemovedBody479_163 RemovedBody479_172

def RemovedBody479_174 : StackLang.HolProg 64 :=
.seq RemovedBody479_162 RemovedBody479_173

def RemovedBody479_175 : StackLang.HolProg 64 :=
.seq RemovedBody479_161 RemovedBody479_174

def RemovedBody479_176 : StackLang.HolProg 64 :=
.seq RemovedBody479_160 RemovedBody479_175

def RemovedBody479_177 : StackLang.HolProg 64 :=
.seq RemovedBody479_159 RemovedBody479_176

def RemovedBody479_178 : StackLang.HolProg 64 :=
.seq RemovedBody479_158 RemovedBody479_177

def RemovedBody479_179 : StackLang.HolProg 64 :=
.seq RemovedBody479_157 RemovedBody479_178

def RemovedBody479_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody479_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody479_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody479_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody479_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody479_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody479_188 : StackLang.HolProg 64 :=
.seq RemovedBody479_186 RemovedBody479_187

def RemovedBody479_189 : StackLang.HolProg 64 :=
.seq RemovedBody479_185 RemovedBody479_188

def RemovedBody479_190 : StackLang.HolProg 64 :=
.seq RemovedBody479_184 RemovedBody479_189

def RemovedBody479_191 : StackLang.HolProg 64 :=
.seq RemovedBody479_183 RemovedBody479_190

def RemovedBody479_192 : StackLang.HolProg 64 :=
.seq RemovedBody479_182 RemovedBody479_191

def RemovedBody479_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody479_194 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody479_195 : StackLang.HolProg 64 :=
.seq RemovedBody479_193 RemovedBody479_194

def RemovedBody479_196 : StackLang.HolProg 64 :=
.call (some (RemovedBody479_192, 0, 479, 6)) (Sum.inl 463) (some (RemovedBody479_195, 479, 7))

def RemovedBody479_197 : StackLang.HolProg 64 :=
.seq RemovedBody479_181 RemovedBody479_196

def RemovedBody479_198 : StackLang.HolProg 64 :=
.seq RemovedBody479_180 RemovedBody479_197

def RemovedBody479_199 : StackLang.HolProg 64 :=
.seq RemovedBody479_179 RemovedBody479_198

def RemovedBody479_200 : StackLang.HolProg 64 :=
.seq RemovedBody479_150 RemovedBody479_199

def RemovedBody479_201 : StackLang.HolProg 64 :=
.seq RemovedBody479_147 RemovedBody479_200

def RemovedBody479_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody479_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody479_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody479_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody479_206 : StackLang.HolProg 64 :=
.seq RemovedBody479_204 RemovedBody479_205

def RemovedBody479_207 : StackLang.HolProg 64 :=
.seq RemovedBody479_203 RemovedBody479_206

def RemovedBody479_208 : StackLang.HolProg 64 :=
.seq RemovedBody479_202 RemovedBody479_207

def RemovedBody479_209 : StackLang.HolProg 64 :=
.seq RemovedBody479_201 RemovedBody479_208

def RemovedBody479_210 : StackLang.HolProg 64 :=
.seq RemovedBody479_146 RemovedBody479_209

def RemovedBody479_211 : StackLang.HolProg 64 :=
.seq RemovedBody479_145 RemovedBody479_210

def RemovedBody479_212 : StackLang.HolProg 64 :=
.seq RemovedBody479_144 RemovedBody479_211

def RemovedBody479_213 : StackLang.HolProg 64 :=
.seq RemovedBody479_143 RemovedBody479_212

def RemovedBody479_214 : StackLang.HolProg 64 :=
.seq RemovedBody479_142 RemovedBody479_213

def RemovedBody479_215 : StackLang.HolProg 64 :=
.seq RemovedBody479_141 RemovedBody479_214

def RemovedBody479_216 : StackLang.HolProg 64 :=
.seq RemovedBody479_140 RemovedBody479_215

def RemovedBody479_217 : StackLang.HolProg 64 :=
.seq RemovedBody479_139 RemovedBody479_216

def RemovedBody479_218 : StackLang.HolProg 64 :=
.seq RemovedBody479_138 RemovedBody479_217

def RemovedBody479_219 : StackLang.HolProg 64 :=
.seq RemovedBody479_137 RemovedBody479_218

def RemovedBody479_220 : StackLang.HolProg 64 :=
.seq RemovedBody479_126 RemovedBody479_219

def RemovedBody479_221 : StackLang.HolProg 64 :=
.seq RemovedBody479_125 RemovedBody479_220

def RemovedBody479_222 : StackLang.HolProg 64 :=
.seq RemovedBody479_124 RemovedBody479_221

def RemovedBody479_223 : StackLang.HolProg 64 :=
.seq RemovedBody479_123 RemovedBody479_222

def RemovedBody479_224 : StackLang.HolProg 64 :=
.seq RemovedBody479_64 RemovedBody479_223

def RemovedBody479_225 : StackLang.HolProg 64 :=
.seq RemovedBody479_61 RemovedBody479_224

def RemovedBody479_226 : StackLang.HolProg 64 :=
.seq RemovedBody479_60 RemovedBody479_225

def RemovedBody479_227 : StackLang.HolProg 64 :=
.seq RemovedBody479_7 RemovedBody479_226

def RemovedBody479_228 : StackLang.HolProg 64 :=
.seq RemovedBody479_6 RemovedBody479_227

def Removed479 : Nat × StackLang.HolProg 64 := (479, RemovedBody479_228)
theorem Removed479_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc479 = Removed479 := by
  kernel_rfl
#print axioms Removed479_eq
end InitECandidate.Proofs.BackendStages
