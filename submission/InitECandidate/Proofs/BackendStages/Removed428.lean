import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc428
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody428_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody428_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody428_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody428_3 : StackLang.HolProg 64 :=
.seq RemovedBody428_1 RemovedBody428_2

def RemovedBody428_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody428_3 RemovedBody428_4

def RemovedBody428_6 : StackLang.HolProg 64 :=
.seq RemovedBody428_0 RemovedBody428_5

def RemovedBody428_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody428_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody428_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody428_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody428_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody428_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody428_13 : StackLang.HolProg 64 :=
.seq RemovedBody428_11 RemovedBody428_12

def RemovedBody428_14 : StackLang.HolProg 64 :=
.seq RemovedBody428_10 RemovedBody428_13

def RemovedBody428_15 : StackLang.HolProg 64 :=
.seq RemovedBody428_9 RemovedBody428_14

def RemovedBody428_16 : StackLang.HolProg 64 :=
.seq RemovedBody428_8 RemovedBody428_15

def RemovedBody428_17 : StackLang.HolProg 64 :=
.seq RemovedBody428_7 RemovedBody428_16

def RemovedBody428_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1283#64)

def RemovedBody428_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody428_21 : StackLang.HolProg 64 :=
.seq RemovedBody428_19 RemovedBody428_20

def RemovedBody428_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody428_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody428_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody428_25 : StackLang.HolProg 64 :=
.seq RemovedBody428_23 RemovedBody428_24

def RemovedBody428_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody428_25 RemovedBody428_26

def RemovedBody428_28 : StackLang.HolProg 64 :=
.seq RemovedBody428_22 RemovedBody428_27

def RemovedBody428_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody428_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody428_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 428 3

def RemovedBody428_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody428_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody428_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody428_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody428_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody428_38 : StackLang.HolProg 64 :=
.seq RemovedBody428_36 RemovedBody428_37

def RemovedBody428_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody428_40 : StackLang.HolProg 64 :=
.seq RemovedBody428_38 RemovedBody428_39

def RemovedBody428_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody428_42 : StackLang.HolProg 64 :=
.seq RemovedBody428_40 RemovedBody428_41

def RemovedBody428_43 : StackLang.HolProg 64 :=
.seq RemovedBody428_35 RemovedBody428_42

def RemovedBody428_44 : StackLang.HolProg 64 :=
.seq RemovedBody428_34 RemovedBody428_43

def RemovedBody428_45 : StackLang.HolProg 64 :=
.seq RemovedBody428_33 RemovedBody428_44

def RemovedBody428_46 : StackLang.HolProg 64 :=
.seq RemovedBody428_32 RemovedBody428_45

def RemovedBody428_47 : StackLang.HolProg 64 :=
.seq RemovedBody428_31 RemovedBody428_46

def RemovedBody428_48 : StackLang.HolProg 64 :=
.seq RemovedBody428_30 RemovedBody428_47

def RemovedBody428_49 : StackLang.HolProg 64 :=
.seq RemovedBody428_29 RemovedBody428_48

def RemovedBody428_50 : StackLang.HolProg 64 :=
.seq RemovedBody428_28 RemovedBody428_49

def RemovedBody428_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody428_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody428_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody428_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody428_58 : StackLang.HolProg 64 :=
.seq RemovedBody428_56 RemovedBody428_57

def RemovedBody428_59 : StackLang.HolProg 64 :=
.seq RemovedBody428_55 RemovedBody428_58

def RemovedBody428_60 : StackLang.HolProg 64 :=
.seq RemovedBody428_54 RemovedBody428_59

def RemovedBody428_61 : StackLang.HolProg 64 :=
.seq RemovedBody428_53 RemovedBody428_60

def RemovedBody428_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody428_64 : StackLang.HolProg 64 :=
.seq RemovedBody428_62 RemovedBody428_63

def RemovedBody428_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody428_61, 0, 428, 2)) (Sum.inl 407) (some (RemovedBody428_64, 428, 3))

def RemovedBody428_66 : StackLang.HolProg 64 :=
.seq RemovedBody428_52 RemovedBody428_65

def RemovedBody428_67 : StackLang.HolProg 64 :=
.seq RemovedBody428_51 RemovedBody428_66

def RemovedBody428_68 : StackLang.HolProg 64 :=
.seq RemovedBody428_50 RemovedBody428_67

def RemovedBody428_69 : StackLang.HolProg 64 :=
.seq RemovedBody428_21 RemovedBody428_68

def RemovedBody428_70 : StackLang.HolProg 64 :=
.seq RemovedBody428_18 RemovedBody428_69

def RemovedBody428_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody428_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody428_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1284#64)

def RemovedBody428_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody428_76 : StackLang.HolProg 64 :=
.seq RemovedBody428_74 RemovedBody428_75

def RemovedBody428_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody428_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody428_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody428_80 : StackLang.HolProg 64 :=
.seq RemovedBody428_78 RemovedBody428_79

def RemovedBody428_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody428_80 RemovedBody428_81

def RemovedBody428_83 : StackLang.HolProg 64 :=
.seq RemovedBody428_77 RemovedBody428_82

def RemovedBody428_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody428_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody428_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 428 5

def RemovedBody428_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody428_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody428_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody428_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody428_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody428_93 : StackLang.HolProg 64 :=
.seq RemovedBody428_91 RemovedBody428_92

def RemovedBody428_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody428_95 : StackLang.HolProg 64 :=
.seq RemovedBody428_93 RemovedBody428_94

def RemovedBody428_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody428_97 : StackLang.HolProg 64 :=
.seq RemovedBody428_95 RemovedBody428_96

def RemovedBody428_98 : StackLang.HolProg 64 :=
.seq RemovedBody428_90 RemovedBody428_97

def RemovedBody428_99 : StackLang.HolProg 64 :=
.seq RemovedBody428_89 RemovedBody428_98

def RemovedBody428_100 : StackLang.HolProg 64 :=
.seq RemovedBody428_88 RemovedBody428_99

def RemovedBody428_101 : StackLang.HolProg 64 :=
.seq RemovedBody428_87 RemovedBody428_100

def RemovedBody428_102 : StackLang.HolProg 64 :=
.seq RemovedBody428_86 RemovedBody428_101

def RemovedBody428_103 : StackLang.HolProg 64 :=
.seq RemovedBody428_85 RemovedBody428_102

def RemovedBody428_104 : StackLang.HolProg 64 :=
.seq RemovedBody428_84 RemovedBody428_103

def RemovedBody428_105 : StackLang.HolProg 64 :=
.seq RemovedBody428_83 RemovedBody428_104

def RemovedBody428_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody428_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody428_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody428_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody428_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody428_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody428_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody428_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody428_117 : StackLang.HolProg 64 :=
.seq RemovedBody428_115 RemovedBody428_116

def RemovedBody428_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody428_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody428_120 : StackLang.HolProg 64 :=
.seq RemovedBody428_118 RemovedBody428_119

def RemovedBody428_121 : StackLang.HolProg 64 :=
.seq RemovedBody428_117 RemovedBody428_120

def RemovedBody428_122 : StackLang.HolProg 64 :=
.seq RemovedBody428_114 RemovedBody428_121

def RemovedBody428_123 : StackLang.HolProg 64 :=
.seq RemovedBody428_113 RemovedBody428_122

def RemovedBody428_124 : StackLang.HolProg 64 :=
.seq RemovedBody428_112 RemovedBody428_123

def RemovedBody428_125 : StackLang.HolProg 64 :=
.seq RemovedBody428_111 RemovedBody428_124

def RemovedBody428_126 : StackLang.HolProg 64 :=
.seq RemovedBody428_110 RemovedBody428_125

def RemovedBody428_127 : StackLang.HolProg 64 :=
.seq RemovedBody428_109 RemovedBody428_126

def RemovedBody428_128 : StackLang.HolProg 64 :=
.seq RemovedBody428_108 RemovedBody428_127

def RemovedBody428_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody428_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody428_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody428_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody428_133 : StackLang.HolProg 64 :=
.seq RemovedBody428_131 RemovedBody428_132

def RemovedBody428_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody428_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody428_136 : StackLang.HolProg 64 :=
.seq RemovedBody428_134 RemovedBody428_135

def RemovedBody428_137 : StackLang.HolProg 64 :=
.seq RemovedBody428_133 RemovedBody428_136

def RemovedBody428_138 : StackLang.HolProg 64 :=
.seq RemovedBody428_130 RemovedBody428_137

def RemovedBody428_139 : StackLang.HolProg 64 :=
.seq RemovedBody428_129 RemovedBody428_138

def RemovedBody428_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody428_141 : StackLang.HolProg 64 :=
.seq RemovedBody428_139 RemovedBody428_140

def RemovedBody428_142 : StackLang.HolProg 64 :=
.call (some (RemovedBody428_128, 0, 428, 4)) (Sum.inl 395) (some (RemovedBody428_141, 428, 5))

def RemovedBody428_143 : StackLang.HolProg 64 :=
.seq RemovedBody428_107 RemovedBody428_142

def RemovedBody428_144 : StackLang.HolProg 64 :=
.seq RemovedBody428_106 RemovedBody428_143

def RemovedBody428_145 : StackLang.HolProg 64 :=
.seq RemovedBody428_105 RemovedBody428_144

def RemovedBody428_146 : StackLang.HolProg 64 :=
.seq RemovedBody428_76 RemovedBody428_145

def RemovedBody428_147 : StackLang.HolProg 64 :=
.seq RemovedBody428_73 RemovedBody428_146

def RemovedBody428_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody428_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody428_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody428_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody428_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody428_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody428_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1285#64)

def RemovedBody428_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody428_161 : StackLang.HolProg 64 :=
.seq RemovedBody428_159 RemovedBody428_160

def RemovedBody428_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody428_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody428_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody428_165 : StackLang.HolProg 64 :=
.seq RemovedBody428_163 RemovedBody428_164

def RemovedBody428_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_167 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody428_165 RemovedBody428_166

def RemovedBody428_168 : StackLang.HolProg 64 :=
.seq RemovedBody428_162 RemovedBody428_167

def RemovedBody428_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody428_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody428_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 428 7

def RemovedBody428_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody428_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody428_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody428_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody428_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody428_178 : StackLang.HolProg 64 :=
.seq RemovedBody428_176 RemovedBody428_177

def RemovedBody428_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody428_180 : StackLang.HolProg 64 :=
.seq RemovedBody428_178 RemovedBody428_179

def RemovedBody428_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody428_182 : StackLang.HolProg 64 :=
.seq RemovedBody428_180 RemovedBody428_181

def RemovedBody428_183 : StackLang.HolProg 64 :=
.seq RemovedBody428_175 RemovedBody428_182

def RemovedBody428_184 : StackLang.HolProg 64 :=
.seq RemovedBody428_174 RemovedBody428_183

def RemovedBody428_185 : StackLang.HolProg 64 :=
.seq RemovedBody428_173 RemovedBody428_184

def RemovedBody428_186 : StackLang.HolProg 64 :=
.seq RemovedBody428_172 RemovedBody428_185

def RemovedBody428_187 : StackLang.HolProg 64 :=
.seq RemovedBody428_171 RemovedBody428_186

def RemovedBody428_188 : StackLang.HolProg 64 :=
.seq RemovedBody428_170 RemovedBody428_187

def RemovedBody428_189 : StackLang.HolProg 64 :=
.seq RemovedBody428_169 RemovedBody428_188

def RemovedBody428_190 : StackLang.HolProg 64 :=
.seq RemovedBody428_168 RemovedBody428_189

def RemovedBody428_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody428_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody428_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody428_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody428_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody428_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody428_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody428_201 : StackLang.HolProg 64 :=
.seq RemovedBody428_199 RemovedBody428_200

def RemovedBody428_202 : StackLang.HolProg 64 :=
.seq RemovedBody428_198 RemovedBody428_201

def RemovedBody428_203 : StackLang.HolProg 64 :=
.seq RemovedBody428_197 RemovedBody428_202

def RemovedBody428_204 : StackLang.HolProg 64 :=
.seq RemovedBody428_196 RemovedBody428_203

def RemovedBody428_205 : StackLang.HolProg 64 :=
.seq RemovedBody428_195 RemovedBody428_204

def RemovedBody428_206 : StackLang.HolProg 64 :=
.seq RemovedBody428_194 RemovedBody428_205

def RemovedBody428_207 : StackLang.HolProg 64 :=
.seq RemovedBody428_193 RemovedBody428_206

def RemovedBody428_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody428_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody428_210 : StackLang.HolProg 64 :=
.seq RemovedBody428_208 RemovedBody428_209

def RemovedBody428_211 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody428_212 : StackLang.HolProg 64 :=
.seq RemovedBody428_210 RemovedBody428_211

def RemovedBody428_213 : StackLang.HolProg 64 :=
.call (some (RemovedBody428_207, 0, 428, 6)) (Sum.inl 116) (some (RemovedBody428_212, 428, 7))

def RemovedBody428_214 : StackLang.HolProg 64 :=
.seq RemovedBody428_192 RemovedBody428_213

def RemovedBody428_215 : StackLang.HolProg 64 :=
.seq RemovedBody428_191 RemovedBody428_214

def RemovedBody428_216 : StackLang.HolProg 64 :=
.seq RemovedBody428_190 RemovedBody428_215

def RemovedBody428_217 : StackLang.HolProg 64 :=
.seq RemovedBody428_161 RemovedBody428_216

def RemovedBody428_218 : StackLang.HolProg 64 :=
.seq RemovedBody428_158 RemovedBody428_217

def RemovedBody428_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody428_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody428_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody428_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody428_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody428_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody428_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody428_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1286#64)

def RemovedBody428_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody428_234 : StackLang.HolProg 64 :=
.seq RemovedBody428_232 RemovedBody428_233

def RemovedBody428_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody428_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody428_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody428_238 : StackLang.HolProg 64 :=
.seq RemovedBody428_236 RemovedBody428_237

def RemovedBody428_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_240 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody428_238 RemovedBody428_239

def RemovedBody428_241 : StackLang.HolProg 64 :=
.seq RemovedBody428_235 RemovedBody428_240

def RemovedBody428_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody428_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody428_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 428 9

def RemovedBody428_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody428_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody428_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody428_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody428_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody428_251 : StackLang.HolProg 64 :=
.seq RemovedBody428_249 RemovedBody428_250

def RemovedBody428_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody428_253 : StackLang.HolProg 64 :=
.seq RemovedBody428_251 RemovedBody428_252

def RemovedBody428_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody428_255 : StackLang.HolProg 64 :=
.seq RemovedBody428_253 RemovedBody428_254

def RemovedBody428_256 : StackLang.HolProg 64 :=
.seq RemovedBody428_248 RemovedBody428_255

def RemovedBody428_257 : StackLang.HolProg 64 :=
.seq RemovedBody428_247 RemovedBody428_256

def RemovedBody428_258 : StackLang.HolProg 64 :=
.seq RemovedBody428_246 RemovedBody428_257

def RemovedBody428_259 : StackLang.HolProg 64 :=
.seq RemovedBody428_245 RemovedBody428_258

def RemovedBody428_260 : StackLang.HolProg 64 :=
.seq RemovedBody428_244 RemovedBody428_259

def RemovedBody428_261 : StackLang.HolProg 64 :=
.seq RemovedBody428_243 RemovedBody428_260

def RemovedBody428_262 : StackLang.HolProg 64 :=
.seq RemovedBody428_242 RemovedBody428_261

def RemovedBody428_263 : StackLang.HolProg 64 :=
.seq RemovedBody428_241 RemovedBody428_262

def RemovedBody428_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody428_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody428_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody428_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody428_271 : StackLang.HolProg 64 :=
.seq RemovedBody428_269 RemovedBody428_270

def RemovedBody428_272 : StackLang.HolProg 64 :=
.seq RemovedBody428_268 RemovedBody428_271

def RemovedBody428_273 : StackLang.HolProg 64 :=
.seq RemovedBody428_267 RemovedBody428_272

def RemovedBody428_274 : StackLang.HolProg 64 :=
.seq RemovedBody428_266 RemovedBody428_273

def RemovedBody428_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody428_276 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody428_277 : StackLang.HolProg 64 :=
.seq RemovedBody428_275 RemovedBody428_276

def RemovedBody428_278 : StackLang.HolProg 64 :=
.call (some (RemovedBody428_274, 0, 428, 8)) (Sum.inl 423) (some (RemovedBody428_277, 428, 9))

def RemovedBody428_279 : StackLang.HolProg 64 :=
.seq RemovedBody428_265 RemovedBody428_278

def RemovedBody428_280 : StackLang.HolProg 64 :=
.seq RemovedBody428_264 RemovedBody428_279

def RemovedBody428_281 : StackLang.HolProg 64 :=
.seq RemovedBody428_263 RemovedBody428_280

def RemovedBody428_282 : StackLang.HolProg 64 :=
.seq RemovedBody428_234 RemovedBody428_281

def RemovedBody428_283 : StackLang.HolProg 64 :=
.seq RemovedBody428_231 RemovedBody428_282

def RemovedBody428_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody428_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody428_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody428_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody428_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody428_289 : StackLang.HolProg 64 :=
.seq RemovedBody428_287 RemovedBody428_288

def RemovedBody428_290 : StackLang.HolProg 64 :=
.seq RemovedBody428_286 RemovedBody428_289

def RemovedBody428_291 : StackLang.HolProg 64 :=
.seq RemovedBody428_285 RemovedBody428_290

def RemovedBody428_292 : StackLang.HolProg 64 :=
.seq RemovedBody428_284 RemovedBody428_291

def RemovedBody428_293 : StackLang.HolProg 64 :=
.seq RemovedBody428_283 RemovedBody428_292

def RemovedBody428_294 : StackLang.HolProg 64 :=
.seq RemovedBody428_230 RemovedBody428_293

def RemovedBody428_295 : StackLang.HolProg 64 :=
.seq RemovedBody428_229 RemovedBody428_294

def RemovedBody428_296 : StackLang.HolProg 64 :=
.seq RemovedBody428_228 RemovedBody428_295

def RemovedBody428_297 : StackLang.HolProg 64 :=
.seq RemovedBody428_227 RemovedBody428_296

def RemovedBody428_298 : StackLang.HolProg 64 :=
.seq RemovedBody428_226 RemovedBody428_297

def RemovedBody428_299 : StackLang.HolProg 64 :=
.seq RemovedBody428_225 RemovedBody428_298

def RemovedBody428_300 : StackLang.HolProg 64 :=
.seq RemovedBody428_224 RemovedBody428_299

def RemovedBody428_301 : StackLang.HolProg 64 :=
.seq RemovedBody428_223 RemovedBody428_300

def RemovedBody428_302 : StackLang.HolProg 64 :=
.seq RemovedBody428_222 RemovedBody428_301

def RemovedBody428_303 : StackLang.HolProg 64 :=
.seq RemovedBody428_221 RemovedBody428_302

def RemovedBody428_304 : StackLang.HolProg 64 :=
.seq RemovedBody428_220 RemovedBody428_303

def RemovedBody428_305 : StackLang.HolProg 64 :=
.seq RemovedBody428_219 RemovedBody428_304

def RemovedBody428_306 : StackLang.HolProg 64 :=
.seq RemovedBody428_218 RemovedBody428_305

def RemovedBody428_307 : StackLang.HolProg 64 :=
.seq RemovedBody428_157 RemovedBody428_306

def RemovedBody428_308 : StackLang.HolProg 64 :=
.seq RemovedBody428_156 RemovedBody428_307

def RemovedBody428_309 : StackLang.HolProg 64 :=
.seq RemovedBody428_155 RemovedBody428_308

def RemovedBody428_310 : StackLang.HolProg 64 :=
.seq RemovedBody428_154 RemovedBody428_309

def RemovedBody428_311 : StackLang.HolProg 64 :=
.seq RemovedBody428_153 RemovedBody428_310

def RemovedBody428_312 : StackLang.HolProg 64 :=
.seq RemovedBody428_152 RemovedBody428_311

def RemovedBody428_313 : StackLang.HolProg 64 :=
.seq RemovedBody428_151 RemovedBody428_312

def RemovedBody428_314 : StackLang.HolProg 64 :=
.seq RemovedBody428_150 RemovedBody428_313

def RemovedBody428_315 : StackLang.HolProg 64 :=
.seq RemovedBody428_149 RemovedBody428_314

def RemovedBody428_316 : StackLang.HolProg 64 :=
.seq RemovedBody428_148 RemovedBody428_315

def RemovedBody428_317 : StackLang.HolProg 64 :=
.seq RemovedBody428_147 RemovedBody428_316

def RemovedBody428_318 : StackLang.HolProg 64 :=
.seq RemovedBody428_72 RemovedBody428_317

def RemovedBody428_319 : StackLang.HolProg 64 :=
.seq RemovedBody428_71 RemovedBody428_318

def RemovedBody428_320 : StackLang.HolProg 64 :=
.seq RemovedBody428_70 RemovedBody428_319

def RemovedBody428_321 : StackLang.HolProg 64 :=
.seq RemovedBody428_17 RemovedBody428_320

def RemovedBody428_322 : StackLang.HolProg 64 :=
.seq RemovedBody428_6 RemovedBody428_321

def Removed428 : Nat × StackLang.HolProg 64 := (428, RemovedBody428_322)
theorem Removed428_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc428 = Removed428 := by
  kernel_rfl
#print axioms Removed428_eq
end InitECandidate.Proofs.BackendStages
