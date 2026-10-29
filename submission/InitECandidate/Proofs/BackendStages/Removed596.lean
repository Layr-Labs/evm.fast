import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc596
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody596_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody596_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody596_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody596_3 : StackLang.HolProg 64 :=
.seq RemovedBody596_1 RemovedBody596_2

def RemovedBody596_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody596_3 RemovedBody596_4

def RemovedBody596_6 : StackLang.HolProg 64 :=
.seq RemovedBody596_0 RemovedBody596_5

def RemovedBody596_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody596_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody596_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody596_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551360#64))

def RemovedBody596_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody596_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody596_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody596_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody596_16 : StackLang.HolProg 64 :=
.seq RemovedBody596_14 RemovedBody596_15

def RemovedBody596_17 : StackLang.HolProg 64 :=
.seq RemovedBody596_13 RemovedBody596_16

def RemovedBody596_18 : StackLang.HolProg 64 :=
.seq RemovedBody596_12 RemovedBody596_17

def RemovedBody596_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2262#64)

def RemovedBody596_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody596_22 : StackLang.HolProg 64 :=
.seq RemovedBody596_20 RemovedBody596_21

def RemovedBody596_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody596_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody596_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody596_26 : StackLang.HolProg 64 :=
.seq RemovedBody596_24 RemovedBody596_25

def RemovedBody596_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody596_26 RemovedBody596_27

def RemovedBody596_29 : StackLang.HolProg 64 :=
.seq RemovedBody596_23 RemovedBody596_28

def RemovedBody596_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody596_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody596_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 596 3

def RemovedBody596_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody596_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody596_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody596_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody596_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody596_39 : StackLang.HolProg 64 :=
.seq RemovedBody596_37 RemovedBody596_38

def RemovedBody596_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody596_41 : StackLang.HolProg 64 :=
.seq RemovedBody596_39 RemovedBody596_40

def RemovedBody596_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody596_43 : StackLang.HolProg 64 :=
.seq RemovedBody596_41 RemovedBody596_42

def RemovedBody596_44 : StackLang.HolProg 64 :=
.seq RemovedBody596_36 RemovedBody596_43

def RemovedBody596_45 : StackLang.HolProg 64 :=
.seq RemovedBody596_35 RemovedBody596_44

def RemovedBody596_46 : StackLang.HolProg 64 :=
.seq RemovedBody596_34 RemovedBody596_45

def RemovedBody596_47 : StackLang.HolProg 64 :=
.seq RemovedBody596_33 RemovedBody596_46

def RemovedBody596_48 : StackLang.HolProg 64 :=
.seq RemovedBody596_32 RemovedBody596_47

def RemovedBody596_49 : StackLang.HolProg 64 :=
.seq RemovedBody596_31 RemovedBody596_48

def RemovedBody596_50 : StackLang.HolProg 64 :=
.seq RemovedBody596_30 RemovedBody596_49

def RemovedBody596_51 : StackLang.HolProg 64 :=
.seq RemovedBody596_29 RemovedBody596_50

def RemovedBody596_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody596_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody596_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody596_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody596_59 : StackLang.HolProg 64 :=
.seq RemovedBody596_57 RemovedBody596_58

def RemovedBody596_60 : StackLang.HolProg 64 :=
.seq RemovedBody596_56 RemovedBody596_59

def RemovedBody596_61 : StackLang.HolProg 64 :=
.seq RemovedBody596_55 RemovedBody596_60

def RemovedBody596_62 : StackLang.HolProg 64 :=
.seq RemovedBody596_54 RemovedBody596_61

def RemovedBody596_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody596_65 : StackLang.HolProg 64 :=
.seq RemovedBody596_63 RemovedBody596_64

def RemovedBody596_66 : StackLang.HolProg 64 :=
.call (some (RemovedBody596_62, 0, 596, 2)) (Sum.inl 489) (some (RemovedBody596_65, 596, 3))

def RemovedBody596_67 : StackLang.HolProg 64 :=
.seq RemovedBody596_53 RemovedBody596_66

def RemovedBody596_68 : StackLang.HolProg 64 :=
.seq RemovedBody596_52 RemovedBody596_67

def RemovedBody596_69 : StackLang.HolProg 64 :=
.seq RemovedBody596_51 RemovedBody596_68

def RemovedBody596_70 : StackLang.HolProg 64 :=
.seq RemovedBody596_22 RemovedBody596_69

def RemovedBody596_71 : StackLang.HolProg 64 :=
.seq RemovedBody596_19 RemovedBody596_70

def RemovedBody596_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody596_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 104#64)

def RemovedBody596_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody596_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2263#64)

def RemovedBody596_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody596_78 : StackLang.HolProg 64 :=
.seq RemovedBody596_76 RemovedBody596_77

def RemovedBody596_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody596_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody596_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody596_82 : StackLang.HolProg 64 :=
.seq RemovedBody596_80 RemovedBody596_81

def RemovedBody596_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody596_82 RemovedBody596_83

def RemovedBody596_85 : StackLang.HolProg 64 :=
.seq RemovedBody596_79 RemovedBody596_84

def RemovedBody596_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody596_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody596_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 596 5

def RemovedBody596_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody596_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody596_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody596_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody596_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody596_95 : StackLang.HolProg 64 :=
.seq RemovedBody596_93 RemovedBody596_94

def RemovedBody596_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody596_97 : StackLang.HolProg 64 :=
.seq RemovedBody596_95 RemovedBody596_96

def RemovedBody596_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody596_99 : StackLang.HolProg 64 :=
.seq RemovedBody596_97 RemovedBody596_98

def RemovedBody596_100 : StackLang.HolProg 64 :=
.seq RemovedBody596_92 RemovedBody596_99

def RemovedBody596_101 : StackLang.HolProg 64 :=
.seq RemovedBody596_91 RemovedBody596_100

def RemovedBody596_102 : StackLang.HolProg 64 :=
.seq RemovedBody596_90 RemovedBody596_101

def RemovedBody596_103 : StackLang.HolProg 64 :=
.seq RemovedBody596_89 RemovedBody596_102

def RemovedBody596_104 : StackLang.HolProg 64 :=
.seq RemovedBody596_88 RemovedBody596_103

def RemovedBody596_105 : StackLang.HolProg 64 :=
.seq RemovedBody596_87 RemovedBody596_104

def RemovedBody596_106 : StackLang.HolProg 64 :=
.seq RemovedBody596_86 RemovedBody596_105

def RemovedBody596_107 : StackLang.HolProg 64 :=
.seq RemovedBody596_85 RemovedBody596_106

def RemovedBody596_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody596_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody596_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody596_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody596_115 : StackLang.HolProg 64 :=
.seq RemovedBody596_113 RemovedBody596_114

def RemovedBody596_116 : StackLang.HolProg 64 :=
.seq RemovedBody596_112 RemovedBody596_115

def RemovedBody596_117 : StackLang.HolProg 64 :=
.seq RemovedBody596_111 RemovedBody596_116

def RemovedBody596_118 : StackLang.HolProg 64 :=
.seq RemovedBody596_110 RemovedBody596_117

def RemovedBody596_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody596_121 : StackLang.HolProg 64 :=
.seq RemovedBody596_119 RemovedBody596_120

def RemovedBody596_122 : StackLang.HolProg 64 :=
.call (some (RemovedBody596_118, 0, 596, 4)) (Sum.inl 74) (some (RemovedBody596_121, 596, 5))

def RemovedBody596_123 : StackLang.HolProg 64 :=
.seq RemovedBody596_109 RemovedBody596_122

def RemovedBody596_124 : StackLang.HolProg 64 :=
.seq RemovedBody596_108 RemovedBody596_123

def RemovedBody596_125 : StackLang.HolProg 64 :=
.seq RemovedBody596_107 RemovedBody596_124

def RemovedBody596_126 : StackLang.HolProg 64 :=
.seq RemovedBody596_78 RemovedBody596_125

def RemovedBody596_127 : StackLang.HolProg 64 :=
.seq RemovedBody596_75 RemovedBody596_126

def RemovedBody596_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody596_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody596_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 104#64)

def RemovedBody596_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody596_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2264#64)

def RemovedBody596_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody596_135 : StackLang.HolProg 64 :=
.seq RemovedBody596_133 RemovedBody596_134

def RemovedBody596_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody596_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody596_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody596_139 : StackLang.HolProg 64 :=
.seq RemovedBody596_137 RemovedBody596_138

def RemovedBody596_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_141 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody596_139 RemovedBody596_140

def RemovedBody596_142 : StackLang.HolProg 64 :=
.seq RemovedBody596_136 RemovedBody596_141

def RemovedBody596_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody596_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody596_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 596 7

def RemovedBody596_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody596_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody596_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody596_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody596_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody596_152 : StackLang.HolProg 64 :=
.seq RemovedBody596_150 RemovedBody596_151

def RemovedBody596_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody596_154 : StackLang.HolProg 64 :=
.seq RemovedBody596_152 RemovedBody596_153

def RemovedBody596_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody596_156 : StackLang.HolProg 64 :=
.seq RemovedBody596_154 RemovedBody596_155

def RemovedBody596_157 : StackLang.HolProg 64 :=
.seq RemovedBody596_149 RemovedBody596_156

def RemovedBody596_158 : StackLang.HolProg 64 :=
.seq RemovedBody596_148 RemovedBody596_157

def RemovedBody596_159 : StackLang.HolProg 64 :=
.seq RemovedBody596_147 RemovedBody596_158

def RemovedBody596_160 : StackLang.HolProg 64 :=
.seq RemovedBody596_146 RemovedBody596_159

def RemovedBody596_161 : StackLang.HolProg 64 :=
.seq RemovedBody596_145 RemovedBody596_160

def RemovedBody596_162 : StackLang.HolProg 64 :=
.seq RemovedBody596_144 RemovedBody596_161

def RemovedBody596_163 : StackLang.HolProg 64 :=
.seq RemovedBody596_143 RemovedBody596_162

def RemovedBody596_164 : StackLang.HolProg 64 :=
.seq RemovedBody596_142 RemovedBody596_163

def RemovedBody596_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody596_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody596_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody596_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody596_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody596_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody596_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody596_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody596_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody596_177 : StackLang.HolProg 64 :=
.seq RemovedBody596_175 RemovedBody596_176

def RemovedBody596_178 : StackLang.HolProg 64 :=
.seq RemovedBody596_174 RemovedBody596_177

def RemovedBody596_179 : StackLang.HolProg 64 :=
.seq RemovedBody596_173 RemovedBody596_178

def RemovedBody596_180 : StackLang.HolProg 64 :=
.seq RemovedBody596_172 RemovedBody596_179

def RemovedBody596_181 : StackLang.HolProg 64 :=
.seq RemovedBody596_171 RemovedBody596_180

def RemovedBody596_182 : StackLang.HolProg 64 :=
.seq RemovedBody596_170 RemovedBody596_181

def RemovedBody596_183 : StackLang.HolProg 64 :=
.seq RemovedBody596_169 RemovedBody596_182

def RemovedBody596_184 : StackLang.HolProg 64 :=
.seq RemovedBody596_168 RemovedBody596_183

def RemovedBody596_185 : StackLang.HolProg 64 :=
.seq RemovedBody596_167 RemovedBody596_184

def RemovedBody596_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody596_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody596_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody596_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody596_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody596_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody596_192 : StackLang.HolProg 64 :=
.seq RemovedBody596_190 RemovedBody596_191

def RemovedBody596_193 : StackLang.HolProg 64 :=
.seq RemovedBody596_189 RemovedBody596_192

def RemovedBody596_194 : StackLang.HolProg 64 :=
.seq RemovedBody596_188 RemovedBody596_193

def RemovedBody596_195 : StackLang.HolProg 64 :=
.seq RemovedBody596_187 RemovedBody596_194

def RemovedBody596_196 : StackLang.HolProg 64 :=
.seq RemovedBody596_186 RemovedBody596_195

def RemovedBody596_197 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody596_198 : StackLang.HolProg 64 :=
.seq RemovedBody596_196 RemovedBody596_197

def RemovedBody596_199 : StackLang.HolProg 64 :=
.call (some (RemovedBody596_185, 0, 596, 6)) (Sum.inl 78) (some (RemovedBody596_198, 596, 7))

def RemovedBody596_200 : StackLang.HolProg 64 :=
.seq RemovedBody596_166 RemovedBody596_199

def RemovedBody596_201 : StackLang.HolProg 64 :=
.seq RemovedBody596_165 RemovedBody596_200

def RemovedBody596_202 : StackLang.HolProg 64 :=
.seq RemovedBody596_164 RemovedBody596_201

def RemovedBody596_203 : StackLang.HolProg 64 :=
.seq RemovedBody596_135 RemovedBody596_202

def RemovedBody596_204 : StackLang.HolProg 64 :=
.seq RemovedBody596_132 RemovedBody596_203

def RemovedBody596_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody596_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody596_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody596_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody596_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody596_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody596_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def RemovedBody596_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody596_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody596_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody596_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody596_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody596_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def RemovedBody596_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody596_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551328#64)))

def RemovedBody596_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody596_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody596_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody596_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody596_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def RemovedBody596_235 : StackLang.HolProg 64 :=
.seq RemovedBody596_233 RemovedBody596_234

def RemovedBody596_236 : StackLang.HolProg 64 :=
.seq RemovedBody596_232 RemovedBody596_235

def RemovedBody596_237 : StackLang.HolProg 64 :=
.seq RemovedBody596_231 RemovedBody596_236

def RemovedBody596_238 : StackLang.HolProg 64 :=
.seq RemovedBody596_230 RemovedBody596_237

def RemovedBody596_239 : StackLang.HolProg 64 :=
.seq RemovedBody596_229 RemovedBody596_238

def RemovedBody596_240 : StackLang.HolProg 64 :=
.seq RemovedBody596_228 RemovedBody596_239

def RemovedBody596_241 : StackLang.HolProg 64 :=
.seq RemovedBody596_227 RemovedBody596_240

def RemovedBody596_242 : StackLang.HolProg 64 :=
.seq RemovedBody596_226 RemovedBody596_241

def RemovedBody596_243 : StackLang.HolProg 64 :=
.seq RemovedBody596_225 RemovedBody596_242

def RemovedBody596_244 : StackLang.HolProg 64 :=
.seq RemovedBody596_224 RemovedBody596_243

def RemovedBody596_245 : StackLang.HolProg 64 :=
.seq RemovedBody596_223 RemovedBody596_244

def RemovedBody596_246 : StackLang.HolProg 64 :=
.seq RemovedBody596_222 RemovedBody596_245

def RemovedBody596_247 : StackLang.HolProg 64 :=
.seq RemovedBody596_221 RemovedBody596_246

def RemovedBody596_248 : StackLang.HolProg 64 :=
.seq RemovedBody596_220 RemovedBody596_247

def RemovedBody596_249 : StackLang.HolProg 64 :=
.seq RemovedBody596_219 RemovedBody596_248

def RemovedBody596_250 : StackLang.HolProg 64 :=
.seq RemovedBody596_218 RemovedBody596_249

def RemovedBody596_251 : StackLang.HolProg 64 :=
.seq RemovedBody596_217 RemovedBody596_250

def RemovedBody596_252 : StackLang.HolProg 64 :=
.seq RemovedBody596_216 RemovedBody596_251

def RemovedBody596_253 : StackLang.HolProg 64 :=
.seq RemovedBody596_215 RemovedBody596_252

def RemovedBody596_254 : StackLang.HolProg 64 :=
.seq RemovedBody596_214 RemovedBody596_253

def RemovedBody596_255 : StackLang.HolProg 64 :=
.seq RemovedBody596_213 RemovedBody596_254

def RemovedBody596_256 : StackLang.HolProg 64 :=
.seq RemovedBody596_212 RemovedBody596_255

def RemovedBody596_257 : StackLang.HolProg 64 :=
.seq RemovedBody596_211 RemovedBody596_256

def RemovedBody596_258 : StackLang.HolProg 64 :=
.seq RemovedBody596_210 RemovedBody596_257

def RemovedBody596_259 : StackLang.HolProg 64 :=
.seq RemovedBody596_209 RemovedBody596_258

def RemovedBody596_260 : StackLang.HolProg 64 :=
.seq RemovedBody596_208 RemovedBody596_259

def RemovedBody596_261 : StackLang.HolProg 64 :=
.seq RemovedBody596_207 RemovedBody596_260

def RemovedBody596_262 : StackLang.HolProg 64 :=
.seq RemovedBody596_206 RemovedBody596_261

def RemovedBody596_263 : StackLang.HolProg 64 :=
.seq RemovedBody596_205 RemovedBody596_262

def RemovedBody596_264 : StackLang.HolProg 64 :=
.seq RemovedBody596_204 RemovedBody596_263

def RemovedBody596_265 : StackLang.HolProg 64 :=
.seq RemovedBody596_131 RemovedBody596_264

def RemovedBody596_266 : StackLang.HolProg 64 :=
.seq RemovedBody596_130 RemovedBody596_265

def RemovedBody596_267 : StackLang.HolProg 64 :=
.seq RemovedBody596_129 RemovedBody596_266

def RemovedBody596_268 : StackLang.HolProg 64 :=
.seq RemovedBody596_128 RemovedBody596_267

def RemovedBody596_269 : StackLang.HolProg 64 :=
.seq RemovedBody596_127 RemovedBody596_268

def RemovedBody596_270 : StackLang.HolProg 64 :=
.seq RemovedBody596_74 RemovedBody596_269

def RemovedBody596_271 : StackLang.HolProg 64 :=
.seq RemovedBody596_73 RemovedBody596_270

def RemovedBody596_272 : StackLang.HolProg 64 :=
.seq RemovedBody596_72 RemovedBody596_271

def RemovedBody596_273 : StackLang.HolProg 64 :=
.seq RemovedBody596_71 RemovedBody596_272

def RemovedBody596_274 : StackLang.HolProg 64 :=
.seq RemovedBody596_18 RemovedBody596_273

def RemovedBody596_275 : StackLang.HolProg 64 :=
.seq RemovedBody596_11 RemovedBody596_274

def RemovedBody596_276 : StackLang.HolProg 64 :=
.seq RemovedBody596_10 RemovedBody596_275

def RemovedBody596_277 : StackLang.HolProg 64 :=
.seq RemovedBody596_9 RemovedBody596_276

def RemovedBody596_278 : StackLang.HolProg 64 :=
.seq RemovedBody596_8 RemovedBody596_277

def RemovedBody596_279 : StackLang.HolProg 64 :=
.seq RemovedBody596_7 RemovedBody596_278

def RemovedBody596_280 : StackLang.HolProg 64 :=
.seq RemovedBody596_6 RemovedBody596_279

def Removed596 : Nat × StackLang.HolProg 64 := (596, RemovedBody596_280)
theorem Removed596_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc596 = Removed596 := by
  kernel_rfl
#print axioms Removed596_eq
end InitECandidate.Proofs.BackendStages
