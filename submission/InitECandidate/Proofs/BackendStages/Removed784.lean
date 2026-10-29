import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc784
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody784_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody784_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody784_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody784_3 : StackLang.HolProg 64 :=
.seq RemovedBody784_1 RemovedBody784_2

def RemovedBody784_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody784_3 RemovedBody784_4

def RemovedBody784_6 : StackLang.HolProg 64 :=
.seq RemovedBody784_0 RemovedBody784_5

def RemovedBody784_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody784_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody784_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody784_12 : StackLang.HolProg 64 :=
.seq RemovedBody784_10 RemovedBody784_11

def RemovedBody784_13 : StackLang.HolProg 64 :=
.seq RemovedBody784_9 RemovedBody784_12

def RemovedBody784_14 : StackLang.HolProg 64 :=
.seq RemovedBody784_8 RemovedBody784_13

def RemovedBody784_15 : StackLang.HolProg 64 :=
.seq RemovedBody784_7 RemovedBody784_14

def RemovedBody784_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3618#64)

def RemovedBody784_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_19 : StackLang.HolProg 64 :=
.seq RemovedBody784_17 RemovedBody784_18

def RemovedBody784_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody784_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody784_23 : StackLang.HolProg 64 :=
.seq RemovedBody784_21 RemovedBody784_22

def RemovedBody784_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody784_23 RemovedBody784_24

def RemovedBody784_26 : StackLang.HolProg 64 :=
.seq RemovedBody784_20 RemovedBody784_25

def RemovedBody784_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody784_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 3

def RemovedBody784_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody784_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody784_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody784_36 : StackLang.HolProg 64 :=
.seq RemovedBody784_34 RemovedBody784_35

def RemovedBody784_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody784_38 : StackLang.HolProg 64 :=
.seq RemovedBody784_36 RemovedBody784_37

def RemovedBody784_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_40 : StackLang.HolProg 64 :=
.seq RemovedBody784_38 RemovedBody784_39

def RemovedBody784_41 : StackLang.HolProg 64 :=
.seq RemovedBody784_33 RemovedBody784_40

def RemovedBody784_42 : StackLang.HolProg 64 :=
.seq RemovedBody784_32 RemovedBody784_41

def RemovedBody784_43 : StackLang.HolProg 64 :=
.seq RemovedBody784_31 RemovedBody784_42

def RemovedBody784_44 : StackLang.HolProg 64 :=
.seq RemovedBody784_30 RemovedBody784_43

def RemovedBody784_45 : StackLang.HolProg 64 :=
.seq RemovedBody784_29 RemovedBody784_44

def RemovedBody784_46 : StackLang.HolProg 64 :=
.seq RemovedBody784_28 RemovedBody784_45

def RemovedBody784_47 : StackLang.HolProg 64 :=
.seq RemovedBody784_27 RemovedBody784_46

def RemovedBody784_48 : StackLang.HolProg 64 :=
.seq RemovedBody784_26 RemovedBody784_47

def RemovedBody784_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody784_56 : StackLang.HolProg 64 :=
.seq RemovedBody784_54 RemovedBody784_55

def RemovedBody784_57 : StackLang.HolProg 64 :=
.seq RemovedBody784_53 RemovedBody784_56

def RemovedBody784_58 : StackLang.HolProg 64 :=
.seq RemovedBody784_52 RemovedBody784_57

def RemovedBody784_59 : StackLang.HolProg 64 :=
.seq RemovedBody784_51 RemovedBody784_58

def RemovedBody784_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody784_62 : StackLang.HolProg 64 :=
.seq RemovedBody784_60 RemovedBody784_61

def RemovedBody784_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody784_59, 0, 784, 2)) (Sum.inl 69) (some (RemovedBody784_62, 784, 3))

def RemovedBody784_64 : StackLang.HolProg 64 :=
.seq RemovedBody784_50 RemovedBody784_63

def RemovedBody784_65 : StackLang.HolProg 64 :=
.seq RemovedBody784_49 RemovedBody784_64

def RemovedBody784_66 : StackLang.HolProg 64 :=
.seq RemovedBody784_48 RemovedBody784_65

def RemovedBody784_67 : StackLang.HolProg 64 :=
.seq RemovedBody784_19 RemovedBody784_66

def RemovedBody784_68 : StackLang.HolProg 64 :=
.seq RemovedBody784_16 RemovedBody784_67

def RemovedBody784_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def RemovedBody784_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3619#64)

def RemovedBody784_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_75 : StackLang.HolProg 64 :=
.seq RemovedBody784_73 RemovedBody784_74

def RemovedBody784_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody784_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody784_79 : StackLang.HolProg 64 :=
.seq RemovedBody784_77 RemovedBody784_78

def RemovedBody784_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody784_79 RemovedBody784_80

def RemovedBody784_82 : StackLang.HolProg 64 :=
.seq RemovedBody784_76 RemovedBody784_81

def RemovedBody784_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody784_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 5

def RemovedBody784_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody784_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody784_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody784_92 : StackLang.HolProg 64 :=
.seq RemovedBody784_90 RemovedBody784_91

def RemovedBody784_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody784_94 : StackLang.HolProg 64 :=
.seq RemovedBody784_92 RemovedBody784_93

def RemovedBody784_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_96 : StackLang.HolProg 64 :=
.seq RemovedBody784_94 RemovedBody784_95

def RemovedBody784_97 : StackLang.HolProg 64 :=
.seq RemovedBody784_89 RemovedBody784_96

def RemovedBody784_98 : StackLang.HolProg 64 :=
.seq RemovedBody784_88 RemovedBody784_97

def RemovedBody784_99 : StackLang.HolProg 64 :=
.seq RemovedBody784_87 RemovedBody784_98

def RemovedBody784_100 : StackLang.HolProg 64 :=
.seq RemovedBody784_86 RemovedBody784_99

def RemovedBody784_101 : StackLang.HolProg 64 :=
.seq RemovedBody784_85 RemovedBody784_100

def RemovedBody784_102 : StackLang.HolProg 64 :=
.seq RemovedBody784_84 RemovedBody784_101

def RemovedBody784_103 : StackLang.HolProg 64 :=
.seq RemovedBody784_83 RemovedBody784_102

def RemovedBody784_104 : StackLang.HolProg 64 :=
.seq RemovedBody784_82 RemovedBody784_103

def RemovedBody784_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody784_112 : StackLang.HolProg 64 :=
.seq RemovedBody784_110 RemovedBody784_111

def RemovedBody784_113 : StackLang.HolProg 64 :=
.seq RemovedBody784_109 RemovedBody784_112

def RemovedBody784_114 : StackLang.HolProg 64 :=
.seq RemovedBody784_108 RemovedBody784_113

def RemovedBody784_115 : StackLang.HolProg 64 :=
.seq RemovedBody784_107 RemovedBody784_114

def RemovedBody784_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody784_118 : StackLang.HolProg 64 :=
.seq RemovedBody784_116 RemovedBody784_117

def RemovedBody784_119 : StackLang.HolProg 64 :=
.call (some (RemovedBody784_115, 0, 784, 4)) (Sum.inl 68) (some (RemovedBody784_118, 784, 5))

def RemovedBody784_120 : StackLang.HolProg 64 :=
.seq RemovedBody784_106 RemovedBody784_119

def RemovedBody784_121 : StackLang.HolProg 64 :=
.seq RemovedBody784_105 RemovedBody784_120

def RemovedBody784_122 : StackLang.HolProg 64 :=
.seq RemovedBody784_104 RemovedBody784_121

def RemovedBody784_123 : StackLang.HolProg 64 :=
.seq RemovedBody784_75 RemovedBody784_122

def RemovedBody784_124 : StackLang.HolProg 64 :=
.seq RemovedBody784_72 RemovedBody784_123

def RemovedBody784_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody784_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_128 : StackLang.HolProg 64 :=
.seq RemovedBody784_126 RemovedBody784_127

def RemovedBody784_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3620#64)

def RemovedBody784_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_132 : StackLang.HolProg 64 :=
.seq RemovedBody784_130 RemovedBody784_131

def RemovedBody784_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody784_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody784_136 : StackLang.HolProg 64 :=
.seq RemovedBody784_134 RemovedBody784_135

def RemovedBody784_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody784_136 RemovedBody784_137

def RemovedBody784_139 : StackLang.HolProg 64 :=
.seq RemovedBody784_133 RemovedBody784_138

def RemovedBody784_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody784_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 7

def RemovedBody784_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody784_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody784_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody784_149 : StackLang.HolProg 64 :=
.seq RemovedBody784_147 RemovedBody784_148

def RemovedBody784_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody784_151 : StackLang.HolProg 64 :=
.seq RemovedBody784_149 RemovedBody784_150

def RemovedBody784_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_153 : StackLang.HolProg 64 :=
.seq RemovedBody784_151 RemovedBody784_152

def RemovedBody784_154 : StackLang.HolProg 64 :=
.seq RemovedBody784_146 RemovedBody784_153

def RemovedBody784_155 : StackLang.HolProg 64 :=
.seq RemovedBody784_145 RemovedBody784_154

def RemovedBody784_156 : StackLang.HolProg 64 :=
.seq RemovedBody784_144 RemovedBody784_155

def RemovedBody784_157 : StackLang.HolProg 64 :=
.seq RemovedBody784_143 RemovedBody784_156

def RemovedBody784_158 : StackLang.HolProg 64 :=
.seq RemovedBody784_142 RemovedBody784_157

def RemovedBody784_159 : StackLang.HolProg 64 :=
.seq RemovedBody784_141 RemovedBody784_158

def RemovedBody784_160 : StackLang.HolProg 64 :=
.seq RemovedBody784_140 RemovedBody784_159

def RemovedBody784_161 : StackLang.HolProg 64 :=
.seq RemovedBody784_139 RemovedBody784_160

def RemovedBody784_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_172 : StackLang.HolProg 64 :=
.seq RemovedBody784_170 RemovedBody784_171

def RemovedBody784_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_175 : StackLang.HolProg 64 :=
.seq RemovedBody784_173 RemovedBody784_174

def RemovedBody784_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody784_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_178 : StackLang.HolProg 64 :=
.seq RemovedBody784_176 RemovedBody784_177

def RemovedBody784_179 : StackLang.HolProg 64 :=
.seq RemovedBody784_175 RemovedBody784_178

def RemovedBody784_180 : StackLang.HolProg 64 :=
.seq RemovedBody784_172 RemovedBody784_179

def RemovedBody784_181 : StackLang.HolProg 64 :=
.seq RemovedBody784_169 RemovedBody784_180

def RemovedBody784_182 : StackLang.HolProg 64 :=
.seq RemovedBody784_168 RemovedBody784_181

def RemovedBody784_183 : StackLang.HolProg 64 :=
.seq RemovedBody784_167 RemovedBody784_182

def RemovedBody784_184 : StackLang.HolProg 64 :=
.seq RemovedBody784_166 RemovedBody784_183

def RemovedBody784_185 : StackLang.HolProg 64 :=
.seq RemovedBody784_165 RemovedBody784_184

def RemovedBody784_186 : StackLang.HolProg 64 :=
.seq RemovedBody784_164 RemovedBody784_185

def RemovedBody784_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_191 : StackLang.HolProg 64 :=
.seq RemovedBody784_189 RemovedBody784_190

def RemovedBody784_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_194 : StackLang.HolProg 64 :=
.seq RemovedBody784_192 RemovedBody784_193

def RemovedBody784_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody784_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_197 : StackLang.HolProg 64 :=
.seq RemovedBody784_195 RemovedBody784_196

def RemovedBody784_198 : StackLang.HolProg 64 :=
.seq RemovedBody784_194 RemovedBody784_197

def RemovedBody784_199 : StackLang.HolProg 64 :=
.seq RemovedBody784_191 RemovedBody784_198

def RemovedBody784_200 : StackLang.HolProg 64 :=
.seq RemovedBody784_188 RemovedBody784_199

def RemovedBody784_201 : StackLang.HolProg 64 :=
.seq RemovedBody784_187 RemovedBody784_200

def RemovedBody784_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody784_203 : StackLang.HolProg 64 :=
.seq RemovedBody784_201 RemovedBody784_202

def RemovedBody784_204 : StackLang.HolProg 64 :=
.call (some (RemovedBody784_186, 0, 784, 6)) (Sum.inl 778) (some (RemovedBody784_203, 784, 7))

def RemovedBody784_205 : StackLang.HolProg 64 :=
.seq RemovedBody784_163 RemovedBody784_204

def RemovedBody784_206 : StackLang.HolProg 64 :=
.seq RemovedBody784_162 RemovedBody784_205

def RemovedBody784_207 : StackLang.HolProg 64 :=
.seq RemovedBody784_161 RemovedBody784_206

def RemovedBody784_208 : StackLang.HolProg 64 :=
.seq RemovedBody784_132 RemovedBody784_207

def RemovedBody784_209 : StackLang.HolProg 64 :=
.seq RemovedBody784_129 RemovedBody784_208

def RemovedBody784_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody784_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody784_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody784_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody784_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody784_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody784_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody784_227 : StackLang.HolProg 64 :=
.seq RemovedBody784_225 RemovedBody784_226

def RemovedBody784_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_230 : StackLang.HolProg 64 :=
.seq RemovedBody784_228 RemovedBody784_229

def RemovedBody784_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_233 : StackLang.HolProg 64 :=
.seq RemovedBody784_231 RemovedBody784_232

def RemovedBody784_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_236 : StackLang.HolProg 64 :=
.seq RemovedBody784_234 RemovedBody784_235

def RemovedBody784_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody784_239 : StackLang.HolProg 64 :=
.seq RemovedBody784_237 RemovedBody784_238

def RemovedBody784_240 : StackLang.HolProg 64 :=
.seq RemovedBody784_236 RemovedBody784_239

def RemovedBody784_241 : StackLang.HolProg 64 :=
.seq RemovedBody784_233 RemovedBody784_240

def RemovedBody784_242 : StackLang.HolProg 64 :=
.seq RemovedBody784_230 RemovedBody784_241

def RemovedBody784_243 : StackLang.HolProg 64 :=
.seq RemovedBody784_227 RemovedBody784_242

def RemovedBody784_244 : StackLang.HolProg 64 :=
.seq RemovedBody784_224 RemovedBody784_243

def RemovedBody784_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3621#64)

def RemovedBody784_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_248 : StackLang.HolProg 64 :=
.seq RemovedBody784_246 RemovedBody784_247

def RemovedBody784_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody784_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody784_252 : StackLang.HolProg 64 :=
.seq RemovedBody784_250 RemovedBody784_251

def RemovedBody784_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_254 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody784_252 RemovedBody784_253

def RemovedBody784_255 : StackLang.HolProg 64 :=
.seq RemovedBody784_249 RemovedBody784_254

def RemovedBody784_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody784_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 9

def RemovedBody784_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody784_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody784_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody784_265 : StackLang.HolProg 64 :=
.seq RemovedBody784_263 RemovedBody784_264

def RemovedBody784_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody784_267 : StackLang.HolProg 64 :=
.seq RemovedBody784_265 RemovedBody784_266

def RemovedBody784_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_269 : StackLang.HolProg 64 :=
.seq RemovedBody784_267 RemovedBody784_268

def RemovedBody784_270 : StackLang.HolProg 64 :=
.seq RemovedBody784_262 RemovedBody784_269

def RemovedBody784_271 : StackLang.HolProg 64 :=
.seq RemovedBody784_261 RemovedBody784_270

def RemovedBody784_272 : StackLang.HolProg 64 :=
.seq RemovedBody784_260 RemovedBody784_271

def RemovedBody784_273 : StackLang.HolProg 64 :=
.seq RemovedBody784_259 RemovedBody784_272

def RemovedBody784_274 : StackLang.HolProg 64 :=
.seq RemovedBody784_258 RemovedBody784_273

def RemovedBody784_275 : StackLang.HolProg 64 :=
.seq RemovedBody784_257 RemovedBody784_274

def RemovedBody784_276 : StackLang.HolProg 64 :=
.seq RemovedBody784_256 RemovedBody784_275

def RemovedBody784_277 : StackLang.HolProg 64 :=
.seq RemovedBody784_255 RemovedBody784_276

def RemovedBody784_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody784_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody784_288 : StackLang.HolProg 64 :=
.seq RemovedBody784_286 RemovedBody784_287

def RemovedBody784_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody784_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody784_292 : StackLang.HolProg 64 :=
.seq RemovedBody784_290 RemovedBody784_291

def RemovedBody784_293 : StackLang.HolProg 64 :=
.seq RemovedBody784_289 RemovedBody784_292

def RemovedBody784_294 : StackLang.HolProg 64 :=
.seq RemovedBody784_288 RemovedBody784_293

def RemovedBody784_295 : StackLang.HolProg 64 :=
.seq RemovedBody784_285 RemovedBody784_294

def RemovedBody784_296 : StackLang.HolProg 64 :=
.seq RemovedBody784_284 RemovedBody784_295

def RemovedBody784_297 : StackLang.HolProg 64 :=
.seq RemovedBody784_283 RemovedBody784_296

def RemovedBody784_298 : StackLang.HolProg 64 :=
.seq RemovedBody784_282 RemovedBody784_297

def RemovedBody784_299 : StackLang.HolProg 64 :=
.seq RemovedBody784_281 RemovedBody784_298

def RemovedBody784_300 : StackLang.HolProg 64 :=
.seq RemovedBody784_280 RemovedBody784_299

def RemovedBody784_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody784_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody784_305 : StackLang.HolProg 64 :=
.seq RemovedBody784_303 RemovedBody784_304

def RemovedBody784_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody784_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody784_309 : StackLang.HolProg 64 :=
.seq RemovedBody784_307 RemovedBody784_308

def RemovedBody784_310 : StackLang.HolProg 64 :=
.seq RemovedBody784_306 RemovedBody784_309

def RemovedBody784_311 : StackLang.HolProg 64 :=
.seq RemovedBody784_305 RemovedBody784_310

def RemovedBody784_312 : StackLang.HolProg 64 :=
.seq RemovedBody784_302 RemovedBody784_311

def RemovedBody784_313 : StackLang.HolProg 64 :=
.seq RemovedBody784_301 RemovedBody784_312

def RemovedBody784_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody784_315 : StackLang.HolProg 64 :=
.seq RemovedBody784_313 RemovedBody784_314

def RemovedBody784_316 : StackLang.HolProg 64 :=
.call (some (RemovedBody784_300, 0, 784, 8)) (Sum.inl 782) (some (RemovedBody784_315, 784, 9))

def RemovedBody784_317 : StackLang.HolProg 64 :=
.seq RemovedBody784_279 RemovedBody784_316

def RemovedBody784_318 : StackLang.HolProg 64 :=
.seq RemovedBody784_278 RemovedBody784_317

def RemovedBody784_319 : StackLang.HolProg 64 :=
.seq RemovedBody784_277 RemovedBody784_318

def RemovedBody784_320 : StackLang.HolProg 64 :=
.seq RemovedBody784_248 RemovedBody784_319

def RemovedBody784_321 : StackLang.HolProg 64 :=
.seq RemovedBody784_245 RemovedBody784_320

def RemovedBody784_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_324 : StackLang.HolProg 64 :=
.seq RemovedBody784_322 RemovedBody784_323

def RemovedBody784_325 : StackLang.HolProg 64 :=
.seq RemovedBody784_321 RemovedBody784_324

def RemovedBody784_326 : StackLang.HolProg 64 :=
.seq RemovedBody784_244 RemovedBody784_325

def RemovedBody784_327 : StackLang.HolProg 64 :=
.seq RemovedBody784_223 RemovedBody784_326

def RemovedBody784_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_332 : StackLang.HolProg 64 :=
.seq RemovedBody784_330 RemovedBody784_331

def RemovedBody784_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_335 : StackLang.HolProg 64 :=
.seq RemovedBody784_333 RemovedBody784_334

def RemovedBody784_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody784_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody784_339 : StackLang.HolProg 64 :=
.seq RemovedBody784_337 RemovedBody784_338

def RemovedBody784_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_341 : StackLang.HolProg 64 :=
.seq RemovedBody784_339 RemovedBody784_340

def RemovedBody784_342 : StackLang.HolProg 64 :=
.seq RemovedBody784_336 RemovedBody784_341

def RemovedBody784_343 : StackLang.HolProg 64 :=
.seq RemovedBody784_335 RemovedBody784_342

def RemovedBody784_344 : StackLang.HolProg 64 :=
.seq RemovedBody784_332 RemovedBody784_343

def RemovedBody784_345 : StackLang.HolProg 64 :=
.seq RemovedBody784_329 RemovedBody784_344

def RemovedBody784_346 : StackLang.HolProg 64 :=
.seq RemovedBody784_328 RemovedBody784_345

def RemovedBody784_347 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody784_327 RemovedBody784_346

def RemovedBody784_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody784_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody784_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody784_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody784_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody784_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody784_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody784_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody784_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody784_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody784_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_368 : StackLang.HolProg 64 :=
.seq RemovedBody784_366 RemovedBody784_367

def RemovedBody784_369 : StackLang.HolProg 64 :=
.seq RemovedBody784_365 RemovedBody784_368

def RemovedBody784_370 : StackLang.HolProg 64 :=
.seq RemovedBody784_364 RemovedBody784_369

def RemovedBody784_371 : StackLang.HolProg 64 :=
.seq RemovedBody784_363 RemovedBody784_370

def RemovedBody784_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3622#64)

def RemovedBody784_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_375 : StackLang.HolProg 64 :=
.seq RemovedBody784_373 RemovedBody784_374

def RemovedBody784_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody784_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody784_379 : StackLang.HolProg 64 :=
.seq RemovedBody784_377 RemovedBody784_378

def RemovedBody784_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_381 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody784_379 RemovedBody784_380

def RemovedBody784_382 : StackLang.HolProg 64 :=
.seq RemovedBody784_376 RemovedBody784_381

def RemovedBody784_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody784_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 11

def RemovedBody784_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody784_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody784_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody784_392 : StackLang.HolProg 64 :=
.seq RemovedBody784_390 RemovedBody784_391

def RemovedBody784_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody784_394 : StackLang.HolProg 64 :=
.seq RemovedBody784_392 RemovedBody784_393

def RemovedBody784_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_396 : StackLang.HolProg 64 :=
.seq RemovedBody784_394 RemovedBody784_395

def RemovedBody784_397 : StackLang.HolProg 64 :=
.seq RemovedBody784_389 RemovedBody784_396

def RemovedBody784_398 : StackLang.HolProg 64 :=
.seq RemovedBody784_388 RemovedBody784_397

def RemovedBody784_399 : StackLang.HolProg 64 :=
.seq RemovedBody784_387 RemovedBody784_398

def RemovedBody784_400 : StackLang.HolProg 64 :=
.seq RemovedBody784_386 RemovedBody784_399

def RemovedBody784_401 : StackLang.HolProg 64 :=
.seq RemovedBody784_385 RemovedBody784_400

def RemovedBody784_402 : StackLang.HolProg 64 :=
.seq RemovedBody784_384 RemovedBody784_401

def RemovedBody784_403 : StackLang.HolProg 64 :=
.seq RemovedBody784_383 RemovedBody784_402

def RemovedBody784_404 : StackLang.HolProg 64 :=
.seq RemovedBody784_382 RemovedBody784_403

def RemovedBody784_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_416 : StackLang.HolProg 64 :=
.seq RemovedBody784_414 RemovedBody784_415

def RemovedBody784_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody784_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody784_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_420 : StackLang.HolProg 64 :=
.seq RemovedBody784_418 RemovedBody784_419

def RemovedBody784_421 : StackLang.HolProg 64 :=
.seq RemovedBody784_417 RemovedBody784_420

def RemovedBody784_422 : StackLang.HolProg 64 :=
.seq RemovedBody784_416 RemovedBody784_421

def RemovedBody784_423 : StackLang.HolProg 64 :=
.seq RemovedBody784_413 RemovedBody784_422

def RemovedBody784_424 : StackLang.HolProg 64 :=
.seq RemovedBody784_412 RemovedBody784_423

def RemovedBody784_425 : StackLang.HolProg 64 :=
.seq RemovedBody784_411 RemovedBody784_424

def RemovedBody784_426 : StackLang.HolProg 64 :=
.seq RemovedBody784_410 RemovedBody784_425

def RemovedBody784_427 : StackLang.HolProg 64 :=
.seq RemovedBody784_409 RemovedBody784_426

def RemovedBody784_428 : StackLang.HolProg 64 :=
.seq RemovedBody784_408 RemovedBody784_427

def RemovedBody784_429 : StackLang.HolProg 64 :=
.seq RemovedBody784_407 RemovedBody784_428

def RemovedBody784_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_435 : StackLang.HolProg 64 :=
.seq RemovedBody784_433 RemovedBody784_434

def RemovedBody784_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody784_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody784_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_439 : StackLang.HolProg 64 :=
.seq RemovedBody784_437 RemovedBody784_438

def RemovedBody784_440 : StackLang.HolProg 64 :=
.seq RemovedBody784_436 RemovedBody784_439

def RemovedBody784_441 : StackLang.HolProg 64 :=
.seq RemovedBody784_435 RemovedBody784_440

def RemovedBody784_442 : StackLang.HolProg 64 :=
.seq RemovedBody784_432 RemovedBody784_441

def RemovedBody784_443 : StackLang.HolProg 64 :=
.seq RemovedBody784_431 RemovedBody784_442

def RemovedBody784_444 : StackLang.HolProg 64 :=
.seq RemovedBody784_430 RemovedBody784_443

def RemovedBody784_445 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody784_446 : StackLang.HolProg 64 :=
.seq RemovedBody784_444 RemovedBody784_445

def RemovedBody784_447 : StackLang.HolProg 64 :=
.call (some (RemovedBody784_429, 0, 784, 10)) (Sum.inl 783) (some (RemovedBody784_446, 784, 11))

def RemovedBody784_448 : StackLang.HolProg 64 :=
.seq RemovedBody784_406 RemovedBody784_447

def RemovedBody784_449 : StackLang.HolProg 64 :=
.seq RemovedBody784_405 RemovedBody784_448

def RemovedBody784_450 : StackLang.HolProg 64 :=
.seq RemovedBody784_404 RemovedBody784_449

def RemovedBody784_451 : StackLang.HolProg 64 :=
.seq RemovedBody784_375 RemovedBody784_450

def RemovedBody784_452 : StackLang.HolProg 64 :=
.seq RemovedBody784_372 RemovedBody784_451

def RemovedBody784_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def RemovedBody784_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_456 : StackLang.HolProg 64 :=
.seq RemovedBody784_454 RemovedBody784_455

def RemovedBody784_457 : StackLang.HolProg 64 :=
.seq RemovedBody784_453 RemovedBody784_456

def RemovedBody784_458 : StackLang.HolProg 64 :=
.seq RemovedBody784_452 RemovedBody784_457

def RemovedBody784_459 : StackLang.HolProg 64 :=
.seq RemovedBody784_371 RemovedBody784_458

def RemovedBody784_460 : StackLang.HolProg 64 :=
.seq RemovedBody784_362 RemovedBody784_459

def RemovedBody784_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_465 : StackLang.HolProg 64 :=
.seq RemovedBody784_463 RemovedBody784_464

def RemovedBody784_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody784_467 : StackLang.HolProg 64 :=
.seq RemovedBody784_465 RemovedBody784_466

def RemovedBody784_468 : StackLang.HolProg 64 :=
.seq RemovedBody784_462 RemovedBody784_467

def RemovedBody784_469 : StackLang.HolProg 64 :=
.seq RemovedBody784_461 RemovedBody784_468

def RemovedBody784_470 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody784_460 RemovedBody784_469

def RemovedBody784_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody784_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_476 : StackLang.HolProg 64 :=
.seq RemovedBody784_474 RemovedBody784_475

def RemovedBody784_477 : StackLang.HolProg 64 :=
.seq RemovedBody784_473 RemovedBody784_476

def RemovedBody784_478 : StackLang.HolProg 64 :=
.seq RemovedBody784_472 RemovedBody784_477

def RemovedBody784_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody784_480 : StackLang.HolProg 64 :=
.seq RemovedBody784_478 RemovedBody784_479

def RemovedBody784_481 : StackLang.HolProg 64 :=
.seq RemovedBody784_471 RemovedBody784_480

def RemovedBody784_482 : StackLang.HolProg 64 :=
.seq RemovedBody784_470 RemovedBody784_481

def RemovedBody784_483 : StackLang.HolProg 64 :=
.seq RemovedBody784_361 RemovedBody784_482

def RemovedBody784_484 : StackLang.HolProg 64 :=
.seq RemovedBody784_360 RemovedBody784_483

def RemovedBody784_485 : StackLang.HolProg 64 :=
.seq RemovedBody784_359 RemovedBody784_484

def RemovedBody784_486 : StackLang.HolProg 64 :=
.seq RemovedBody784_358 RemovedBody784_485

def RemovedBody784_487 : StackLang.HolProg 64 :=
.seq RemovedBody784_357 RemovedBody784_486

def RemovedBody784_488 : StackLang.HolProg 64 :=
.seq RemovedBody784_356 RemovedBody784_487

def RemovedBody784_489 : StackLang.HolProg 64 :=
.seq RemovedBody784_355 RemovedBody784_488

def RemovedBody784_490 : StackLang.HolProg 64 :=
.seq RemovedBody784_354 RemovedBody784_489

def RemovedBody784_491 : StackLang.HolProg 64 :=
.seq RemovedBody784_353 RemovedBody784_490

def RemovedBody784_492 : StackLang.HolProg 64 :=
.seq RemovedBody784_352 RemovedBody784_491

def RemovedBody784_493 : StackLang.HolProg 64 :=
.seq RemovedBody784_351 RemovedBody784_492

def RemovedBody784_494 : StackLang.HolProg 64 :=
.seq RemovedBody784_350 RemovedBody784_493

def RemovedBody784_495 : StackLang.HolProg 64 :=
.seq RemovedBody784_349 RemovedBody784_494

def RemovedBody784_496 : StackLang.HolProg 64 :=
.seq RemovedBody784_348 RemovedBody784_495

def RemovedBody784_497 : StackLang.HolProg 64 :=
.seq RemovedBody784_347 RemovedBody784_496

def RemovedBody784_498 : StackLang.HolProg 64 :=
.seq RemovedBody784_222 RemovedBody784_497

def RemovedBody784_499 : StackLang.HolProg 64 :=
.seq RemovedBody784_221 RemovedBody784_498

def RemovedBody784_500 : StackLang.HolProg 64 :=
.seq RemovedBody784_220 RemovedBody784_499

def RemovedBody784_501 : StackLang.HolProg 64 :=
.seq RemovedBody784_219 RemovedBody784_500

def RemovedBody784_502 : StackLang.HolProg 64 :=
.seq RemovedBody784_218 RemovedBody784_501

def RemovedBody784_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody784_505 : StackLang.HolProg 64 :=
.seq RemovedBody784_503 RemovedBody784_504

def RemovedBody784_506 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody784_502 RemovedBody784_505

def RemovedBody784_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody784_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody784_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody784_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody784_514 : StackLang.HolProg 64 :=
.seq RemovedBody784_512 RemovedBody784_513

def RemovedBody784_515 : StackLang.HolProg 64 :=
.seq RemovedBody784_511 RemovedBody784_514

def RemovedBody784_516 : StackLang.HolProg 64 :=
.seq RemovedBody784_510 RemovedBody784_515

def RemovedBody784_517 : StackLang.HolProg 64 :=
.seq RemovedBody784_509 RemovedBody784_516

def RemovedBody784_518 : StackLang.HolProg 64 :=
.seq RemovedBody784_508 RemovedBody784_517

def RemovedBody784_519 : StackLang.HolProg 64 :=
.seq RemovedBody784_507 RemovedBody784_518

def RemovedBody784_520 : StackLang.HolProg 64 :=
.seq RemovedBody784_506 RemovedBody784_519

def RemovedBody784_521 : StackLang.HolProg 64 :=
.seq RemovedBody784_217 RemovedBody784_520

def RemovedBody784_522 : StackLang.HolProg 64 :=
.seq RemovedBody784_216 RemovedBody784_521

def RemovedBody784_523 : StackLang.HolProg 64 :=
.loop RemovedBody784_522

def RemovedBody784_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody784_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_528 : StackLang.HolProg 64 :=
.seq RemovedBody784_526 RemovedBody784_527

def RemovedBody784_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody784_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody784_531 : StackLang.HolProg 64 :=
.seq RemovedBody784_529 RemovedBody784_530

def RemovedBody784_532 : StackLang.HolProg 64 :=
.seq RemovedBody784_528 RemovedBody784_531

def RemovedBody784_533 : StackLang.HolProg 64 :=
.seq RemovedBody784_525 RemovedBody784_532

def RemovedBody784_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3623#64)

def RemovedBody784_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_537 : StackLang.HolProg 64 :=
.seq RemovedBody784_535 RemovedBody784_536

def RemovedBody784_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody784_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody784_541 : StackLang.HolProg 64 :=
.seq RemovedBody784_539 RemovedBody784_540

def RemovedBody784_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_543 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody784_541 RemovedBody784_542

def RemovedBody784_544 : StackLang.HolProg 64 :=
.seq RemovedBody784_538 RemovedBody784_543

def RemovedBody784_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody784_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 13

def RemovedBody784_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody784_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody784_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody784_554 : StackLang.HolProg 64 :=
.seq RemovedBody784_552 RemovedBody784_553

def RemovedBody784_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody784_556 : StackLang.HolProg 64 :=
.seq RemovedBody784_554 RemovedBody784_555

def RemovedBody784_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_558 : StackLang.HolProg 64 :=
.seq RemovedBody784_556 RemovedBody784_557

def RemovedBody784_559 : StackLang.HolProg 64 :=
.seq RemovedBody784_551 RemovedBody784_558

def RemovedBody784_560 : StackLang.HolProg 64 :=
.seq RemovedBody784_550 RemovedBody784_559

def RemovedBody784_561 : StackLang.HolProg 64 :=
.seq RemovedBody784_549 RemovedBody784_560

def RemovedBody784_562 : StackLang.HolProg 64 :=
.seq RemovedBody784_548 RemovedBody784_561

def RemovedBody784_563 : StackLang.HolProg 64 :=
.seq RemovedBody784_547 RemovedBody784_562

def RemovedBody784_564 : StackLang.HolProg 64 :=
.seq RemovedBody784_546 RemovedBody784_563

def RemovedBody784_565 : StackLang.HolProg 64 :=
.seq RemovedBody784_545 RemovedBody784_564

def RemovedBody784_566 : StackLang.HolProg 64 :=
.seq RemovedBody784_544 RemovedBody784_565

def RemovedBody784_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody784_574 : StackLang.HolProg 64 :=
.seq RemovedBody784_572 RemovedBody784_573

def RemovedBody784_575 : StackLang.HolProg 64 :=
.seq RemovedBody784_571 RemovedBody784_574

def RemovedBody784_576 : StackLang.HolProg 64 :=
.seq RemovedBody784_570 RemovedBody784_575

def RemovedBody784_577 : StackLang.HolProg 64 :=
.seq RemovedBody784_569 RemovedBody784_576

def RemovedBody784_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody784_579 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody784_580 : StackLang.HolProg 64 :=
.seq RemovedBody784_578 RemovedBody784_579

def RemovedBody784_581 : StackLang.HolProg 64 :=
.call (some (RemovedBody784_577, 0, 784, 12)) (Sum.inl 780) (some (RemovedBody784_580, 784, 13))

def RemovedBody784_582 : StackLang.HolProg 64 :=
.seq RemovedBody784_568 RemovedBody784_581

def RemovedBody784_583 : StackLang.HolProg 64 :=
.seq RemovedBody784_567 RemovedBody784_582

def RemovedBody784_584 : StackLang.HolProg 64 :=
.seq RemovedBody784_566 RemovedBody784_583

def RemovedBody784_585 : StackLang.HolProg 64 :=
.seq RemovedBody784_537 RemovedBody784_584

def RemovedBody784_586 : StackLang.HolProg 64 :=
.seq RemovedBody784_534 RemovedBody784_585

def RemovedBody784_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody784_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3624#64)

def RemovedBody784_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_592 : StackLang.HolProg 64 :=
.seq RemovedBody784_590 RemovedBody784_591

def RemovedBody784_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody784_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody784_596 : StackLang.HolProg 64 :=
.seq RemovedBody784_594 RemovedBody784_595

def RemovedBody784_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_598 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody784_596 RemovedBody784_597

def RemovedBody784_599 : StackLang.HolProg 64 :=
.seq RemovedBody784_593 RemovedBody784_598

def RemovedBody784_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody784_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody784_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 15

def RemovedBody784_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody784_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody784_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody784_609 : StackLang.HolProg 64 :=
.seq RemovedBody784_607 RemovedBody784_608

def RemovedBody784_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody784_611 : StackLang.HolProg 64 :=
.seq RemovedBody784_609 RemovedBody784_610

def RemovedBody784_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_613 : StackLang.HolProg 64 :=
.seq RemovedBody784_611 RemovedBody784_612

def RemovedBody784_614 : StackLang.HolProg 64 :=
.seq RemovedBody784_606 RemovedBody784_613

def RemovedBody784_615 : StackLang.HolProg 64 :=
.seq RemovedBody784_605 RemovedBody784_614

def RemovedBody784_616 : StackLang.HolProg 64 :=
.seq RemovedBody784_604 RemovedBody784_615

def RemovedBody784_617 : StackLang.HolProg 64 :=
.seq RemovedBody784_603 RemovedBody784_616

def RemovedBody784_618 : StackLang.HolProg 64 :=
.seq RemovedBody784_602 RemovedBody784_617

def RemovedBody784_619 : StackLang.HolProg 64 :=
.seq RemovedBody784_601 RemovedBody784_618

def RemovedBody784_620 : StackLang.HolProg 64 :=
.seq RemovedBody784_600 RemovedBody784_619

def RemovedBody784_621 : StackLang.HolProg 64 :=
.seq RemovedBody784_599 RemovedBody784_620

def RemovedBody784_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody784_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody784_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody784_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_629 : StackLang.HolProg 64 :=
.seq RemovedBody784_627 RemovedBody784_628

def RemovedBody784_630 : StackLang.HolProg 64 :=
.seq RemovedBody784_626 RemovedBody784_629

def RemovedBody784_631 : StackLang.HolProg 64 :=
.seq RemovedBody784_625 RemovedBody784_630

def RemovedBody784_632 : StackLang.HolProg 64 :=
.seq RemovedBody784_624 RemovedBody784_631

def RemovedBody784_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody784_634 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody784_635 : StackLang.HolProg 64 :=
.seq RemovedBody784_633 RemovedBody784_634

def RemovedBody784_636 : StackLang.HolProg 64 :=
.call (some (RemovedBody784_632, 0, 784, 14)) (Sum.inl 70) (some (RemovedBody784_635, 784, 15))

def RemovedBody784_637 : StackLang.HolProg 64 :=
.seq RemovedBody784_623 RemovedBody784_636

def RemovedBody784_638 : StackLang.HolProg 64 :=
.seq RemovedBody784_622 RemovedBody784_637

def RemovedBody784_639 : StackLang.HolProg 64 :=
.seq RemovedBody784_621 RemovedBody784_638

def RemovedBody784_640 : StackLang.HolProg 64 :=
.seq RemovedBody784_592 RemovedBody784_639

def RemovedBody784_641 : StackLang.HolProg 64 :=
.seq RemovedBody784_589 RemovedBody784_640

def RemovedBody784_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody784_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody784_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody784_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody784_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody784_647 : StackLang.HolProg 64 :=
.seq RemovedBody784_645 RemovedBody784_646

def RemovedBody784_648 : StackLang.HolProg 64 :=
.seq RemovedBody784_644 RemovedBody784_647

def RemovedBody784_649 : StackLang.HolProg 64 :=
.seq RemovedBody784_643 RemovedBody784_648

def RemovedBody784_650 : StackLang.HolProg 64 :=
.seq RemovedBody784_642 RemovedBody784_649

def RemovedBody784_651 : StackLang.HolProg 64 :=
.seq RemovedBody784_641 RemovedBody784_650

def RemovedBody784_652 : StackLang.HolProg 64 :=
.seq RemovedBody784_588 RemovedBody784_651

def RemovedBody784_653 : StackLang.HolProg 64 :=
.seq RemovedBody784_587 RemovedBody784_652

def RemovedBody784_654 : StackLang.HolProg 64 :=
.seq RemovedBody784_586 RemovedBody784_653

def RemovedBody784_655 : StackLang.HolProg 64 :=
.seq RemovedBody784_533 RemovedBody784_654

def RemovedBody784_656 : StackLang.HolProg 64 :=
.seq RemovedBody784_524 RemovedBody784_655

def RemovedBody784_657 : StackLang.HolProg 64 :=
.seq RemovedBody784_523 RemovedBody784_656

def RemovedBody784_658 : StackLang.HolProg 64 :=
.seq RemovedBody784_215 RemovedBody784_657

def RemovedBody784_659 : StackLang.HolProg 64 :=
.seq RemovedBody784_214 RemovedBody784_658

def RemovedBody784_660 : StackLang.HolProg 64 :=
.seq RemovedBody784_213 RemovedBody784_659

def RemovedBody784_661 : StackLang.HolProg 64 :=
.seq RemovedBody784_212 RemovedBody784_660

def RemovedBody784_662 : StackLang.HolProg 64 :=
.seq RemovedBody784_211 RemovedBody784_661

def RemovedBody784_663 : StackLang.HolProg 64 :=
.seq RemovedBody784_210 RemovedBody784_662

def RemovedBody784_664 : StackLang.HolProg 64 :=
.seq RemovedBody784_209 RemovedBody784_663

def RemovedBody784_665 : StackLang.HolProg 64 :=
.seq RemovedBody784_128 RemovedBody784_664

def RemovedBody784_666 : StackLang.HolProg 64 :=
.seq RemovedBody784_125 RemovedBody784_665

def RemovedBody784_667 : StackLang.HolProg 64 :=
.seq RemovedBody784_124 RemovedBody784_666

def RemovedBody784_668 : StackLang.HolProg 64 :=
.seq RemovedBody784_71 RemovedBody784_667

def RemovedBody784_669 : StackLang.HolProg 64 :=
.seq RemovedBody784_70 RemovedBody784_668

def RemovedBody784_670 : StackLang.HolProg 64 :=
.seq RemovedBody784_69 RemovedBody784_669

def RemovedBody784_671 : StackLang.HolProg 64 :=
.seq RemovedBody784_68 RemovedBody784_670

def RemovedBody784_672 : StackLang.HolProg 64 :=
.seq RemovedBody784_15 RemovedBody784_671

def RemovedBody784_673 : StackLang.HolProg 64 :=
.seq RemovedBody784_6 RemovedBody784_672

def Removed784 : Nat × StackLang.HolProg 64 := (784, RemovedBody784_673)
theorem Removed784_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc784 = Removed784 := by
  kernel_rfl
#print axioms Removed784_eq
end InitECandidate.Proofs.BackendStages
