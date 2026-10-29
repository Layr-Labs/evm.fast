import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc744
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody744_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def RemovedBody744_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody744_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody744_3 : StackLang.HolProg 64 :=
.seq RemovedBody744_1 RemovedBody744_2

def RemovedBody744_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody744_3 RemovedBody744_4

def RemovedBody744_6 : StackLang.HolProg 64 :=
.seq RemovedBody744_0 RemovedBody744_5

def RemovedBody744_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody744_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody744_12 : StackLang.HolProg 64 :=
.seq RemovedBody744_10 RemovedBody744_11

def RemovedBody744_13 : StackLang.HolProg 64 :=
.seq RemovedBody744_9 RemovedBody744_12

def RemovedBody744_14 : StackLang.HolProg 64 :=
.seq RemovedBody744_8 RemovedBody744_13

def RemovedBody744_15 : StackLang.HolProg 64 :=
.seq RemovedBody744_7 RemovedBody744_14

def RemovedBody744_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3295#64)

def RemovedBody744_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_19 : StackLang.HolProg 64 :=
.seq RemovedBody744_17 RemovedBody744_18

def RemovedBody744_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody744_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody744_23 : StackLang.HolProg 64 :=
.seq RemovedBody744_21 RemovedBody744_22

def RemovedBody744_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody744_23 RemovedBody744_24

def RemovedBody744_26 : StackLang.HolProg 64 :=
.seq RemovedBody744_20 RemovedBody744_25

def RemovedBody744_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody744_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 744 3

def RemovedBody744_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody744_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody744_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody744_36 : StackLang.HolProg 64 :=
.seq RemovedBody744_34 RemovedBody744_35

def RemovedBody744_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody744_38 : StackLang.HolProg 64 :=
.seq RemovedBody744_36 RemovedBody744_37

def RemovedBody744_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_40 : StackLang.HolProg 64 :=
.seq RemovedBody744_38 RemovedBody744_39

def RemovedBody744_41 : StackLang.HolProg 64 :=
.seq RemovedBody744_33 RemovedBody744_40

def RemovedBody744_42 : StackLang.HolProg 64 :=
.seq RemovedBody744_32 RemovedBody744_41

def RemovedBody744_43 : StackLang.HolProg 64 :=
.seq RemovedBody744_31 RemovedBody744_42

def RemovedBody744_44 : StackLang.HolProg 64 :=
.seq RemovedBody744_30 RemovedBody744_43

def RemovedBody744_45 : StackLang.HolProg 64 :=
.seq RemovedBody744_29 RemovedBody744_44

def RemovedBody744_46 : StackLang.HolProg 64 :=
.seq RemovedBody744_28 RemovedBody744_45

def RemovedBody744_47 : StackLang.HolProg 64 :=
.seq RemovedBody744_27 RemovedBody744_46

def RemovedBody744_48 : StackLang.HolProg 64 :=
.seq RemovedBody744_26 RemovedBody744_47

def RemovedBody744_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody744_56 : StackLang.HolProg 64 :=
.seq RemovedBody744_54 RemovedBody744_55

def RemovedBody744_57 : StackLang.HolProg 64 :=
.seq RemovedBody744_53 RemovedBody744_56

def RemovedBody744_58 : StackLang.HolProg 64 :=
.seq RemovedBody744_52 RemovedBody744_57

def RemovedBody744_59 : StackLang.HolProg 64 :=
.seq RemovedBody744_51 RemovedBody744_58

def RemovedBody744_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody744_62 : StackLang.HolProg 64 :=
.seq RemovedBody744_60 RemovedBody744_61

def RemovedBody744_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody744_59, 0, 744, 2)) (Sum.inl 69) (some (RemovedBody744_62, 744, 3))

def RemovedBody744_64 : StackLang.HolProg 64 :=
.seq RemovedBody744_50 RemovedBody744_63

def RemovedBody744_65 : StackLang.HolProg 64 :=
.seq RemovedBody744_49 RemovedBody744_64

def RemovedBody744_66 : StackLang.HolProg 64 :=
.seq RemovedBody744_48 RemovedBody744_65

def RemovedBody744_67 : StackLang.HolProg 64 :=
.seq RemovedBody744_19 RemovedBody744_66

def RemovedBody744_68 : StackLang.HolProg 64 :=
.seq RemovedBody744_16 RemovedBody744_67

def RemovedBody744_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody744_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody744_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3296#64)

def RemovedBody744_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_75 : StackLang.HolProg 64 :=
.seq RemovedBody744_73 RemovedBody744_74

def RemovedBody744_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody744_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody744_79 : StackLang.HolProg 64 :=
.seq RemovedBody744_77 RemovedBody744_78

def RemovedBody744_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody744_79 RemovedBody744_80

def RemovedBody744_82 : StackLang.HolProg 64 :=
.seq RemovedBody744_76 RemovedBody744_81

def RemovedBody744_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody744_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 744 5

def RemovedBody744_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody744_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody744_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody744_92 : StackLang.HolProg 64 :=
.seq RemovedBody744_90 RemovedBody744_91

def RemovedBody744_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody744_94 : StackLang.HolProg 64 :=
.seq RemovedBody744_92 RemovedBody744_93

def RemovedBody744_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_96 : StackLang.HolProg 64 :=
.seq RemovedBody744_94 RemovedBody744_95

def RemovedBody744_97 : StackLang.HolProg 64 :=
.seq RemovedBody744_89 RemovedBody744_96

def RemovedBody744_98 : StackLang.HolProg 64 :=
.seq RemovedBody744_88 RemovedBody744_97

def RemovedBody744_99 : StackLang.HolProg 64 :=
.seq RemovedBody744_87 RemovedBody744_98

def RemovedBody744_100 : StackLang.HolProg 64 :=
.seq RemovedBody744_86 RemovedBody744_99

def RemovedBody744_101 : StackLang.HolProg 64 :=
.seq RemovedBody744_85 RemovedBody744_100

def RemovedBody744_102 : StackLang.HolProg 64 :=
.seq RemovedBody744_84 RemovedBody744_101

def RemovedBody744_103 : StackLang.HolProg 64 :=
.seq RemovedBody744_83 RemovedBody744_102

def RemovedBody744_104 : StackLang.HolProg 64 :=
.seq RemovedBody744_82 RemovedBody744_103

def RemovedBody744_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody744_112 : StackLang.HolProg 64 :=
.seq RemovedBody744_110 RemovedBody744_111

def RemovedBody744_113 : StackLang.HolProg 64 :=
.seq RemovedBody744_109 RemovedBody744_112

def RemovedBody744_114 : StackLang.HolProg 64 :=
.seq RemovedBody744_108 RemovedBody744_113

def RemovedBody744_115 : StackLang.HolProg 64 :=
.seq RemovedBody744_107 RemovedBody744_114

def RemovedBody744_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody744_118 : StackLang.HolProg 64 :=
.seq RemovedBody744_116 RemovedBody744_117

def RemovedBody744_119 : StackLang.HolProg 64 :=
.call (some (RemovedBody744_115, 0, 744, 4)) (Sum.inl 68) (some (RemovedBody744_118, 744, 5))

def RemovedBody744_120 : StackLang.HolProg 64 :=
.seq RemovedBody744_106 RemovedBody744_119

def RemovedBody744_121 : StackLang.HolProg 64 :=
.seq RemovedBody744_105 RemovedBody744_120

def RemovedBody744_122 : StackLang.HolProg 64 :=
.seq RemovedBody744_104 RemovedBody744_121

def RemovedBody744_123 : StackLang.HolProg 64 :=
.seq RemovedBody744_75 RemovedBody744_122

def RemovedBody744_124 : StackLang.HolProg 64 :=
.seq RemovedBody744_72 RemovedBody744_123

def RemovedBody744_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody744_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3297#64)

def RemovedBody744_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_131 : StackLang.HolProg 64 :=
.seq RemovedBody744_129 RemovedBody744_130

def RemovedBody744_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody744_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody744_135 : StackLang.HolProg 64 :=
.seq RemovedBody744_133 RemovedBody744_134

def RemovedBody744_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody744_135 RemovedBody744_136

def RemovedBody744_138 : StackLang.HolProg 64 :=
.seq RemovedBody744_132 RemovedBody744_137

def RemovedBody744_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody744_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 744 7

def RemovedBody744_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody744_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody744_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody744_148 : StackLang.HolProg 64 :=
.seq RemovedBody744_146 RemovedBody744_147

def RemovedBody744_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody744_150 : StackLang.HolProg 64 :=
.seq RemovedBody744_148 RemovedBody744_149

def RemovedBody744_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_152 : StackLang.HolProg 64 :=
.seq RemovedBody744_150 RemovedBody744_151

def RemovedBody744_153 : StackLang.HolProg 64 :=
.seq RemovedBody744_145 RemovedBody744_152

def RemovedBody744_154 : StackLang.HolProg 64 :=
.seq RemovedBody744_144 RemovedBody744_153

def RemovedBody744_155 : StackLang.HolProg 64 :=
.seq RemovedBody744_143 RemovedBody744_154

def RemovedBody744_156 : StackLang.HolProg 64 :=
.seq RemovedBody744_142 RemovedBody744_155

def RemovedBody744_157 : StackLang.HolProg 64 :=
.seq RemovedBody744_141 RemovedBody744_156

def RemovedBody744_158 : StackLang.HolProg 64 :=
.seq RemovedBody744_140 RemovedBody744_157

def RemovedBody744_159 : StackLang.HolProg 64 :=
.seq RemovedBody744_139 RemovedBody744_158

def RemovedBody744_160 : StackLang.HolProg 64 :=
.seq RemovedBody744_138 RemovedBody744_159

def RemovedBody744_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody744_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_171 : StackLang.HolProg 64 :=
.seq RemovedBody744_169 RemovedBody744_170

def RemovedBody744_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_175 : StackLang.HolProg 64 :=
.seq RemovedBody744_173 RemovedBody744_174

def RemovedBody744_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody744_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_178 : StackLang.HolProg 64 :=
.seq RemovedBody744_176 RemovedBody744_177

def RemovedBody744_179 : StackLang.HolProg 64 :=
.seq RemovedBody744_175 RemovedBody744_178

def RemovedBody744_180 : StackLang.HolProg 64 :=
.seq RemovedBody744_172 RemovedBody744_179

def RemovedBody744_181 : StackLang.HolProg 64 :=
.seq RemovedBody744_171 RemovedBody744_180

def RemovedBody744_182 : StackLang.HolProg 64 :=
.seq RemovedBody744_168 RemovedBody744_181

def RemovedBody744_183 : StackLang.HolProg 64 :=
.seq RemovedBody744_167 RemovedBody744_182

def RemovedBody744_184 : StackLang.HolProg 64 :=
.seq RemovedBody744_166 RemovedBody744_183

def RemovedBody744_185 : StackLang.HolProg 64 :=
.seq RemovedBody744_165 RemovedBody744_184

def RemovedBody744_186 : StackLang.HolProg 64 :=
.seq RemovedBody744_164 RemovedBody744_185

def RemovedBody744_187 : StackLang.HolProg 64 :=
.seq RemovedBody744_163 RemovedBody744_186

def RemovedBody744_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_191 : StackLang.HolProg 64 :=
.seq RemovedBody744_189 RemovedBody744_190

def RemovedBody744_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_195 : StackLang.HolProg 64 :=
.seq RemovedBody744_193 RemovedBody744_194

def RemovedBody744_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody744_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_198 : StackLang.HolProg 64 :=
.seq RemovedBody744_196 RemovedBody744_197

def RemovedBody744_199 : StackLang.HolProg 64 :=
.seq RemovedBody744_195 RemovedBody744_198

def RemovedBody744_200 : StackLang.HolProg 64 :=
.seq RemovedBody744_192 RemovedBody744_199

def RemovedBody744_201 : StackLang.HolProg 64 :=
.seq RemovedBody744_191 RemovedBody744_200

def RemovedBody744_202 : StackLang.HolProg 64 :=
.seq RemovedBody744_188 RemovedBody744_201

def RemovedBody744_203 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody744_204 : StackLang.HolProg 64 :=
.seq RemovedBody744_202 RemovedBody744_203

def RemovedBody744_205 : StackLang.HolProg 64 :=
.call (some (RemovedBody744_187, 0, 744, 6)) (Sum.inl 68) (some (RemovedBody744_204, 744, 7))

def RemovedBody744_206 : StackLang.HolProg 64 :=
.seq RemovedBody744_162 RemovedBody744_205

def RemovedBody744_207 : StackLang.HolProg 64 :=
.seq RemovedBody744_161 RemovedBody744_206

def RemovedBody744_208 : StackLang.HolProg 64 :=
.seq RemovedBody744_160 RemovedBody744_207

def RemovedBody744_209 : StackLang.HolProg 64 :=
.seq RemovedBody744_131 RemovedBody744_208

def RemovedBody744_210 : StackLang.HolProg 64 :=
.seq RemovedBody744_128 RemovedBody744_209

def RemovedBody744_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody744_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody744_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody744_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_216 : StackLang.HolProg 64 :=
.seq RemovedBody744_214 RemovedBody744_215

def RemovedBody744_217 : StackLang.HolProg 64 :=
.seq RemovedBody744_213 RemovedBody744_216

def RemovedBody744_218 : StackLang.HolProg 64 :=
.seq RemovedBody744_212 RemovedBody744_217

def RemovedBody744_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3298#64)

def RemovedBody744_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_222 : StackLang.HolProg 64 :=
.seq RemovedBody744_220 RemovedBody744_221

def RemovedBody744_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody744_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody744_226 : StackLang.HolProg 64 :=
.seq RemovedBody744_224 RemovedBody744_225

def RemovedBody744_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody744_226 RemovedBody744_227

def RemovedBody744_229 : StackLang.HolProg 64 :=
.seq RemovedBody744_223 RemovedBody744_228

def RemovedBody744_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody744_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 744 9

def RemovedBody744_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody744_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody744_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody744_239 : StackLang.HolProg 64 :=
.seq RemovedBody744_237 RemovedBody744_238

def RemovedBody744_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody744_241 : StackLang.HolProg 64 :=
.seq RemovedBody744_239 RemovedBody744_240

def RemovedBody744_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_243 : StackLang.HolProg 64 :=
.seq RemovedBody744_241 RemovedBody744_242

def RemovedBody744_244 : StackLang.HolProg 64 :=
.seq RemovedBody744_236 RemovedBody744_243

def RemovedBody744_245 : StackLang.HolProg 64 :=
.seq RemovedBody744_235 RemovedBody744_244

def RemovedBody744_246 : StackLang.HolProg 64 :=
.seq RemovedBody744_234 RemovedBody744_245

def RemovedBody744_247 : StackLang.HolProg 64 :=
.seq RemovedBody744_233 RemovedBody744_246

def RemovedBody744_248 : StackLang.HolProg 64 :=
.seq RemovedBody744_232 RemovedBody744_247

def RemovedBody744_249 : StackLang.HolProg 64 :=
.seq RemovedBody744_231 RemovedBody744_248

def RemovedBody744_250 : StackLang.HolProg 64 :=
.seq RemovedBody744_230 RemovedBody744_249

def RemovedBody744_251 : StackLang.HolProg 64 :=
.seq RemovedBody744_229 RemovedBody744_250

def RemovedBody744_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_259 : StackLang.HolProg 64 :=
.seq RemovedBody744_257 RemovedBody744_258

def RemovedBody744_260 : StackLang.HolProg 64 :=
.seq RemovedBody744_256 RemovedBody744_259

def RemovedBody744_261 : StackLang.HolProg 64 :=
.seq RemovedBody744_255 RemovedBody744_260

def RemovedBody744_262 : StackLang.HolProg 64 :=
.seq RemovedBody744_254 RemovedBody744_261

def RemovedBody744_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_264 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody744_265 : StackLang.HolProg 64 :=
.seq RemovedBody744_263 RemovedBody744_264

def RemovedBody744_266 : StackLang.HolProg 64 :=
.call (some (RemovedBody744_262, 0, 744, 8)) (Sum.inl 729) (some (RemovedBody744_265, 744, 9))

def RemovedBody744_267 : StackLang.HolProg 64 :=
.seq RemovedBody744_253 RemovedBody744_266

def RemovedBody744_268 : StackLang.HolProg 64 :=
.seq RemovedBody744_252 RemovedBody744_267

def RemovedBody744_269 : StackLang.HolProg 64 :=
.seq RemovedBody744_251 RemovedBody744_268

def RemovedBody744_270 : StackLang.HolProg 64 :=
.seq RemovedBody744_222 RemovedBody744_269

def RemovedBody744_271 : StackLang.HolProg 64 :=
.seq RemovedBody744_219 RemovedBody744_270

def RemovedBody744_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody744_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_275 : StackLang.HolProg 64 :=
.seq RemovedBody744_273 RemovedBody744_274

def RemovedBody744_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3299#64)

def RemovedBody744_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_279 : StackLang.HolProg 64 :=
.seq RemovedBody744_277 RemovedBody744_278

def RemovedBody744_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody744_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody744_283 : StackLang.HolProg 64 :=
.seq RemovedBody744_281 RemovedBody744_282

def RemovedBody744_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_285 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody744_283 RemovedBody744_284

def RemovedBody744_286 : StackLang.HolProg 64 :=
.seq RemovedBody744_280 RemovedBody744_285

def RemovedBody744_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody744_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 744 11

def RemovedBody744_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody744_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody744_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody744_296 : StackLang.HolProg 64 :=
.seq RemovedBody744_294 RemovedBody744_295

def RemovedBody744_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody744_298 : StackLang.HolProg 64 :=
.seq RemovedBody744_296 RemovedBody744_297

def RemovedBody744_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_300 : StackLang.HolProg 64 :=
.seq RemovedBody744_298 RemovedBody744_299

def RemovedBody744_301 : StackLang.HolProg 64 :=
.seq RemovedBody744_293 RemovedBody744_300

def RemovedBody744_302 : StackLang.HolProg 64 :=
.seq RemovedBody744_292 RemovedBody744_301

def RemovedBody744_303 : StackLang.HolProg 64 :=
.seq RemovedBody744_291 RemovedBody744_302

def RemovedBody744_304 : StackLang.HolProg 64 :=
.seq RemovedBody744_290 RemovedBody744_303

def RemovedBody744_305 : StackLang.HolProg 64 :=
.seq RemovedBody744_289 RemovedBody744_304

def RemovedBody744_306 : StackLang.HolProg 64 :=
.seq RemovedBody744_288 RemovedBody744_305

def RemovedBody744_307 : StackLang.HolProg 64 :=
.seq RemovedBody744_287 RemovedBody744_306

def RemovedBody744_308 : StackLang.HolProg 64 :=
.seq RemovedBody744_286 RemovedBody744_307

def RemovedBody744_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_319 : StackLang.HolProg 64 :=
.seq RemovedBody744_317 RemovedBody744_318

def RemovedBody744_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_322 : StackLang.HolProg 64 :=
.seq RemovedBody744_320 RemovedBody744_321

def RemovedBody744_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody744_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_325 : StackLang.HolProg 64 :=
.seq RemovedBody744_323 RemovedBody744_324

def RemovedBody744_326 : StackLang.HolProg 64 :=
.seq RemovedBody744_322 RemovedBody744_325

def RemovedBody744_327 : StackLang.HolProg 64 :=
.seq RemovedBody744_319 RemovedBody744_326

def RemovedBody744_328 : StackLang.HolProg 64 :=
.seq RemovedBody744_316 RemovedBody744_327

def RemovedBody744_329 : StackLang.HolProg 64 :=
.seq RemovedBody744_315 RemovedBody744_328

def RemovedBody744_330 : StackLang.HolProg 64 :=
.seq RemovedBody744_314 RemovedBody744_329

def RemovedBody744_331 : StackLang.HolProg 64 :=
.seq RemovedBody744_313 RemovedBody744_330

def RemovedBody744_332 : StackLang.HolProg 64 :=
.seq RemovedBody744_312 RemovedBody744_331

def RemovedBody744_333 : StackLang.HolProg 64 :=
.seq RemovedBody744_311 RemovedBody744_332

def RemovedBody744_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_338 : StackLang.HolProg 64 :=
.seq RemovedBody744_336 RemovedBody744_337

def RemovedBody744_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_341 : StackLang.HolProg 64 :=
.seq RemovedBody744_339 RemovedBody744_340

def RemovedBody744_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody744_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_344 : StackLang.HolProg 64 :=
.seq RemovedBody744_342 RemovedBody744_343

def RemovedBody744_345 : StackLang.HolProg 64 :=
.seq RemovedBody744_341 RemovedBody744_344

def RemovedBody744_346 : StackLang.HolProg 64 :=
.seq RemovedBody744_338 RemovedBody744_345

def RemovedBody744_347 : StackLang.HolProg 64 :=
.seq RemovedBody744_335 RemovedBody744_346

def RemovedBody744_348 : StackLang.HolProg 64 :=
.seq RemovedBody744_334 RemovedBody744_347

def RemovedBody744_349 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody744_350 : StackLang.HolProg 64 :=
.seq RemovedBody744_348 RemovedBody744_349

def RemovedBody744_351 : StackLang.HolProg 64 :=
.call (some (RemovedBody744_333, 0, 744, 10)) (Sum.inl 731) (some (RemovedBody744_350, 744, 11))

def RemovedBody744_352 : StackLang.HolProg 64 :=
.seq RemovedBody744_310 RemovedBody744_351

def RemovedBody744_353 : StackLang.HolProg 64 :=
.seq RemovedBody744_309 RemovedBody744_352

def RemovedBody744_354 : StackLang.HolProg 64 :=
.seq RemovedBody744_308 RemovedBody744_353

def RemovedBody744_355 : StackLang.HolProg 64 :=
.seq RemovedBody744_279 RemovedBody744_354

def RemovedBody744_356 : StackLang.HolProg 64 :=
.seq RemovedBody744_276 RemovedBody744_355

def RemovedBody744_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody744_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody744_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody744_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody744_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody744_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody744_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody744_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody744_374 : StackLang.HolProg 64 :=
.seq RemovedBody744_372 RemovedBody744_373

def RemovedBody744_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_377 : StackLang.HolProg 64 :=
.seq RemovedBody744_375 RemovedBody744_376

def RemovedBody744_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_380 : StackLang.HolProg 64 :=
.seq RemovedBody744_378 RemovedBody744_379

def RemovedBody744_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody744_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_383 : StackLang.HolProg 64 :=
.seq RemovedBody744_381 RemovedBody744_382

def RemovedBody744_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody744_386 : StackLang.HolProg 64 :=
.seq RemovedBody744_384 RemovedBody744_385

def RemovedBody744_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody744_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_389 : StackLang.HolProg 64 :=
.seq RemovedBody744_387 RemovedBody744_388

def RemovedBody744_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody744_392 : StackLang.HolProg 64 :=
.seq RemovedBody744_390 RemovedBody744_391

def RemovedBody744_393 : StackLang.HolProg 64 :=
.seq RemovedBody744_389 RemovedBody744_392

def RemovedBody744_394 : StackLang.HolProg 64 :=
.seq RemovedBody744_386 RemovedBody744_393

def RemovedBody744_395 : StackLang.HolProg 64 :=
.seq RemovedBody744_383 RemovedBody744_394

def RemovedBody744_396 : StackLang.HolProg 64 :=
.seq RemovedBody744_380 RemovedBody744_395

def RemovedBody744_397 : StackLang.HolProg 64 :=
.seq RemovedBody744_377 RemovedBody744_396

def RemovedBody744_398 : StackLang.HolProg 64 :=
.seq RemovedBody744_374 RemovedBody744_397

def RemovedBody744_399 : StackLang.HolProg 64 :=
.seq RemovedBody744_371 RemovedBody744_398

def RemovedBody744_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3300#64)

def RemovedBody744_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_403 : StackLang.HolProg 64 :=
.seq RemovedBody744_401 RemovedBody744_402

def RemovedBody744_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody744_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody744_407 : StackLang.HolProg 64 :=
.seq RemovedBody744_405 RemovedBody744_406

def RemovedBody744_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_409 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody744_407 RemovedBody744_408

def RemovedBody744_410 : StackLang.HolProg 64 :=
.seq RemovedBody744_404 RemovedBody744_409

def RemovedBody744_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody744_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 744 13

def RemovedBody744_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody744_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody744_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody744_420 : StackLang.HolProg 64 :=
.seq RemovedBody744_418 RemovedBody744_419

def RemovedBody744_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody744_422 : StackLang.HolProg 64 :=
.seq RemovedBody744_420 RemovedBody744_421

def RemovedBody744_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_424 : StackLang.HolProg 64 :=
.seq RemovedBody744_422 RemovedBody744_423

def RemovedBody744_425 : StackLang.HolProg 64 :=
.seq RemovedBody744_417 RemovedBody744_424

def RemovedBody744_426 : StackLang.HolProg 64 :=
.seq RemovedBody744_416 RemovedBody744_425

def RemovedBody744_427 : StackLang.HolProg 64 :=
.seq RemovedBody744_415 RemovedBody744_426

def RemovedBody744_428 : StackLang.HolProg 64 :=
.seq RemovedBody744_414 RemovedBody744_427

def RemovedBody744_429 : StackLang.HolProg 64 :=
.seq RemovedBody744_413 RemovedBody744_428

def RemovedBody744_430 : StackLang.HolProg 64 :=
.seq RemovedBody744_412 RemovedBody744_429

def RemovedBody744_431 : StackLang.HolProg 64 :=
.seq RemovedBody744_411 RemovedBody744_430

def RemovedBody744_432 : StackLang.HolProg 64 :=
.seq RemovedBody744_410 RemovedBody744_431

def RemovedBody744_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody744_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody744_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody744_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_446 : StackLang.HolProg 64 :=
.seq RemovedBody744_444 RemovedBody744_445

def RemovedBody744_447 : StackLang.HolProg 64 :=
.seq RemovedBody744_443 RemovedBody744_446

def RemovedBody744_448 : StackLang.HolProg 64 :=
.seq RemovedBody744_442 RemovedBody744_447

def RemovedBody744_449 : StackLang.HolProg 64 :=
.seq RemovedBody744_441 RemovedBody744_448

def RemovedBody744_450 : StackLang.HolProg 64 :=
.seq RemovedBody744_440 RemovedBody744_449

def RemovedBody744_451 : StackLang.HolProg 64 :=
.seq RemovedBody744_439 RemovedBody744_450

def RemovedBody744_452 : StackLang.HolProg 64 :=
.seq RemovedBody744_438 RemovedBody744_451

def RemovedBody744_453 : StackLang.HolProg 64 :=
.seq RemovedBody744_437 RemovedBody744_452

def RemovedBody744_454 : StackLang.HolProg 64 :=
.seq RemovedBody744_436 RemovedBody744_453

def RemovedBody744_455 : StackLang.HolProg 64 :=
.seq RemovedBody744_435 RemovedBody744_454

def RemovedBody744_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody744_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody744_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody744_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_463 : StackLang.HolProg 64 :=
.seq RemovedBody744_461 RemovedBody744_462

def RemovedBody744_464 : StackLang.HolProg 64 :=
.seq RemovedBody744_460 RemovedBody744_463

def RemovedBody744_465 : StackLang.HolProg 64 :=
.seq RemovedBody744_459 RemovedBody744_464

def RemovedBody744_466 : StackLang.HolProg 64 :=
.seq RemovedBody744_458 RemovedBody744_465

def RemovedBody744_467 : StackLang.HolProg 64 :=
.seq RemovedBody744_457 RemovedBody744_466

def RemovedBody744_468 : StackLang.HolProg 64 :=
.seq RemovedBody744_456 RemovedBody744_467

def RemovedBody744_469 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody744_470 : StackLang.HolProg 64 :=
.seq RemovedBody744_468 RemovedBody744_469

def RemovedBody744_471 : StackLang.HolProg 64 :=
.call (some (RemovedBody744_455, 0, 744, 12)) (Sum.inl 740) (some (RemovedBody744_470, 744, 13))

def RemovedBody744_472 : StackLang.HolProg 64 :=
.seq RemovedBody744_434 RemovedBody744_471

def RemovedBody744_473 : StackLang.HolProg 64 :=
.seq RemovedBody744_433 RemovedBody744_472

def RemovedBody744_474 : StackLang.HolProg 64 :=
.seq RemovedBody744_432 RemovedBody744_473

def RemovedBody744_475 : StackLang.HolProg 64 :=
.seq RemovedBody744_403 RemovedBody744_474

def RemovedBody744_476 : StackLang.HolProg 64 :=
.seq RemovedBody744_400 RemovedBody744_475

def RemovedBody744_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_479 : StackLang.HolProg 64 :=
.seq RemovedBody744_477 RemovedBody744_478

def RemovedBody744_480 : StackLang.HolProg 64 :=
.seq RemovedBody744_476 RemovedBody744_479

def RemovedBody744_481 : StackLang.HolProg 64 :=
.seq RemovedBody744_399 RemovedBody744_480

def RemovedBody744_482 : StackLang.HolProg 64 :=
.seq RemovedBody744_370 RemovedBody744_481

def RemovedBody744_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody744_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_487 : StackLang.HolProg 64 :=
.seq RemovedBody744_485 RemovedBody744_486

def RemovedBody744_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_490 : StackLang.HolProg 64 :=
.seq RemovedBody744_488 RemovedBody744_489

def RemovedBody744_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody744_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_494 : StackLang.HolProg 64 :=
.seq RemovedBody744_492 RemovedBody744_493

def RemovedBody744_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody744_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody744_498 : StackLang.HolProg 64 :=
.seq RemovedBody744_496 RemovedBody744_497

def RemovedBody744_499 : StackLang.HolProg 64 :=
.seq RemovedBody744_495 RemovedBody744_498

def RemovedBody744_500 : StackLang.HolProg 64 :=
.seq RemovedBody744_494 RemovedBody744_499

def RemovedBody744_501 : StackLang.HolProg 64 :=
.seq RemovedBody744_491 RemovedBody744_500

def RemovedBody744_502 : StackLang.HolProg 64 :=
.seq RemovedBody744_490 RemovedBody744_501

def RemovedBody744_503 : StackLang.HolProg 64 :=
.seq RemovedBody744_487 RemovedBody744_502

def RemovedBody744_504 : StackLang.HolProg 64 :=
.seq RemovedBody744_484 RemovedBody744_503

def RemovedBody744_505 : StackLang.HolProg 64 :=
.seq RemovedBody744_483 RemovedBody744_504

def RemovedBody744_506 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody744_482 RemovedBody744_505

def RemovedBody744_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody744_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody744_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody744_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody744_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody744_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody744_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody744_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody744_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody744_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody744_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody744_527 : StackLang.HolProg 64 :=
.seq RemovedBody744_525 RemovedBody744_526

def RemovedBody744_528 : StackLang.HolProg 64 :=
.seq RemovedBody744_524 RemovedBody744_527

def RemovedBody744_529 : StackLang.HolProg 64 :=
.seq RemovedBody744_523 RemovedBody744_528

def RemovedBody744_530 : StackLang.HolProg 64 :=
.seq RemovedBody744_522 RemovedBody744_529

def RemovedBody744_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3301#64)

def RemovedBody744_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_534 : StackLang.HolProg 64 :=
.seq RemovedBody744_532 RemovedBody744_533

def RemovedBody744_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody744_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody744_538 : StackLang.HolProg 64 :=
.seq RemovedBody744_536 RemovedBody744_537

def RemovedBody744_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_540 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody744_538 RemovedBody744_539

def RemovedBody744_541 : StackLang.HolProg 64 :=
.seq RemovedBody744_535 RemovedBody744_540

def RemovedBody744_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody744_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 744 15

def RemovedBody744_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody744_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody744_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody744_551 : StackLang.HolProg 64 :=
.seq RemovedBody744_549 RemovedBody744_550

def RemovedBody744_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody744_553 : StackLang.HolProg 64 :=
.seq RemovedBody744_551 RemovedBody744_552

def RemovedBody744_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_555 : StackLang.HolProg 64 :=
.seq RemovedBody744_553 RemovedBody744_554

def RemovedBody744_556 : StackLang.HolProg 64 :=
.seq RemovedBody744_548 RemovedBody744_555

def RemovedBody744_557 : StackLang.HolProg 64 :=
.seq RemovedBody744_547 RemovedBody744_556

def RemovedBody744_558 : StackLang.HolProg 64 :=
.seq RemovedBody744_546 RemovedBody744_557

def RemovedBody744_559 : StackLang.HolProg 64 :=
.seq RemovedBody744_545 RemovedBody744_558

def RemovedBody744_560 : StackLang.HolProg 64 :=
.seq RemovedBody744_544 RemovedBody744_559

def RemovedBody744_561 : StackLang.HolProg 64 :=
.seq RemovedBody744_543 RemovedBody744_560

def RemovedBody744_562 : StackLang.HolProg 64 :=
.seq RemovedBody744_542 RemovedBody744_561

def RemovedBody744_563 : StackLang.HolProg 64 :=
.seq RemovedBody744_541 RemovedBody744_562

def RemovedBody744_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody744_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody744_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody744_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_579 : StackLang.HolProg 64 :=
.seq RemovedBody744_577 RemovedBody744_578

def RemovedBody744_580 : StackLang.HolProg 64 :=
.seq RemovedBody744_576 RemovedBody744_579

def RemovedBody744_581 : StackLang.HolProg 64 :=
.seq RemovedBody744_575 RemovedBody744_580

def RemovedBody744_582 : StackLang.HolProg 64 :=
.seq RemovedBody744_574 RemovedBody744_581

def RemovedBody744_583 : StackLang.HolProg 64 :=
.seq RemovedBody744_573 RemovedBody744_582

def RemovedBody744_584 : StackLang.HolProg 64 :=
.seq RemovedBody744_572 RemovedBody744_583

def RemovedBody744_585 : StackLang.HolProg 64 :=
.seq RemovedBody744_571 RemovedBody744_584

def RemovedBody744_586 : StackLang.HolProg 64 :=
.seq RemovedBody744_570 RemovedBody744_585

def RemovedBody744_587 : StackLang.HolProg 64 :=
.seq RemovedBody744_569 RemovedBody744_586

def RemovedBody744_588 : StackLang.HolProg 64 :=
.seq RemovedBody744_568 RemovedBody744_587

def RemovedBody744_589 : StackLang.HolProg 64 :=
.seq RemovedBody744_567 RemovedBody744_588

def RemovedBody744_590 : StackLang.HolProg 64 :=
.seq RemovedBody744_566 RemovedBody744_589

def RemovedBody744_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody744_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody744_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody744_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_600 : StackLang.HolProg 64 :=
.seq RemovedBody744_598 RemovedBody744_599

def RemovedBody744_601 : StackLang.HolProg 64 :=
.seq RemovedBody744_597 RemovedBody744_600

def RemovedBody744_602 : StackLang.HolProg 64 :=
.seq RemovedBody744_596 RemovedBody744_601

def RemovedBody744_603 : StackLang.HolProg 64 :=
.seq RemovedBody744_595 RemovedBody744_602

def RemovedBody744_604 : StackLang.HolProg 64 :=
.seq RemovedBody744_594 RemovedBody744_603

def RemovedBody744_605 : StackLang.HolProg 64 :=
.seq RemovedBody744_593 RemovedBody744_604

def RemovedBody744_606 : StackLang.HolProg 64 :=
.seq RemovedBody744_592 RemovedBody744_605

def RemovedBody744_607 : StackLang.HolProg 64 :=
.seq RemovedBody744_591 RemovedBody744_606

def RemovedBody744_608 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody744_609 : StackLang.HolProg 64 :=
.seq RemovedBody744_607 RemovedBody744_608

def RemovedBody744_610 : StackLang.HolProg 64 :=
.call (some (RemovedBody744_590, 0, 744, 14)) (Sum.inl 739) (some (RemovedBody744_609, 744, 15))

def RemovedBody744_611 : StackLang.HolProg 64 :=
.seq RemovedBody744_565 RemovedBody744_610

def RemovedBody744_612 : StackLang.HolProg 64 :=
.seq RemovedBody744_564 RemovedBody744_611

def RemovedBody744_613 : StackLang.HolProg 64 :=
.seq RemovedBody744_563 RemovedBody744_612

def RemovedBody744_614 : StackLang.HolProg 64 :=
.seq RemovedBody744_534 RemovedBody744_613

def RemovedBody744_615 : StackLang.HolProg 64 :=
.seq RemovedBody744_531 RemovedBody744_614

def RemovedBody744_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody744_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_619 : StackLang.HolProg 64 :=
.seq RemovedBody744_617 RemovedBody744_618

def RemovedBody744_620 : StackLang.HolProg 64 :=
.seq RemovedBody744_616 RemovedBody744_619

def RemovedBody744_621 : StackLang.HolProg 64 :=
.seq RemovedBody744_615 RemovedBody744_620

def RemovedBody744_622 : StackLang.HolProg 64 :=
.seq RemovedBody744_530 RemovedBody744_621

def RemovedBody744_623 : StackLang.HolProg 64 :=
.seq RemovedBody744_521 RemovedBody744_622

def RemovedBody744_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody744_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_630 : StackLang.HolProg 64 :=
.seq RemovedBody744_628 RemovedBody744_629

def RemovedBody744_631 : StackLang.HolProg 64 :=
.seq RemovedBody744_627 RemovedBody744_630

def RemovedBody744_632 : StackLang.HolProg 64 :=
.seq RemovedBody744_626 RemovedBody744_631

def RemovedBody744_633 : StackLang.HolProg 64 :=
.seq RemovedBody744_625 RemovedBody744_632

def RemovedBody744_634 : StackLang.HolProg 64 :=
.seq RemovedBody744_624 RemovedBody744_633

def RemovedBody744_635 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody744_623 RemovedBody744_634

def RemovedBody744_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody744_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody744_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_642 : StackLang.HolProg 64 :=
.seq RemovedBody744_640 RemovedBody744_641

def RemovedBody744_643 : StackLang.HolProg 64 :=
.seq RemovedBody744_639 RemovedBody744_642

def RemovedBody744_644 : StackLang.HolProg 64 :=
.seq RemovedBody744_638 RemovedBody744_643

def RemovedBody744_645 : StackLang.HolProg 64 :=
.seq RemovedBody744_637 RemovedBody744_644

def RemovedBody744_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody744_647 : StackLang.HolProg 64 :=
.seq RemovedBody744_645 RemovedBody744_646

def RemovedBody744_648 : StackLang.HolProg 64 :=
.seq RemovedBody744_636 RemovedBody744_647

def RemovedBody744_649 : StackLang.HolProg 64 :=
.seq RemovedBody744_635 RemovedBody744_648

def RemovedBody744_650 : StackLang.HolProg 64 :=
.seq RemovedBody744_520 RemovedBody744_649

def RemovedBody744_651 : StackLang.HolProg 64 :=
.seq RemovedBody744_519 RemovedBody744_650

def RemovedBody744_652 : StackLang.HolProg 64 :=
.seq RemovedBody744_518 RemovedBody744_651

def RemovedBody744_653 : StackLang.HolProg 64 :=
.seq RemovedBody744_517 RemovedBody744_652

def RemovedBody744_654 : StackLang.HolProg 64 :=
.seq RemovedBody744_516 RemovedBody744_653

def RemovedBody744_655 : StackLang.HolProg 64 :=
.seq RemovedBody744_515 RemovedBody744_654

def RemovedBody744_656 : StackLang.HolProg 64 :=
.seq RemovedBody744_514 RemovedBody744_655

def RemovedBody744_657 : StackLang.HolProg 64 :=
.seq RemovedBody744_513 RemovedBody744_656

def RemovedBody744_658 : StackLang.HolProg 64 :=
.seq RemovedBody744_512 RemovedBody744_657

def RemovedBody744_659 : StackLang.HolProg 64 :=
.seq RemovedBody744_511 RemovedBody744_658

def RemovedBody744_660 : StackLang.HolProg 64 :=
.seq RemovedBody744_510 RemovedBody744_659

def RemovedBody744_661 : StackLang.HolProg 64 :=
.seq RemovedBody744_509 RemovedBody744_660

def RemovedBody744_662 : StackLang.HolProg 64 :=
.seq RemovedBody744_508 RemovedBody744_661

def RemovedBody744_663 : StackLang.HolProg 64 :=
.seq RemovedBody744_507 RemovedBody744_662

def RemovedBody744_664 : StackLang.HolProg 64 :=
.seq RemovedBody744_506 RemovedBody744_663

def RemovedBody744_665 : StackLang.HolProg 64 :=
.seq RemovedBody744_369 RemovedBody744_664

def RemovedBody744_666 : StackLang.HolProg 64 :=
.seq RemovedBody744_368 RemovedBody744_665

def RemovedBody744_667 : StackLang.HolProg 64 :=
.seq RemovedBody744_367 RemovedBody744_666

def RemovedBody744_668 : StackLang.HolProg 64 :=
.seq RemovedBody744_366 RemovedBody744_667

def RemovedBody744_669 : StackLang.HolProg 64 :=
.seq RemovedBody744_365 RemovedBody744_668

def RemovedBody744_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody744_672 : StackLang.HolProg 64 :=
.seq RemovedBody744_670 RemovedBody744_671

def RemovedBody744_673 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody744_669 RemovedBody744_672

def RemovedBody744_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody744_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody744_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody744_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody744_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody744_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_682 : StackLang.HolProg 64 :=
.seq RemovedBody744_680 RemovedBody744_681

def RemovedBody744_683 : StackLang.HolProg 64 :=
.seq RemovedBody744_679 RemovedBody744_682

def RemovedBody744_684 : StackLang.HolProg 64 :=
.seq RemovedBody744_678 RemovedBody744_683

def RemovedBody744_685 : StackLang.HolProg 64 :=
.seq RemovedBody744_677 RemovedBody744_684

def RemovedBody744_686 : StackLang.HolProg 64 :=
.seq RemovedBody744_676 RemovedBody744_685

def RemovedBody744_687 : StackLang.HolProg 64 :=
.seq RemovedBody744_675 RemovedBody744_686

def RemovedBody744_688 : StackLang.HolProg 64 :=
.seq RemovedBody744_674 RemovedBody744_687

def RemovedBody744_689 : StackLang.HolProg 64 :=
.seq RemovedBody744_673 RemovedBody744_688

def RemovedBody744_690 : StackLang.HolProg 64 :=
.seq RemovedBody744_364 RemovedBody744_689

def RemovedBody744_691 : StackLang.HolProg 64 :=
.seq RemovedBody744_363 RemovedBody744_690

def RemovedBody744_692 : StackLang.HolProg 64 :=
.loop RemovedBody744_691

def RemovedBody744_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody744_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_697 : StackLang.HolProg 64 :=
.seq RemovedBody744_695 RemovedBody744_696

def RemovedBody744_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody744_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody744_700 : StackLang.HolProg 64 :=
.seq RemovedBody744_698 RemovedBody744_699

def RemovedBody744_701 : StackLang.HolProg 64 :=
.seq RemovedBody744_697 RemovedBody744_700

def RemovedBody744_702 : StackLang.HolProg 64 :=
.seq RemovedBody744_694 RemovedBody744_701

def RemovedBody744_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3302#64)

def RemovedBody744_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_706 : StackLang.HolProg 64 :=
.seq RemovedBody744_704 RemovedBody744_705

def RemovedBody744_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody744_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody744_710 : StackLang.HolProg 64 :=
.seq RemovedBody744_708 RemovedBody744_709

def RemovedBody744_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_712 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody744_710 RemovedBody744_711

def RemovedBody744_713 : StackLang.HolProg 64 :=
.seq RemovedBody744_707 RemovedBody744_712

def RemovedBody744_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody744_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 744 17

def RemovedBody744_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody744_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody744_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody744_723 : StackLang.HolProg 64 :=
.seq RemovedBody744_721 RemovedBody744_722

def RemovedBody744_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody744_725 : StackLang.HolProg 64 :=
.seq RemovedBody744_723 RemovedBody744_724

def RemovedBody744_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_727 : StackLang.HolProg 64 :=
.seq RemovedBody744_725 RemovedBody744_726

def RemovedBody744_728 : StackLang.HolProg 64 :=
.seq RemovedBody744_720 RemovedBody744_727

def RemovedBody744_729 : StackLang.HolProg 64 :=
.seq RemovedBody744_719 RemovedBody744_728

def RemovedBody744_730 : StackLang.HolProg 64 :=
.seq RemovedBody744_718 RemovedBody744_729

def RemovedBody744_731 : StackLang.HolProg 64 :=
.seq RemovedBody744_717 RemovedBody744_730

def RemovedBody744_732 : StackLang.HolProg 64 :=
.seq RemovedBody744_716 RemovedBody744_731

def RemovedBody744_733 : StackLang.HolProg 64 :=
.seq RemovedBody744_715 RemovedBody744_732

def RemovedBody744_734 : StackLang.HolProg 64 :=
.seq RemovedBody744_714 RemovedBody744_733

def RemovedBody744_735 : StackLang.HolProg 64 :=
.seq RemovedBody744_713 RemovedBody744_734

def RemovedBody744_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody744_743 : StackLang.HolProg 64 :=
.seq RemovedBody744_741 RemovedBody744_742

def RemovedBody744_744 : StackLang.HolProg 64 :=
.seq RemovedBody744_740 RemovedBody744_743

def RemovedBody744_745 : StackLang.HolProg 64 :=
.seq RemovedBody744_739 RemovedBody744_744

def RemovedBody744_746 : StackLang.HolProg 64 :=
.seq RemovedBody744_738 RemovedBody744_745

def RemovedBody744_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody744_748 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody744_749 : StackLang.HolProg 64 :=
.seq RemovedBody744_747 RemovedBody744_748

def RemovedBody744_750 : StackLang.HolProg 64 :=
.call (some (RemovedBody744_746, 0, 744, 16)) (Sum.inl 729) (some (RemovedBody744_749, 744, 17))

def RemovedBody744_751 : StackLang.HolProg 64 :=
.seq RemovedBody744_737 RemovedBody744_750

def RemovedBody744_752 : StackLang.HolProg 64 :=
.seq RemovedBody744_736 RemovedBody744_751

def RemovedBody744_753 : StackLang.HolProg 64 :=
.seq RemovedBody744_735 RemovedBody744_752

def RemovedBody744_754 : StackLang.HolProg 64 :=
.seq RemovedBody744_706 RemovedBody744_753

def RemovedBody744_755 : StackLang.HolProg 64 :=
.seq RemovedBody744_703 RemovedBody744_754

def RemovedBody744_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody744_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3303#64)

def RemovedBody744_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_761 : StackLang.HolProg 64 :=
.seq RemovedBody744_759 RemovedBody744_760

def RemovedBody744_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody744_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody744_765 : StackLang.HolProg 64 :=
.seq RemovedBody744_763 RemovedBody744_764

def RemovedBody744_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_767 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody744_765 RemovedBody744_766

def RemovedBody744_768 : StackLang.HolProg 64 :=
.seq RemovedBody744_762 RemovedBody744_767

def RemovedBody744_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody744_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody744_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 744 19

def RemovedBody744_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody744_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody744_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody744_778 : StackLang.HolProg 64 :=
.seq RemovedBody744_776 RemovedBody744_777

def RemovedBody744_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody744_780 : StackLang.HolProg 64 :=
.seq RemovedBody744_778 RemovedBody744_779

def RemovedBody744_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_782 : StackLang.HolProg 64 :=
.seq RemovedBody744_780 RemovedBody744_781

def RemovedBody744_783 : StackLang.HolProg 64 :=
.seq RemovedBody744_775 RemovedBody744_782

def RemovedBody744_784 : StackLang.HolProg 64 :=
.seq RemovedBody744_774 RemovedBody744_783

def RemovedBody744_785 : StackLang.HolProg 64 :=
.seq RemovedBody744_773 RemovedBody744_784

def RemovedBody744_786 : StackLang.HolProg 64 :=
.seq RemovedBody744_772 RemovedBody744_785

def RemovedBody744_787 : StackLang.HolProg 64 :=
.seq RemovedBody744_771 RemovedBody744_786

def RemovedBody744_788 : StackLang.HolProg 64 :=
.seq RemovedBody744_770 RemovedBody744_787

def RemovedBody744_789 : StackLang.HolProg 64 :=
.seq RemovedBody744_769 RemovedBody744_788

def RemovedBody744_790 : StackLang.HolProg 64 :=
.seq RemovedBody744_768 RemovedBody744_789

def RemovedBody744_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody744_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody744_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody744_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_798 : StackLang.HolProg 64 :=
.seq RemovedBody744_796 RemovedBody744_797

def RemovedBody744_799 : StackLang.HolProg 64 :=
.seq RemovedBody744_795 RemovedBody744_798

def RemovedBody744_800 : StackLang.HolProg 64 :=
.seq RemovedBody744_794 RemovedBody744_799

def RemovedBody744_801 : StackLang.HolProg 64 :=
.seq RemovedBody744_793 RemovedBody744_800

def RemovedBody744_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody744_803 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody744_804 : StackLang.HolProg 64 :=
.seq RemovedBody744_802 RemovedBody744_803

def RemovedBody744_805 : StackLang.HolProg 64 :=
.call (some (RemovedBody744_801, 0, 744, 18)) (Sum.inl 70) (some (RemovedBody744_804, 744, 19))

def RemovedBody744_806 : StackLang.HolProg 64 :=
.seq RemovedBody744_792 RemovedBody744_805

def RemovedBody744_807 : StackLang.HolProg 64 :=
.seq RemovedBody744_791 RemovedBody744_806

def RemovedBody744_808 : StackLang.HolProg 64 :=
.seq RemovedBody744_790 RemovedBody744_807

def RemovedBody744_809 : StackLang.HolProg 64 :=
.seq RemovedBody744_761 RemovedBody744_808

def RemovedBody744_810 : StackLang.HolProg 64 :=
.seq RemovedBody744_758 RemovedBody744_809

def RemovedBody744_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody744_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody744_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody744_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def RemovedBody744_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody744_816 : StackLang.HolProg 64 :=
.seq RemovedBody744_814 RemovedBody744_815

def RemovedBody744_817 : StackLang.HolProg 64 :=
.seq RemovedBody744_813 RemovedBody744_816

def RemovedBody744_818 : StackLang.HolProg 64 :=
.seq RemovedBody744_812 RemovedBody744_817

def RemovedBody744_819 : StackLang.HolProg 64 :=
.seq RemovedBody744_811 RemovedBody744_818

def RemovedBody744_820 : StackLang.HolProg 64 :=
.seq RemovedBody744_810 RemovedBody744_819

def RemovedBody744_821 : StackLang.HolProg 64 :=
.seq RemovedBody744_757 RemovedBody744_820

def RemovedBody744_822 : StackLang.HolProg 64 :=
.seq RemovedBody744_756 RemovedBody744_821

def RemovedBody744_823 : StackLang.HolProg 64 :=
.seq RemovedBody744_755 RemovedBody744_822

def RemovedBody744_824 : StackLang.HolProg 64 :=
.seq RemovedBody744_702 RemovedBody744_823

def RemovedBody744_825 : StackLang.HolProg 64 :=
.seq RemovedBody744_693 RemovedBody744_824

def RemovedBody744_826 : StackLang.HolProg 64 :=
.seq RemovedBody744_692 RemovedBody744_825

def RemovedBody744_827 : StackLang.HolProg 64 :=
.seq RemovedBody744_362 RemovedBody744_826

def RemovedBody744_828 : StackLang.HolProg 64 :=
.seq RemovedBody744_361 RemovedBody744_827

def RemovedBody744_829 : StackLang.HolProg 64 :=
.seq RemovedBody744_360 RemovedBody744_828

def RemovedBody744_830 : StackLang.HolProg 64 :=
.seq RemovedBody744_359 RemovedBody744_829

def RemovedBody744_831 : StackLang.HolProg 64 :=
.seq RemovedBody744_358 RemovedBody744_830

def RemovedBody744_832 : StackLang.HolProg 64 :=
.seq RemovedBody744_357 RemovedBody744_831

def RemovedBody744_833 : StackLang.HolProg 64 :=
.seq RemovedBody744_356 RemovedBody744_832

def RemovedBody744_834 : StackLang.HolProg 64 :=
.seq RemovedBody744_275 RemovedBody744_833

def RemovedBody744_835 : StackLang.HolProg 64 :=
.seq RemovedBody744_272 RemovedBody744_834

def RemovedBody744_836 : StackLang.HolProg 64 :=
.seq RemovedBody744_271 RemovedBody744_835

def RemovedBody744_837 : StackLang.HolProg 64 :=
.seq RemovedBody744_218 RemovedBody744_836

def RemovedBody744_838 : StackLang.HolProg 64 :=
.seq RemovedBody744_211 RemovedBody744_837

def RemovedBody744_839 : StackLang.HolProg 64 :=
.seq RemovedBody744_210 RemovedBody744_838

def RemovedBody744_840 : StackLang.HolProg 64 :=
.seq RemovedBody744_127 RemovedBody744_839

def RemovedBody744_841 : StackLang.HolProg 64 :=
.seq RemovedBody744_126 RemovedBody744_840

def RemovedBody744_842 : StackLang.HolProg 64 :=
.seq RemovedBody744_125 RemovedBody744_841

def RemovedBody744_843 : StackLang.HolProg 64 :=
.seq RemovedBody744_124 RemovedBody744_842

def RemovedBody744_844 : StackLang.HolProg 64 :=
.seq RemovedBody744_71 RemovedBody744_843

def RemovedBody744_845 : StackLang.HolProg 64 :=
.seq RemovedBody744_70 RemovedBody744_844

def RemovedBody744_846 : StackLang.HolProg 64 :=
.seq RemovedBody744_69 RemovedBody744_845

def RemovedBody744_847 : StackLang.HolProg 64 :=
.seq RemovedBody744_68 RemovedBody744_846

def RemovedBody744_848 : StackLang.HolProg 64 :=
.seq RemovedBody744_15 RemovedBody744_847

def RemovedBody744_849 : StackLang.HolProg 64 :=
.seq RemovedBody744_6 RemovedBody744_848

def Removed744 : Nat × StackLang.HolProg 64 := (744, RemovedBody744_849)
theorem Removed744_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc744 = Removed744 := by
  kernel_rfl
#print axioms Removed744_eq
end InitECandidate.Proofs.BackendStages
