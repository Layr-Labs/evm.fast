import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc429
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody429_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody429_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody429_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody429_3 : StackLang.HolProg 64 :=
.seq RemovedBody429_1 RemovedBody429_2

def RemovedBody429_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody429_3 RemovedBody429_4

def RemovedBody429_6 : StackLang.HolProg 64 :=
.seq RemovedBody429_0 RemovedBody429_5

def RemovedBody429_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody429_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody429_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody429_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody429_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody429_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody429_13 : StackLang.HolProg 64 :=
.seq RemovedBody429_11 RemovedBody429_12

def RemovedBody429_14 : StackLang.HolProg 64 :=
.seq RemovedBody429_10 RemovedBody429_13

def RemovedBody429_15 : StackLang.HolProg 64 :=
.seq RemovedBody429_9 RemovedBody429_14

def RemovedBody429_16 : StackLang.HolProg 64 :=
.seq RemovedBody429_8 RemovedBody429_15

def RemovedBody429_17 : StackLang.HolProg 64 :=
.seq RemovedBody429_7 RemovedBody429_16

def RemovedBody429_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1287#64)

def RemovedBody429_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody429_21 : StackLang.HolProg 64 :=
.seq RemovedBody429_19 RemovedBody429_20

def RemovedBody429_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody429_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody429_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody429_25 : StackLang.HolProg 64 :=
.seq RemovedBody429_23 RemovedBody429_24

def RemovedBody429_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody429_25 RemovedBody429_26

def RemovedBody429_28 : StackLang.HolProg 64 :=
.seq RemovedBody429_22 RemovedBody429_27

def RemovedBody429_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody429_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody429_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 429 3

def RemovedBody429_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody429_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody429_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody429_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody429_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody429_38 : StackLang.HolProg 64 :=
.seq RemovedBody429_36 RemovedBody429_37

def RemovedBody429_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody429_40 : StackLang.HolProg 64 :=
.seq RemovedBody429_38 RemovedBody429_39

def RemovedBody429_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody429_42 : StackLang.HolProg 64 :=
.seq RemovedBody429_40 RemovedBody429_41

def RemovedBody429_43 : StackLang.HolProg 64 :=
.seq RemovedBody429_35 RemovedBody429_42

def RemovedBody429_44 : StackLang.HolProg 64 :=
.seq RemovedBody429_34 RemovedBody429_43

def RemovedBody429_45 : StackLang.HolProg 64 :=
.seq RemovedBody429_33 RemovedBody429_44

def RemovedBody429_46 : StackLang.HolProg 64 :=
.seq RemovedBody429_32 RemovedBody429_45

def RemovedBody429_47 : StackLang.HolProg 64 :=
.seq RemovedBody429_31 RemovedBody429_46

def RemovedBody429_48 : StackLang.HolProg 64 :=
.seq RemovedBody429_30 RemovedBody429_47

def RemovedBody429_49 : StackLang.HolProg 64 :=
.seq RemovedBody429_29 RemovedBody429_48

def RemovedBody429_50 : StackLang.HolProg 64 :=
.seq RemovedBody429_28 RemovedBody429_49

def RemovedBody429_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody429_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody429_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody429_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody429_58 : StackLang.HolProg 64 :=
.seq RemovedBody429_56 RemovedBody429_57

def RemovedBody429_59 : StackLang.HolProg 64 :=
.seq RemovedBody429_55 RemovedBody429_58

def RemovedBody429_60 : StackLang.HolProg 64 :=
.seq RemovedBody429_54 RemovedBody429_59

def RemovedBody429_61 : StackLang.HolProg 64 :=
.seq RemovedBody429_53 RemovedBody429_60

def RemovedBody429_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody429_64 : StackLang.HolProg 64 :=
.seq RemovedBody429_62 RemovedBody429_63

def RemovedBody429_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody429_61, 0, 429, 2)) (Sum.inl 407) (some (RemovedBody429_64, 429, 3))

def RemovedBody429_66 : StackLang.HolProg 64 :=
.seq RemovedBody429_52 RemovedBody429_65

def RemovedBody429_67 : StackLang.HolProg 64 :=
.seq RemovedBody429_51 RemovedBody429_66

def RemovedBody429_68 : StackLang.HolProg 64 :=
.seq RemovedBody429_50 RemovedBody429_67

def RemovedBody429_69 : StackLang.HolProg 64 :=
.seq RemovedBody429_21 RemovedBody429_68

def RemovedBody429_70 : StackLang.HolProg 64 :=
.seq RemovedBody429_18 RemovedBody429_69

def RemovedBody429_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody429_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody429_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1288#64)

def RemovedBody429_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody429_76 : StackLang.HolProg 64 :=
.seq RemovedBody429_74 RemovedBody429_75

def RemovedBody429_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody429_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody429_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody429_80 : StackLang.HolProg 64 :=
.seq RemovedBody429_78 RemovedBody429_79

def RemovedBody429_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody429_80 RemovedBody429_81

def RemovedBody429_83 : StackLang.HolProg 64 :=
.seq RemovedBody429_77 RemovedBody429_82

def RemovedBody429_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody429_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody429_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 429 5

def RemovedBody429_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody429_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody429_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody429_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody429_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody429_93 : StackLang.HolProg 64 :=
.seq RemovedBody429_91 RemovedBody429_92

def RemovedBody429_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody429_95 : StackLang.HolProg 64 :=
.seq RemovedBody429_93 RemovedBody429_94

def RemovedBody429_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody429_97 : StackLang.HolProg 64 :=
.seq RemovedBody429_95 RemovedBody429_96

def RemovedBody429_98 : StackLang.HolProg 64 :=
.seq RemovedBody429_90 RemovedBody429_97

def RemovedBody429_99 : StackLang.HolProg 64 :=
.seq RemovedBody429_89 RemovedBody429_98

def RemovedBody429_100 : StackLang.HolProg 64 :=
.seq RemovedBody429_88 RemovedBody429_99

def RemovedBody429_101 : StackLang.HolProg 64 :=
.seq RemovedBody429_87 RemovedBody429_100

def RemovedBody429_102 : StackLang.HolProg 64 :=
.seq RemovedBody429_86 RemovedBody429_101

def RemovedBody429_103 : StackLang.HolProg 64 :=
.seq RemovedBody429_85 RemovedBody429_102

def RemovedBody429_104 : StackLang.HolProg 64 :=
.seq RemovedBody429_84 RemovedBody429_103

def RemovedBody429_105 : StackLang.HolProg 64 :=
.seq RemovedBody429_83 RemovedBody429_104

def RemovedBody429_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody429_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody429_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody429_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody429_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody429_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody429_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody429_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody429_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody429_118 : StackLang.HolProg 64 :=
.seq RemovedBody429_116 RemovedBody429_117

def RemovedBody429_119 : StackLang.HolProg 64 :=
.seq RemovedBody429_115 RemovedBody429_118

def RemovedBody429_120 : StackLang.HolProg 64 :=
.seq RemovedBody429_114 RemovedBody429_119

def RemovedBody429_121 : StackLang.HolProg 64 :=
.seq RemovedBody429_113 RemovedBody429_120

def RemovedBody429_122 : StackLang.HolProg 64 :=
.seq RemovedBody429_112 RemovedBody429_121

def RemovedBody429_123 : StackLang.HolProg 64 :=
.seq RemovedBody429_111 RemovedBody429_122

def RemovedBody429_124 : StackLang.HolProg 64 :=
.seq RemovedBody429_110 RemovedBody429_123

def RemovedBody429_125 : StackLang.HolProg 64 :=
.seq RemovedBody429_109 RemovedBody429_124

def RemovedBody429_126 : StackLang.HolProg 64 :=
.seq RemovedBody429_108 RemovedBody429_125

def RemovedBody429_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody429_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody429_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody429_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody429_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody429_132 : StackLang.HolProg 64 :=
.seq RemovedBody429_130 RemovedBody429_131

def RemovedBody429_133 : StackLang.HolProg 64 :=
.seq RemovedBody429_129 RemovedBody429_132

def RemovedBody429_134 : StackLang.HolProg 64 :=
.seq RemovedBody429_128 RemovedBody429_133

def RemovedBody429_135 : StackLang.HolProg 64 :=
.seq RemovedBody429_127 RemovedBody429_134

def RemovedBody429_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody429_137 : StackLang.HolProg 64 :=
.seq RemovedBody429_135 RemovedBody429_136

def RemovedBody429_138 : StackLang.HolProg 64 :=
.call (some (RemovedBody429_126, 0, 429, 4)) (Sum.inl 395) (some (RemovedBody429_137, 429, 5))

def RemovedBody429_139 : StackLang.HolProg 64 :=
.seq RemovedBody429_107 RemovedBody429_138

def RemovedBody429_140 : StackLang.HolProg 64 :=
.seq RemovedBody429_106 RemovedBody429_139

def RemovedBody429_141 : StackLang.HolProg 64 :=
.seq RemovedBody429_105 RemovedBody429_140

def RemovedBody429_142 : StackLang.HolProg 64 :=
.seq RemovedBody429_76 RemovedBody429_141

def RemovedBody429_143 : StackLang.HolProg 64 :=
.seq RemovedBody429_73 RemovedBody429_142

def RemovedBody429_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody429_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody429_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody429_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody429_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody429_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody429_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody429_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1289#64)

def RemovedBody429_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody429_159 : StackLang.HolProg 64 :=
.seq RemovedBody429_157 RemovedBody429_158

def RemovedBody429_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody429_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody429_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody429_163 : StackLang.HolProg 64 :=
.seq RemovedBody429_161 RemovedBody429_162

def RemovedBody429_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_165 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody429_163 RemovedBody429_164

def RemovedBody429_166 : StackLang.HolProg 64 :=
.seq RemovedBody429_160 RemovedBody429_165

def RemovedBody429_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody429_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody429_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 429 7

def RemovedBody429_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody429_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody429_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody429_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody429_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody429_176 : StackLang.HolProg 64 :=
.seq RemovedBody429_174 RemovedBody429_175

def RemovedBody429_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody429_178 : StackLang.HolProg 64 :=
.seq RemovedBody429_176 RemovedBody429_177

def RemovedBody429_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody429_180 : StackLang.HolProg 64 :=
.seq RemovedBody429_178 RemovedBody429_179

def RemovedBody429_181 : StackLang.HolProg 64 :=
.seq RemovedBody429_173 RemovedBody429_180

def RemovedBody429_182 : StackLang.HolProg 64 :=
.seq RemovedBody429_172 RemovedBody429_181

def RemovedBody429_183 : StackLang.HolProg 64 :=
.seq RemovedBody429_171 RemovedBody429_182

def RemovedBody429_184 : StackLang.HolProg 64 :=
.seq RemovedBody429_170 RemovedBody429_183

def RemovedBody429_185 : StackLang.HolProg 64 :=
.seq RemovedBody429_169 RemovedBody429_184

def RemovedBody429_186 : StackLang.HolProg 64 :=
.seq RemovedBody429_168 RemovedBody429_185

def RemovedBody429_187 : StackLang.HolProg 64 :=
.seq RemovedBody429_167 RemovedBody429_186

def RemovedBody429_188 : StackLang.HolProg 64 :=
.seq RemovedBody429_166 RemovedBody429_187

def RemovedBody429_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody429_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody429_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody429_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody429_196 : StackLang.HolProg 64 :=
.seq RemovedBody429_194 RemovedBody429_195

def RemovedBody429_197 : StackLang.HolProg 64 :=
.seq RemovedBody429_193 RemovedBody429_196

def RemovedBody429_198 : StackLang.HolProg 64 :=
.seq RemovedBody429_192 RemovedBody429_197

def RemovedBody429_199 : StackLang.HolProg 64 :=
.seq RemovedBody429_191 RemovedBody429_198

def RemovedBody429_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody429_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody429_202 : StackLang.HolProg 64 :=
.seq RemovedBody429_200 RemovedBody429_201

def RemovedBody429_203 : StackLang.HolProg 64 :=
.call (some (RemovedBody429_199, 0, 429, 6)) (Sum.inl 423) (some (RemovedBody429_202, 429, 7))

def RemovedBody429_204 : StackLang.HolProg 64 :=
.seq RemovedBody429_190 RemovedBody429_203

def RemovedBody429_205 : StackLang.HolProg 64 :=
.seq RemovedBody429_189 RemovedBody429_204

def RemovedBody429_206 : StackLang.HolProg 64 :=
.seq RemovedBody429_188 RemovedBody429_205

def RemovedBody429_207 : StackLang.HolProg 64 :=
.seq RemovedBody429_159 RemovedBody429_206

def RemovedBody429_208 : StackLang.HolProg 64 :=
.seq RemovedBody429_156 RemovedBody429_207

def RemovedBody429_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody429_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody429_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody429_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody429_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody429_214 : StackLang.HolProg 64 :=
.seq RemovedBody429_212 RemovedBody429_213

def RemovedBody429_215 : StackLang.HolProg 64 :=
.seq RemovedBody429_211 RemovedBody429_214

def RemovedBody429_216 : StackLang.HolProg 64 :=
.seq RemovedBody429_210 RemovedBody429_215

def RemovedBody429_217 : StackLang.HolProg 64 :=
.seq RemovedBody429_209 RemovedBody429_216

def RemovedBody429_218 : StackLang.HolProg 64 :=
.seq RemovedBody429_208 RemovedBody429_217

def RemovedBody429_219 : StackLang.HolProg 64 :=
.seq RemovedBody429_155 RemovedBody429_218

def RemovedBody429_220 : StackLang.HolProg 64 :=
.seq RemovedBody429_154 RemovedBody429_219

def RemovedBody429_221 : StackLang.HolProg 64 :=
.seq RemovedBody429_153 RemovedBody429_220

def RemovedBody429_222 : StackLang.HolProg 64 :=
.seq RemovedBody429_152 RemovedBody429_221

def RemovedBody429_223 : StackLang.HolProg 64 :=
.seq RemovedBody429_151 RemovedBody429_222

def RemovedBody429_224 : StackLang.HolProg 64 :=
.seq RemovedBody429_150 RemovedBody429_223

def RemovedBody429_225 : StackLang.HolProg 64 :=
.seq RemovedBody429_149 RemovedBody429_224

def RemovedBody429_226 : StackLang.HolProg 64 :=
.seq RemovedBody429_148 RemovedBody429_225

def RemovedBody429_227 : StackLang.HolProg 64 :=
.seq RemovedBody429_147 RemovedBody429_226

def RemovedBody429_228 : StackLang.HolProg 64 :=
.seq RemovedBody429_146 RemovedBody429_227

def RemovedBody429_229 : StackLang.HolProg 64 :=
.seq RemovedBody429_145 RemovedBody429_228

def RemovedBody429_230 : StackLang.HolProg 64 :=
.seq RemovedBody429_144 RemovedBody429_229

def RemovedBody429_231 : StackLang.HolProg 64 :=
.seq RemovedBody429_143 RemovedBody429_230

def RemovedBody429_232 : StackLang.HolProg 64 :=
.seq RemovedBody429_72 RemovedBody429_231

def RemovedBody429_233 : StackLang.HolProg 64 :=
.seq RemovedBody429_71 RemovedBody429_232

def RemovedBody429_234 : StackLang.HolProg 64 :=
.seq RemovedBody429_70 RemovedBody429_233

def RemovedBody429_235 : StackLang.HolProg 64 :=
.seq RemovedBody429_17 RemovedBody429_234

def RemovedBody429_236 : StackLang.HolProg 64 :=
.seq RemovedBody429_6 RemovedBody429_235

def Removed429 : Nat × StackLang.HolProg 64 := (429, RemovedBody429_236)
theorem Removed429_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc429 = Removed429 := by
  kernel_rfl
#print axioms Removed429_eq
end InitECandidate.Proofs.BackendStages
