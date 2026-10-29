import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc843
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody843_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody843_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody843_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody843_3 : StackLang.HolProg 64 :=
.seq RemovedBody843_1 RemovedBody843_2

def RemovedBody843_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody843_3 RemovedBody843_4

def RemovedBody843_6 : StackLang.HolProg 64 :=
.seq RemovedBody843_0 RemovedBody843_5

def RemovedBody843_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody843_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody843_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody843_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody843_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_13 : StackLang.HolProg 64 :=
.seq RemovedBody843_11 RemovedBody843_12

def RemovedBody843_14 : StackLang.HolProg 64 :=
.seq RemovedBody843_10 RemovedBody843_13

def RemovedBody843_15 : StackLang.HolProg 64 :=
.seq RemovedBody843_9 RemovedBody843_14

def RemovedBody843_16 : StackLang.HolProg 64 :=
.seq RemovedBody843_8 RemovedBody843_15

def RemovedBody843_17 : StackLang.HolProg 64 :=
.seq RemovedBody843_7 RemovedBody843_16

def RemovedBody843_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4215#64)

def RemovedBody843_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_21 : StackLang.HolProg 64 :=
.seq RemovedBody843_19 RemovedBody843_20

def RemovedBody843_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody843_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody843_25 : StackLang.HolProg 64 :=
.seq RemovedBody843_23 RemovedBody843_24

def RemovedBody843_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody843_25 RemovedBody843_26

def RemovedBody843_28 : StackLang.HolProg 64 :=
.seq RemovedBody843_22 RemovedBody843_27

def RemovedBody843_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody843_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 3

def RemovedBody843_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody843_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody843_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody843_38 : StackLang.HolProg 64 :=
.seq RemovedBody843_36 RemovedBody843_37

def RemovedBody843_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody843_40 : StackLang.HolProg 64 :=
.seq RemovedBody843_38 RemovedBody843_39

def RemovedBody843_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_42 : StackLang.HolProg 64 :=
.seq RemovedBody843_40 RemovedBody843_41

def RemovedBody843_43 : StackLang.HolProg 64 :=
.seq RemovedBody843_35 RemovedBody843_42

def RemovedBody843_44 : StackLang.HolProg 64 :=
.seq RemovedBody843_34 RemovedBody843_43

def RemovedBody843_45 : StackLang.HolProg 64 :=
.seq RemovedBody843_33 RemovedBody843_44

def RemovedBody843_46 : StackLang.HolProg 64 :=
.seq RemovedBody843_32 RemovedBody843_45

def RemovedBody843_47 : StackLang.HolProg 64 :=
.seq RemovedBody843_31 RemovedBody843_46

def RemovedBody843_48 : StackLang.HolProg 64 :=
.seq RemovedBody843_30 RemovedBody843_47

def RemovedBody843_49 : StackLang.HolProg 64 :=
.seq RemovedBody843_29 RemovedBody843_48

def RemovedBody843_50 : StackLang.HolProg 64 :=
.seq RemovedBody843_28 RemovedBody843_49

def RemovedBody843_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody843_58 : StackLang.HolProg 64 :=
.seq RemovedBody843_56 RemovedBody843_57

def RemovedBody843_59 : StackLang.HolProg 64 :=
.seq RemovedBody843_55 RemovedBody843_58

def RemovedBody843_60 : StackLang.HolProg 64 :=
.seq RemovedBody843_54 RemovedBody843_59

def RemovedBody843_61 : StackLang.HolProg 64 :=
.seq RemovedBody843_53 RemovedBody843_60

def RemovedBody843_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody843_64 : StackLang.HolProg 64 :=
.seq RemovedBody843_62 RemovedBody843_63

def RemovedBody843_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody843_61, 0, 843, 2)) (Sum.inl 841) (some (RemovedBody843_64, 843, 3))

def RemovedBody843_66 : StackLang.HolProg 64 :=
.seq RemovedBody843_52 RemovedBody843_65

def RemovedBody843_67 : StackLang.HolProg 64 :=
.seq RemovedBody843_51 RemovedBody843_66

def RemovedBody843_68 : StackLang.HolProg 64 :=
.seq RemovedBody843_50 RemovedBody843_67

def RemovedBody843_69 : StackLang.HolProg 64 :=
.seq RemovedBody843_21 RemovedBody843_68

def RemovedBody843_70 : StackLang.HolProg 64 :=
.seq RemovedBody843_18 RemovedBody843_69

def RemovedBody843_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 400#64)))

def RemovedBody843_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4216#64)

def RemovedBody843_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_78 : StackLang.HolProg 64 :=
.seq RemovedBody843_76 RemovedBody843_77

def RemovedBody843_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody843_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody843_82 : StackLang.HolProg 64 :=
.seq RemovedBody843_80 RemovedBody843_81

def RemovedBody843_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody843_82 RemovedBody843_83

def RemovedBody843_85 : StackLang.HolProg 64 :=
.seq RemovedBody843_79 RemovedBody843_84

def RemovedBody843_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody843_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 5

def RemovedBody843_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody843_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody843_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody843_95 : StackLang.HolProg 64 :=
.seq RemovedBody843_93 RemovedBody843_94

def RemovedBody843_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody843_97 : StackLang.HolProg 64 :=
.seq RemovedBody843_95 RemovedBody843_96

def RemovedBody843_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_99 : StackLang.HolProg 64 :=
.seq RemovedBody843_97 RemovedBody843_98

def RemovedBody843_100 : StackLang.HolProg 64 :=
.seq RemovedBody843_92 RemovedBody843_99

def RemovedBody843_101 : StackLang.HolProg 64 :=
.seq RemovedBody843_91 RemovedBody843_100

def RemovedBody843_102 : StackLang.HolProg 64 :=
.seq RemovedBody843_90 RemovedBody843_101

def RemovedBody843_103 : StackLang.HolProg 64 :=
.seq RemovedBody843_89 RemovedBody843_102

def RemovedBody843_104 : StackLang.HolProg 64 :=
.seq RemovedBody843_88 RemovedBody843_103

def RemovedBody843_105 : StackLang.HolProg 64 :=
.seq RemovedBody843_87 RemovedBody843_104

def RemovedBody843_106 : StackLang.HolProg 64 :=
.seq RemovedBody843_86 RemovedBody843_105

def RemovedBody843_107 : StackLang.HolProg 64 :=
.seq RemovedBody843_85 RemovedBody843_106

def RemovedBody843_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody843_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody843_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_117 : StackLang.HolProg 64 :=
.seq RemovedBody843_115 RemovedBody843_116

def RemovedBody843_118 : StackLang.HolProg 64 :=
.seq RemovedBody843_114 RemovedBody843_117

def RemovedBody843_119 : StackLang.HolProg 64 :=
.seq RemovedBody843_113 RemovedBody843_118

def RemovedBody843_120 : StackLang.HolProg 64 :=
.seq RemovedBody843_112 RemovedBody843_119

def RemovedBody843_121 : StackLang.HolProg 64 :=
.seq RemovedBody843_111 RemovedBody843_120

def RemovedBody843_122 : StackLang.HolProg 64 :=
.seq RemovedBody843_110 RemovedBody843_121

def RemovedBody843_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody843_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_125 : StackLang.HolProg 64 :=
.seq RemovedBody843_123 RemovedBody843_124

def RemovedBody843_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody843_127 : StackLang.HolProg 64 :=
.seq RemovedBody843_125 RemovedBody843_126

def RemovedBody843_128 : StackLang.HolProg 64 :=
.call (some (RemovedBody843_122, 0, 843, 4)) (Sum.inl 68) (some (RemovedBody843_127, 843, 5))

def RemovedBody843_129 : StackLang.HolProg 64 :=
.seq RemovedBody843_109 RemovedBody843_128

def RemovedBody843_130 : StackLang.HolProg 64 :=
.seq RemovedBody843_108 RemovedBody843_129

def RemovedBody843_131 : StackLang.HolProg 64 :=
.seq RemovedBody843_107 RemovedBody843_130

def RemovedBody843_132 : StackLang.HolProg 64 :=
.seq RemovedBody843_78 RemovedBody843_131

def RemovedBody843_133 : StackLang.HolProg 64 :=
.seq RemovedBody843_75 RemovedBody843_132

def RemovedBody843_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody843_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def RemovedBody843_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody843_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody843_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody843_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_146 : StackLang.HolProg 64 :=
.seq RemovedBody843_144 RemovedBody843_145

def RemovedBody843_147 : StackLang.HolProg 64 :=
.seq RemovedBody843_143 RemovedBody843_146

def RemovedBody843_148 : StackLang.HolProg 64 :=
.seq RemovedBody843_142 RemovedBody843_147

def RemovedBody843_149 : StackLang.HolProg 64 :=
.seq RemovedBody843_141 RemovedBody843_148

def RemovedBody843_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 128#64)

def RemovedBody843_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody843_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_155 : StackLang.HolProg 64 :=
.seq RemovedBody843_153 RemovedBody843_154

def RemovedBody843_156 : StackLang.HolProg 64 :=
.seq RemovedBody843_152 RemovedBody843_155

def RemovedBody843_157 : StackLang.HolProg 64 :=
.seq RemovedBody843_151 RemovedBody843_156

def RemovedBody843_158 : StackLang.HolProg 64 :=
.seq RemovedBody843_150 RemovedBody843_157

def RemovedBody843_159 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody843_149 RemovedBody843_158

def RemovedBody843_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody843_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody843_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_165 : StackLang.HolProg 64 :=
.seq RemovedBody843_163 RemovedBody843_164

def RemovedBody843_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4217#64)

def RemovedBody843_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_169 : StackLang.HolProg 64 :=
.seq RemovedBody843_167 RemovedBody843_168

def RemovedBody843_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody843_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody843_173 : StackLang.HolProg 64 :=
.seq RemovedBody843_171 RemovedBody843_172

def RemovedBody843_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_175 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody843_173 RemovedBody843_174

def RemovedBody843_176 : StackLang.HolProg 64 :=
.seq RemovedBody843_170 RemovedBody843_175

def RemovedBody843_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody843_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 7

def RemovedBody843_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody843_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody843_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody843_186 : StackLang.HolProg 64 :=
.seq RemovedBody843_184 RemovedBody843_185

def RemovedBody843_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody843_188 : StackLang.HolProg 64 :=
.seq RemovedBody843_186 RemovedBody843_187

def RemovedBody843_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_190 : StackLang.HolProg 64 :=
.seq RemovedBody843_188 RemovedBody843_189

def RemovedBody843_191 : StackLang.HolProg 64 :=
.seq RemovedBody843_183 RemovedBody843_190

def RemovedBody843_192 : StackLang.HolProg 64 :=
.seq RemovedBody843_182 RemovedBody843_191

def RemovedBody843_193 : StackLang.HolProg 64 :=
.seq RemovedBody843_181 RemovedBody843_192

def RemovedBody843_194 : StackLang.HolProg 64 :=
.seq RemovedBody843_180 RemovedBody843_193

def RemovedBody843_195 : StackLang.HolProg 64 :=
.seq RemovedBody843_179 RemovedBody843_194

def RemovedBody843_196 : StackLang.HolProg 64 :=
.seq RemovedBody843_178 RemovedBody843_195

def RemovedBody843_197 : StackLang.HolProg 64 :=
.seq RemovedBody843_177 RemovedBody843_196

def RemovedBody843_198 : StackLang.HolProg 64 :=
.seq RemovedBody843_176 RemovedBody843_197

def RemovedBody843_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody843_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_207 : StackLang.HolProg 64 :=
.seq RemovedBody843_205 RemovedBody843_206

def RemovedBody843_208 : StackLang.HolProg 64 :=
.seq RemovedBody843_204 RemovedBody843_207

def RemovedBody843_209 : StackLang.HolProg 64 :=
.seq RemovedBody843_203 RemovedBody843_208

def RemovedBody843_210 : StackLang.HolProg 64 :=
.seq RemovedBody843_202 RemovedBody843_209

def RemovedBody843_211 : StackLang.HolProg 64 :=
.seq RemovedBody843_201 RemovedBody843_210

def RemovedBody843_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody843_214 : StackLang.HolProg 64 :=
.seq RemovedBody843_212 RemovedBody843_213

def RemovedBody843_215 : StackLang.HolProg 64 :=
.call (some (RemovedBody843_211, 0, 843, 6)) (Sum.inl 177) (some (RemovedBody843_214, 843, 7))

def RemovedBody843_216 : StackLang.HolProg 64 :=
.seq RemovedBody843_200 RemovedBody843_215

def RemovedBody843_217 : StackLang.HolProg 64 :=
.seq RemovedBody843_199 RemovedBody843_216

def RemovedBody843_218 : StackLang.HolProg 64 :=
.seq RemovedBody843_198 RemovedBody843_217

def RemovedBody843_219 : StackLang.HolProg 64 :=
.seq RemovedBody843_169 RemovedBody843_218

def RemovedBody843_220 : StackLang.HolProg 64 :=
.seq RemovedBody843_166 RemovedBody843_219

def RemovedBody843_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody843_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def RemovedBody843_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4218#64)

def RemovedBody843_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_230 : StackLang.HolProg 64 :=
.seq RemovedBody843_228 RemovedBody843_229

def RemovedBody843_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody843_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody843_234 : StackLang.HolProg 64 :=
.seq RemovedBody843_232 RemovedBody843_233

def RemovedBody843_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_236 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody843_234 RemovedBody843_235

def RemovedBody843_237 : StackLang.HolProg 64 :=
.seq RemovedBody843_231 RemovedBody843_236

def RemovedBody843_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody843_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 9

def RemovedBody843_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody843_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody843_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody843_247 : StackLang.HolProg 64 :=
.seq RemovedBody843_245 RemovedBody843_246

def RemovedBody843_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody843_249 : StackLang.HolProg 64 :=
.seq RemovedBody843_247 RemovedBody843_248

def RemovedBody843_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_251 : StackLang.HolProg 64 :=
.seq RemovedBody843_249 RemovedBody843_250

def RemovedBody843_252 : StackLang.HolProg 64 :=
.seq RemovedBody843_244 RemovedBody843_251

def RemovedBody843_253 : StackLang.HolProg 64 :=
.seq RemovedBody843_243 RemovedBody843_252

def RemovedBody843_254 : StackLang.HolProg 64 :=
.seq RemovedBody843_242 RemovedBody843_253

def RemovedBody843_255 : StackLang.HolProg 64 :=
.seq RemovedBody843_241 RemovedBody843_254

def RemovedBody843_256 : StackLang.HolProg 64 :=
.seq RemovedBody843_240 RemovedBody843_255

def RemovedBody843_257 : StackLang.HolProg 64 :=
.seq RemovedBody843_239 RemovedBody843_256

def RemovedBody843_258 : StackLang.HolProg 64 :=
.seq RemovedBody843_238 RemovedBody843_257

def RemovedBody843_259 : StackLang.HolProg 64 :=
.seq RemovedBody843_237 RemovedBody843_258

def RemovedBody843_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody843_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_268 : StackLang.HolProg 64 :=
.seq RemovedBody843_266 RemovedBody843_267

def RemovedBody843_269 : StackLang.HolProg 64 :=
.seq RemovedBody843_265 RemovedBody843_268

def RemovedBody843_270 : StackLang.HolProg 64 :=
.seq RemovedBody843_264 RemovedBody843_269

def RemovedBody843_271 : StackLang.HolProg 64 :=
.seq RemovedBody843_263 RemovedBody843_270

def RemovedBody843_272 : StackLang.HolProg 64 :=
.seq RemovedBody843_262 RemovedBody843_271

def RemovedBody843_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_274 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody843_275 : StackLang.HolProg 64 :=
.seq RemovedBody843_273 RemovedBody843_274

def RemovedBody843_276 : StackLang.HolProg 64 :=
.call (some (RemovedBody843_272, 0, 843, 8)) (Sum.inl 68) (some (RemovedBody843_275, 843, 9))

def RemovedBody843_277 : StackLang.HolProg 64 :=
.seq RemovedBody843_261 RemovedBody843_276

def RemovedBody843_278 : StackLang.HolProg 64 :=
.seq RemovedBody843_260 RemovedBody843_277

def RemovedBody843_279 : StackLang.HolProg 64 :=
.seq RemovedBody843_259 RemovedBody843_278

def RemovedBody843_280 : StackLang.HolProg 64 :=
.seq RemovedBody843_230 RemovedBody843_279

def RemovedBody843_281 : StackLang.HolProg 64 :=
.seq RemovedBody843_227 RemovedBody843_280

def RemovedBody843_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody843_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody843_286 : StackLang.HolProg 64 :=
.seq RemovedBody843_284 RemovedBody843_285

def RemovedBody843_287 : StackLang.HolProg 64 :=
.seq RemovedBody843_283 RemovedBody843_286

def RemovedBody843_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4219#64)

def RemovedBody843_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_291 : StackLang.HolProg 64 :=
.seq RemovedBody843_289 RemovedBody843_290

def RemovedBody843_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody843_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody843_295 : StackLang.HolProg 64 :=
.seq RemovedBody843_293 RemovedBody843_294

def RemovedBody843_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_297 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody843_295 RemovedBody843_296

def RemovedBody843_298 : StackLang.HolProg 64 :=
.seq RemovedBody843_292 RemovedBody843_297

def RemovedBody843_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody843_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 11

def RemovedBody843_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody843_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody843_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody843_308 : StackLang.HolProg 64 :=
.seq RemovedBody843_306 RemovedBody843_307

def RemovedBody843_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody843_310 : StackLang.HolProg 64 :=
.seq RemovedBody843_308 RemovedBody843_309

def RemovedBody843_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_312 : StackLang.HolProg 64 :=
.seq RemovedBody843_310 RemovedBody843_311

def RemovedBody843_313 : StackLang.HolProg 64 :=
.seq RemovedBody843_305 RemovedBody843_312

def RemovedBody843_314 : StackLang.HolProg 64 :=
.seq RemovedBody843_304 RemovedBody843_313

def RemovedBody843_315 : StackLang.HolProg 64 :=
.seq RemovedBody843_303 RemovedBody843_314

def RemovedBody843_316 : StackLang.HolProg 64 :=
.seq RemovedBody843_302 RemovedBody843_315

def RemovedBody843_317 : StackLang.HolProg 64 :=
.seq RemovedBody843_301 RemovedBody843_316

def RemovedBody843_318 : StackLang.HolProg 64 :=
.seq RemovedBody843_300 RemovedBody843_317

def RemovedBody843_319 : StackLang.HolProg 64 :=
.seq RemovedBody843_299 RemovedBody843_318

def RemovedBody843_320 : StackLang.HolProg 64 :=
.seq RemovedBody843_298 RemovedBody843_319

def RemovedBody843_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody843_329 : StackLang.HolProg 64 :=
.seq RemovedBody843_327 RemovedBody843_328

def RemovedBody843_330 : StackLang.HolProg 64 :=
.seq RemovedBody843_326 RemovedBody843_329

def RemovedBody843_331 : StackLang.HolProg 64 :=
.seq RemovedBody843_325 RemovedBody843_330

def RemovedBody843_332 : StackLang.HolProg 64 :=
.seq RemovedBody843_324 RemovedBody843_331

def RemovedBody843_333 : StackLang.HolProg 64 :=
.seq RemovedBody843_323 RemovedBody843_332

def RemovedBody843_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody843_336 : StackLang.HolProg 64 :=
.seq RemovedBody843_334 RemovedBody843_335

def RemovedBody843_337 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody843_338 : StackLang.HolProg 64 :=
.seq RemovedBody843_336 RemovedBody843_337

def RemovedBody843_339 : StackLang.HolProg 64 :=
.call (some (RemovedBody843_333, 0, 843, 10)) (Sum.inl 839) (some (RemovedBody843_338, 843, 11))

def RemovedBody843_340 : StackLang.HolProg 64 :=
.seq RemovedBody843_322 RemovedBody843_339

def RemovedBody843_341 : StackLang.HolProg 64 :=
.seq RemovedBody843_321 RemovedBody843_340

def RemovedBody843_342 : StackLang.HolProg 64 :=
.seq RemovedBody843_320 RemovedBody843_341

def RemovedBody843_343 : StackLang.HolProg 64 :=
.seq RemovedBody843_291 RemovedBody843_342

def RemovedBody843_344 : StackLang.HolProg 64 :=
.seq RemovedBody843_288 RemovedBody843_343

def RemovedBody843_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody843_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 256#64)

def RemovedBody843_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4220#64)

def RemovedBody843_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_352 : StackLang.HolProg 64 :=
.seq RemovedBody843_350 RemovedBody843_351

def RemovedBody843_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody843_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody843_356 : StackLang.HolProg 64 :=
.seq RemovedBody843_354 RemovedBody843_355

def RemovedBody843_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_358 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody843_356 RemovedBody843_357

def RemovedBody843_359 : StackLang.HolProg 64 :=
.seq RemovedBody843_353 RemovedBody843_358

def RemovedBody843_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody843_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 13

def RemovedBody843_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody843_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody843_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody843_369 : StackLang.HolProg 64 :=
.seq RemovedBody843_367 RemovedBody843_368

def RemovedBody843_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody843_371 : StackLang.HolProg 64 :=
.seq RemovedBody843_369 RemovedBody843_370

def RemovedBody843_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_373 : StackLang.HolProg 64 :=
.seq RemovedBody843_371 RemovedBody843_372

def RemovedBody843_374 : StackLang.HolProg 64 :=
.seq RemovedBody843_366 RemovedBody843_373

def RemovedBody843_375 : StackLang.HolProg 64 :=
.seq RemovedBody843_365 RemovedBody843_374

def RemovedBody843_376 : StackLang.HolProg 64 :=
.seq RemovedBody843_364 RemovedBody843_375

def RemovedBody843_377 : StackLang.HolProg 64 :=
.seq RemovedBody843_363 RemovedBody843_376

def RemovedBody843_378 : StackLang.HolProg 64 :=
.seq RemovedBody843_362 RemovedBody843_377

def RemovedBody843_379 : StackLang.HolProg 64 :=
.seq RemovedBody843_361 RemovedBody843_378

def RemovedBody843_380 : StackLang.HolProg 64 :=
.seq RemovedBody843_360 RemovedBody843_379

def RemovedBody843_381 : StackLang.HolProg 64 :=
.seq RemovedBody843_359 RemovedBody843_380

def RemovedBody843_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody843_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody843_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_392 : StackLang.HolProg 64 :=
.seq RemovedBody843_390 RemovedBody843_391

def RemovedBody843_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody843_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody843_395 : StackLang.HolProg 64 :=
.seq RemovedBody843_393 RemovedBody843_394

def RemovedBody843_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_397 : StackLang.HolProg 64 :=
.seq RemovedBody843_395 RemovedBody843_396

def RemovedBody843_398 : StackLang.HolProg 64 :=
.seq RemovedBody843_392 RemovedBody843_397

def RemovedBody843_399 : StackLang.HolProg 64 :=
.seq RemovedBody843_389 RemovedBody843_398

def RemovedBody843_400 : StackLang.HolProg 64 :=
.seq RemovedBody843_388 RemovedBody843_399

def RemovedBody843_401 : StackLang.HolProg 64 :=
.seq RemovedBody843_387 RemovedBody843_400

def RemovedBody843_402 : StackLang.HolProg 64 :=
.seq RemovedBody843_386 RemovedBody843_401

def RemovedBody843_403 : StackLang.HolProg 64 :=
.seq RemovedBody843_385 RemovedBody843_402

def RemovedBody843_404 : StackLang.HolProg 64 :=
.seq RemovedBody843_384 RemovedBody843_403

def RemovedBody843_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody843_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_408 : StackLang.HolProg 64 :=
.seq RemovedBody843_406 RemovedBody843_407

def RemovedBody843_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody843_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody843_411 : StackLang.HolProg 64 :=
.seq RemovedBody843_409 RemovedBody843_410

def RemovedBody843_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_413 : StackLang.HolProg 64 :=
.seq RemovedBody843_411 RemovedBody843_412

def RemovedBody843_414 : StackLang.HolProg 64 :=
.seq RemovedBody843_408 RemovedBody843_413

def RemovedBody843_415 : StackLang.HolProg 64 :=
.seq RemovedBody843_405 RemovedBody843_414

def RemovedBody843_416 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody843_417 : StackLang.HolProg 64 :=
.seq RemovedBody843_415 RemovedBody843_416

def RemovedBody843_418 : StackLang.HolProg 64 :=
.call (some (RemovedBody843_404, 0, 843, 12)) (Sum.inl 176) (some (RemovedBody843_417, 843, 13))

def RemovedBody843_419 : StackLang.HolProg 64 :=
.seq RemovedBody843_383 RemovedBody843_418

def RemovedBody843_420 : StackLang.HolProg 64 :=
.seq RemovedBody843_382 RemovedBody843_419

def RemovedBody843_421 : StackLang.HolProg 64 :=
.seq RemovedBody843_381 RemovedBody843_420

def RemovedBody843_422 : StackLang.HolProg 64 :=
.seq RemovedBody843_352 RemovedBody843_421

def RemovedBody843_423 : StackLang.HolProg 64 :=
.seq RemovedBody843_349 RemovedBody843_422

def RemovedBody843_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody843_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody843_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4221#64)

def RemovedBody843_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_431 : StackLang.HolProg 64 :=
.seq RemovedBody843_429 RemovedBody843_430

def RemovedBody843_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody843_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody843_435 : StackLang.HolProg 64 :=
.seq RemovedBody843_433 RemovedBody843_434

def RemovedBody843_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_437 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody843_435 RemovedBody843_436

def RemovedBody843_438 : StackLang.HolProg 64 :=
.seq RemovedBody843_432 RemovedBody843_437

def RemovedBody843_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody843_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 15

def RemovedBody843_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody843_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody843_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody843_448 : StackLang.HolProg 64 :=
.seq RemovedBody843_446 RemovedBody843_447

def RemovedBody843_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody843_450 : StackLang.HolProg 64 :=
.seq RemovedBody843_448 RemovedBody843_449

def RemovedBody843_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_452 : StackLang.HolProg 64 :=
.seq RemovedBody843_450 RemovedBody843_451

def RemovedBody843_453 : StackLang.HolProg 64 :=
.seq RemovedBody843_445 RemovedBody843_452

def RemovedBody843_454 : StackLang.HolProg 64 :=
.seq RemovedBody843_444 RemovedBody843_453

def RemovedBody843_455 : StackLang.HolProg 64 :=
.seq RemovedBody843_443 RemovedBody843_454

def RemovedBody843_456 : StackLang.HolProg 64 :=
.seq RemovedBody843_442 RemovedBody843_455

def RemovedBody843_457 : StackLang.HolProg 64 :=
.seq RemovedBody843_441 RemovedBody843_456

def RemovedBody843_458 : StackLang.HolProg 64 :=
.seq RemovedBody843_440 RemovedBody843_457

def RemovedBody843_459 : StackLang.HolProg 64 :=
.seq RemovedBody843_439 RemovedBody843_458

def RemovedBody843_460 : StackLang.HolProg 64 :=
.seq RemovedBody843_438 RemovedBody843_459

def RemovedBody843_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody843_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody843_470 : StackLang.HolProg 64 :=
.seq RemovedBody843_468 RemovedBody843_469

def RemovedBody843_471 : StackLang.HolProg 64 :=
.seq RemovedBody843_467 RemovedBody843_470

def RemovedBody843_472 : StackLang.HolProg 64 :=
.seq RemovedBody843_466 RemovedBody843_471

def RemovedBody843_473 : StackLang.HolProg 64 :=
.seq RemovedBody843_465 RemovedBody843_472

def RemovedBody843_474 : StackLang.HolProg 64 :=
.seq RemovedBody843_464 RemovedBody843_473

def RemovedBody843_475 : StackLang.HolProg 64 :=
.seq RemovedBody843_463 RemovedBody843_474

def RemovedBody843_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody843_478 : StackLang.HolProg 64 :=
.seq RemovedBody843_476 RemovedBody843_477

def RemovedBody843_479 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody843_480 : StackLang.HolProg 64 :=
.seq RemovedBody843_478 RemovedBody843_479

def RemovedBody843_481 : StackLang.HolProg 64 :=
.call (some (RemovedBody843_475, 0, 843, 14)) (Sum.inl 842) (some (RemovedBody843_480, 843, 15))

def RemovedBody843_482 : StackLang.HolProg 64 :=
.seq RemovedBody843_462 RemovedBody843_481

def RemovedBody843_483 : StackLang.HolProg 64 :=
.seq RemovedBody843_461 RemovedBody843_482

def RemovedBody843_484 : StackLang.HolProg 64 :=
.seq RemovedBody843_460 RemovedBody843_483

def RemovedBody843_485 : StackLang.HolProg 64 :=
.seq RemovedBody843_431 RemovedBody843_484

def RemovedBody843_486 : StackLang.HolProg 64 :=
.seq RemovedBody843_428 RemovedBody843_485

def RemovedBody843_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody843_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody843_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_492 : StackLang.HolProg 64 :=
.seq RemovedBody843_490 RemovedBody843_491

def RemovedBody843_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4222#64)

def RemovedBody843_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_496 : StackLang.HolProg 64 :=
.seq RemovedBody843_494 RemovedBody843_495

def RemovedBody843_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody843_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody843_500 : StackLang.HolProg 64 :=
.seq RemovedBody843_498 RemovedBody843_499

def RemovedBody843_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_502 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody843_500 RemovedBody843_501

def RemovedBody843_503 : StackLang.HolProg 64 :=
.seq RemovedBody843_497 RemovedBody843_502

def RemovedBody843_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody843_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody843_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 843 17

def RemovedBody843_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody843_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody843_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody843_513 : StackLang.HolProg 64 :=
.seq RemovedBody843_511 RemovedBody843_512

def RemovedBody843_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody843_515 : StackLang.HolProg 64 :=
.seq RemovedBody843_513 RemovedBody843_514

def RemovedBody843_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_517 : StackLang.HolProg 64 :=
.seq RemovedBody843_515 RemovedBody843_516

def RemovedBody843_518 : StackLang.HolProg 64 :=
.seq RemovedBody843_510 RemovedBody843_517

def RemovedBody843_519 : StackLang.HolProg 64 :=
.seq RemovedBody843_509 RemovedBody843_518

def RemovedBody843_520 : StackLang.HolProg 64 :=
.seq RemovedBody843_508 RemovedBody843_519

def RemovedBody843_521 : StackLang.HolProg 64 :=
.seq RemovedBody843_507 RemovedBody843_520

def RemovedBody843_522 : StackLang.HolProg 64 :=
.seq RemovedBody843_506 RemovedBody843_521

def RemovedBody843_523 : StackLang.HolProg 64 :=
.seq RemovedBody843_505 RemovedBody843_522

def RemovedBody843_524 : StackLang.HolProg 64 :=
.seq RemovedBody843_504 RemovedBody843_523

def RemovedBody843_525 : StackLang.HolProg 64 :=
.seq RemovedBody843_503 RemovedBody843_524

def RemovedBody843_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody843_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody843_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody843_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody843_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody843_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody843_536 : StackLang.HolProg 64 :=
.seq RemovedBody843_534 RemovedBody843_535

def RemovedBody843_537 : StackLang.HolProg 64 :=
.seq RemovedBody843_533 RemovedBody843_536

def RemovedBody843_538 : StackLang.HolProg 64 :=
.seq RemovedBody843_532 RemovedBody843_537

def RemovedBody843_539 : StackLang.HolProg 64 :=
.seq RemovedBody843_531 RemovedBody843_538

def RemovedBody843_540 : StackLang.HolProg 64 :=
.seq RemovedBody843_530 RemovedBody843_539

def RemovedBody843_541 : StackLang.HolProg 64 :=
.seq RemovedBody843_529 RemovedBody843_540

def RemovedBody843_542 : StackLang.HolProg 64 :=
.seq RemovedBody843_528 RemovedBody843_541

def RemovedBody843_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody843_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody843_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody843_546 : StackLang.HolProg 64 :=
.seq RemovedBody843_544 RemovedBody843_545

def RemovedBody843_547 : StackLang.HolProg 64 :=
.seq RemovedBody843_543 RemovedBody843_546

def RemovedBody843_548 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody843_549 : StackLang.HolProg 64 :=
.seq RemovedBody843_547 RemovedBody843_548

def RemovedBody843_550 : StackLang.HolProg 64 :=
.call (some (RemovedBody843_542, 0, 843, 16)) (Sum.inl 840) (some (RemovedBody843_549, 843, 17))

def RemovedBody843_551 : StackLang.HolProg 64 :=
.seq RemovedBody843_527 RemovedBody843_550

def RemovedBody843_552 : StackLang.HolProg 64 :=
.seq RemovedBody843_526 RemovedBody843_551

def RemovedBody843_553 : StackLang.HolProg 64 :=
.seq RemovedBody843_525 RemovedBody843_552

def RemovedBody843_554 : StackLang.HolProg 64 :=
.seq RemovedBody843_496 RemovedBody843_553

def RemovedBody843_555 : StackLang.HolProg 64 :=
.seq RemovedBody843_493 RemovedBody843_554

def RemovedBody843_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody843_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody843_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody843_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody843_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody843_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody843_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody843_569 : StackLang.HolProg 64 :=
.seq RemovedBody843_567 RemovedBody843_568

def RemovedBody843_570 : StackLang.HolProg 64 :=
.seq RemovedBody843_566 RemovedBody843_569

def RemovedBody843_571 : StackLang.HolProg 64 :=
.seq RemovedBody843_565 RemovedBody843_570

def RemovedBody843_572 : StackLang.HolProg 64 :=
.seq RemovedBody843_564 RemovedBody843_571

def RemovedBody843_573 : StackLang.HolProg 64 :=
.seq RemovedBody843_563 RemovedBody843_572

def RemovedBody843_574 : StackLang.HolProg 64 :=
.seq RemovedBody843_562 RemovedBody843_573

def RemovedBody843_575 : StackLang.HolProg 64 :=
.seq RemovedBody843_561 RemovedBody843_574

def RemovedBody843_576 : StackLang.HolProg 64 :=
.seq RemovedBody843_560 RemovedBody843_575

def RemovedBody843_577 : StackLang.HolProg 64 :=
.seq RemovedBody843_559 RemovedBody843_576

def RemovedBody843_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody843_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody843_580 : StackLang.HolProg 64 :=
.seq RemovedBody843_578 RemovedBody843_579

def RemovedBody843_581 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody843_577 RemovedBody843_580

def RemovedBody843_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody843_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody843_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody843_586 : StackLang.HolProg 64 :=
.seq RemovedBody843_584 RemovedBody843_585

def RemovedBody843_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody843_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody843_589 : StackLang.HolProg 64 :=
.seq RemovedBody843_587 RemovedBody843_588

def RemovedBody843_590 : StackLang.HolProg 64 :=
.seq RemovedBody843_586 RemovedBody843_589

def RemovedBody843_591 : StackLang.HolProg 64 :=
.seq RemovedBody843_583 RemovedBody843_590

def RemovedBody843_592 : StackLang.HolProg 64 :=
.seq RemovedBody843_582 RemovedBody843_591

def RemovedBody843_593 : StackLang.HolProg 64 :=
.seq RemovedBody843_581 RemovedBody843_592

def RemovedBody843_594 : StackLang.HolProg 64 :=
.seq RemovedBody843_558 RemovedBody843_593

def RemovedBody843_595 : StackLang.HolProg 64 :=
.seq RemovedBody843_557 RemovedBody843_594

def RemovedBody843_596 : StackLang.HolProg 64 :=
.seq RemovedBody843_556 RemovedBody843_595

def RemovedBody843_597 : StackLang.HolProg 64 :=
.seq RemovedBody843_555 RemovedBody843_596

def RemovedBody843_598 : StackLang.HolProg 64 :=
.seq RemovedBody843_492 RemovedBody843_597

def RemovedBody843_599 : StackLang.HolProg 64 :=
.seq RemovedBody843_489 RemovedBody843_598

def RemovedBody843_600 : StackLang.HolProg 64 :=
.seq RemovedBody843_488 RemovedBody843_599

def RemovedBody843_601 : StackLang.HolProg 64 :=
.seq RemovedBody843_487 RemovedBody843_600

def RemovedBody843_602 : StackLang.HolProg 64 :=
.seq RemovedBody843_486 RemovedBody843_601

def RemovedBody843_603 : StackLang.HolProg 64 :=
.seq RemovedBody843_427 RemovedBody843_602

def RemovedBody843_604 : StackLang.HolProg 64 :=
.seq RemovedBody843_426 RemovedBody843_603

def RemovedBody843_605 : StackLang.HolProg 64 :=
.seq RemovedBody843_425 RemovedBody843_604

def RemovedBody843_606 : StackLang.HolProg 64 :=
.seq RemovedBody843_424 RemovedBody843_605

def RemovedBody843_607 : StackLang.HolProg 64 :=
.seq RemovedBody843_423 RemovedBody843_606

def RemovedBody843_608 : StackLang.HolProg 64 :=
.seq RemovedBody843_348 RemovedBody843_607

def RemovedBody843_609 : StackLang.HolProg 64 :=
.seq RemovedBody843_347 RemovedBody843_608

def RemovedBody843_610 : StackLang.HolProg 64 :=
.seq RemovedBody843_346 RemovedBody843_609

def RemovedBody843_611 : StackLang.HolProg 64 :=
.seq RemovedBody843_345 RemovedBody843_610

def RemovedBody843_612 : StackLang.HolProg 64 :=
.seq RemovedBody843_344 RemovedBody843_611

def RemovedBody843_613 : StackLang.HolProg 64 :=
.seq RemovedBody843_287 RemovedBody843_612

def RemovedBody843_614 : StackLang.HolProg 64 :=
.seq RemovedBody843_282 RemovedBody843_613

def RemovedBody843_615 : StackLang.HolProg 64 :=
.seq RemovedBody843_281 RemovedBody843_614

def RemovedBody843_616 : StackLang.HolProg 64 :=
.seq RemovedBody843_226 RemovedBody843_615

def RemovedBody843_617 : StackLang.HolProg 64 :=
.seq RemovedBody843_225 RemovedBody843_616

def RemovedBody843_618 : StackLang.HolProg 64 :=
.seq RemovedBody843_224 RemovedBody843_617

def RemovedBody843_619 : StackLang.HolProg 64 :=
.seq RemovedBody843_223 RemovedBody843_618

def RemovedBody843_620 : StackLang.HolProg 64 :=
.seq RemovedBody843_222 RemovedBody843_619

def RemovedBody843_621 : StackLang.HolProg 64 :=
.seq RemovedBody843_221 RemovedBody843_620

def RemovedBody843_622 : StackLang.HolProg 64 :=
.seq RemovedBody843_220 RemovedBody843_621

def RemovedBody843_623 : StackLang.HolProg 64 :=
.seq RemovedBody843_165 RemovedBody843_622

def RemovedBody843_624 : StackLang.HolProg 64 :=
.seq RemovedBody843_162 RemovedBody843_623

def RemovedBody843_625 : StackLang.HolProg 64 :=
.seq RemovedBody843_161 RemovedBody843_624

def RemovedBody843_626 : StackLang.HolProg 64 :=
.seq RemovedBody843_160 RemovedBody843_625

def RemovedBody843_627 : StackLang.HolProg 64 :=
.seq RemovedBody843_159 RemovedBody843_626

def RemovedBody843_628 : StackLang.HolProg 64 :=
.seq RemovedBody843_140 RemovedBody843_627

def RemovedBody843_629 : StackLang.HolProg 64 :=
.seq RemovedBody843_139 RemovedBody843_628

def RemovedBody843_630 : StackLang.HolProg 64 :=
.seq RemovedBody843_138 RemovedBody843_629

def RemovedBody843_631 : StackLang.HolProg 64 :=
.seq RemovedBody843_137 RemovedBody843_630

def RemovedBody843_632 : StackLang.HolProg 64 :=
.seq RemovedBody843_136 RemovedBody843_631

def RemovedBody843_633 : StackLang.HolProg 64 :=
.seq RemovedBody843_135 RemovedBody843_632

def RemovedBody843_634 : StackLang.HolProg 64 :=
.seq RemovedBody843_134 RemovedBody843_633

def RemovedBody843_635 : StackLang.HolProg 64 :=
.seq RemovedBody843_133 RemovedBody843_634

def RemovedBody843_636 : StackLang.HolProg 64 :=
.seq RemovedBody843_74 RemovedBody843_635

def RemovedBody843_637 : StackLang.HolProg 64 :=
.seq RemovedBody843_73 RemovedBody843_636

def RemovedBody843_638 : StackLang.HolProg 64 :=
.seq RemovedBody843_72 RemovedBody843_637

def RemovedBody843_639 : StackLang.HolProg 64 :=
.seq RemovedBody843_71 RemovedBody843_638

def RemovedBody843_640 : StackLang.HolProg 64 :=
.seq RemovedBody843_70 RemovedBody843_639

def RemovedBody843_641 : StackLang.HolProg 64 :=
.seq RemovedBody843_17 RemovedBody843_640

def RemovedBody843_642 : StackLang.HolProg 64 :=
.seq RemovedBody843_6 RemovedBody843_641

def Removed843 : Nat × StackLang.HolProg 64 := (843, RemovedBody843_642)
theorem Removed843_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc843 = Removed843 := by
  kernel_rfl
#print axioms Removed843_eq
end InitECandidate.Proofs.BackendStages
