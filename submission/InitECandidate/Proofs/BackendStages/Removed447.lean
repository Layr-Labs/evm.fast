import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc447
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody447_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody447_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody447_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody447_3 : StackLang.HolProg 64 :=
.seq RemovedBody447_1 RemovedBody447_2

def RemovedBody447_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody447_3 RemovedBody447_4

def RemovedBody447_6 : StackLang.HolProg 64 :=
.seq RemovedBody447_0 RemovedBody447_5

def RemovedBody447_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody447_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody447_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody447_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody447_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551440#64))

def RemovedBody447_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody447_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody447_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody447_15 : StackLang.HolProg 64 :=
.seq RemovedBody447_13 RemovedBody447_14

def RemovedBody447_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1346#64)

def RemovedBody447_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody447_19 : StackLang.HolProg 64 :=
.seq RemovedBody447_17 RemovedBody447_18

def RemovedBody447_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody447_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody447_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody447_23 : StackLang.HolProg 64 :=
.seq RemovedBody447_21 RemovedBody447_22

def RemovedBody447_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody447_23 RemovedBody447_24

def RemovedBody447_26 : StackLang.HolProg 64 :=
.seq RemovedBody447_20 RemovedBody447_25

def RemovedBody447_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody447_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody447_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 447 3

def RemovedBody447_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody447_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody447_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody447_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody447_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody447_36 : StackLang.HolProg 64 :=
.seq RemovedBody447_34 RemovedBody447_35

def RemovedBody447_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody447_38 : StackLang.HolProg 64 :=
.seq RemovedBody447_36 RemovedBody447_37

def RemovedBody447_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody447_40 : StackLang.HolProg 64 :=
.seq RemovedBody447_38 RemovedBody447_39

def RemovedBody447_41 : StackLang.HolProg 64 :=
.seq RemovedBody447_33 RemovedBody447_40

def RemovedBody447_42 : StackLang.HolProg 64 :=
.seq RemovedBody447_32 RemovedBody447_41

def RemovedBody447_43 : StackLang.HolProg 64 :=
.seq RemovedBody447_31 RemovedBody447_42

def RemovedBody447_44 : StackLang.HolProg 64 :=
.seq RemovedBody447_30 RemovedBody447_43

def RemovedBody447_45 : StackLang.HolProg 64 :=
.seq RemovedBody447_29 RemovedBody447_44

def RemovedBody447_46 : StackLang.HolProg 64 :=
.seq RemovedBody447_28 RemovedBody447_45

def RemovedBody447_47 : StackLang.HolProg 64 :=
.seq RemovedBody447_27 RemovedBody447_46

def RemovedBody447_48 : StackLang.HolProg 64 :=
.seq RemovedBody447_26 RemovedBody447_47

def RemovedBody447_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody447_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody447_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody447_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody447_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody447_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody447_58 : StackLang.HolProg 64 :=
.seq RemovedBody447_56 RemovedBody447_57

def RemovedBody447_59 : StackLang.HolProg 64 :=
.seq RemovedBody447_55 RemovedBody447_58

def RemovedBody447_60 : StackLang.HolProg 64 :=
.seq RemovedBody447_54 RemovedBody447_59

def RemovedBody447_61 : StackLang.HolProg 64 :=
.seq RemovedBody447_53 RemovedBody447_60

def RemovedBody447_62 : StackLang.HolProg 64 :=
.seq RemovedBody447_52 RemovedBody447_61

def RemovedBody447_63 : StackLang.HolProg 64 :=
.seq RemovedBody447_51 RemovedBody447_62

def RemovedBody447_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody447_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody447_66 : StackLang.HolProg 64 :=
.seq RemovedBody447_64 RemovedBody447_65

def RemovedBody447_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody447_68 : StackLang.HolProg 64 :=
.seq RemovedBody447_66 RemovedBody447_67

def RemovedBody447_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody447_63, 0, 447, 2)) (Sum.inl 186) (some (RemovedBody447_68, 447, 3))

def RemovedBody447_70 : StackLang.HolProg 64 :=
.seq RemovedBody447_50 RemovedBody447_69

def RemovedBody447_71 : StackLang.HolProg 64 :=
.seq RemovedBody447_49 RemovedBody447_70

def RemovedBody447_72 : StackLang.HolProg 64 :=
.seq RemovedBody447_48 RemovedBody447_71

def RemovedBody447_73 : StackLang.HolProg 64 :=
.seq RemovedBody447_19 RemovedBody447_72

def RemovedBody447_74 : StackLang.HolProg 64 :=
.seq RemovedBody447_16 RemovedBody447_73

def RemovedBody447_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody447_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody447_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody447_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody447_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody447_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody447_82 : StackLang.HolProg 64 :=
.seq RemovedBody447_80 RemovedBody447_81

def RemovedBody447_83 : StackLang.HolProg 64 :=
.seq RemovedBody447_79 RemovedBody447_82

def RemovedBody447_84 : StackLang.HolProg 64 :=
.seq RemovedBody447_78 RemovedBody447_83

def RemovedBody447_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody447_84 RemovedBody447_85

def RemovedBody447_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody447_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody447_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody447_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody447_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody447_92 : StackLang.HolProg 64 :=
.seq RemovedBody447_90 RemovedBody447_91

def RemovedBody447_93 : StackLang.HolProg 64 :=
.seq RemovedBody447_89 RemovedBody447_92

def RemovedBody447_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1347#64)

def RemovedBody447_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody447_97 : StackLang.HolProg 64 :=
.seq RemovedBody447_95 RemovedBody447_96

def RemovedBody447_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody447_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody447_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody447_101 : StackLang.HolProg 64 :=
.seq RemovedBody447_99 RemovedBody447_100

def RemovedBody447_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody447_101 RemovedBody447_102

def RemovedBody447_104 : StackLang.HolProg 64 :=
.seq RemovedBody447_98 RemovedBody447_103

def RemovedBody447_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody447_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody447_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 447 5

def RemovedBody447_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody447_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody447_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody447_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody447_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody447_114 : StackLang.HolProg 64 :=
.seq RemovedBody447_112 RemovedBody447_113

def RemovedBody447_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody447_116 : StackLang.HolProg 64 :=
.seq RemovedBody447_114 RemovedBody447_115

def RemovedBody447_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody447_118 : StackLang.HolProg 64 :=
.seq RemovedBody447_116 RemovedBody447_117

def RemovedBody447_119 : StackLang.HolProg 64 :=
.seq RemovedBody447_111 RemovedBody447_118

def RemovedBody447_120 : StackLang.HolProg 64 :=
.seq RemovedBody447_110 RemovedBody447_119

def RemovedBody447_121 : StackLang.HolProg 64 :=
.seq RemovedBody447_109 RemovedBody447_120

def RemovedBody447_122 : StackLang.HolProg 64 :=
.seq RemovedBody447_108 RemovedBody447_121

def RemovedBody447_123 : StackLang.HolProg 64 :=
.seq RemovedBody447_107 RemovedBody447_122

def RemovedBody447_124 : StackLang.HolProg 64 :=
.seq RemovedBody447_106 RemovedBody447_123

def RemovedBody447_125 : StackLang.HolProg 64 :=
.seq RemovedBody447_105 RemovedBody447_124

def RemovedBody447_126 : StackLang.HolProg 64 :=
.seq RemovedBody447_104 RemovedBody447_125

def RemovedBody447_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody447_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody447_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody447_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody447_134 : StackLang.HolProg 64 :=
.seq RemovedBody447_132 RemovedBody447_133

def RemovedBody447_135 : StackLang.HolProg 64 :=
.seq RemovedBody447_131 RemovedBody447_134

def RemovedBody447_136 : StackLang.HolProg 64 :=
.seq RemovedBody447_130 RemovedBody447_135

def RemovedBody447_137 : StackLang.HolProg 64 :=
.seq RemovedBody447_129 RemovedBody447_136

def RemovedBody447_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody447_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody447_140 : StackLang.HolProg 64 :=
.seq RemovedBody447_138 RemovedBody447_139

def RemovedBody447_141 : StackLang.HolProg 64 :=
.call (some (RemovedBody447_137, 0, 447, 4)) (Sum.inl 396) (some (RemovedBody447_140, 447, 5))

def RemovedBody447_142 : StackLang.HolProg 64 :=
.seq RemovedBody447_128 RemovedBody447_141

def RemovedBody447_143 : StackLang.HolProg 64 :=
.seq RemovedBody447_127 RemovedBody447_142

def RemovedBody447_144 : StackLang.HolProg 64 :=
.seq RemovedBody447_126 RemovedBody447_143

def RemovedBody447_145 : StackLang.HolProg 64 :=
.seq RemovedBody447_97 RemovedBody447_144

def RemovedBody447_146 : StackLang.HolProg 64 :=
.seq RemovedBody447_94 RemovedBody447_145

def RemovedBody447_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody447_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody447_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1348#64)

def RemovedBody447_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody447_152 : StackLang.HolProg 64 :=
.seq RemovedBody447_150 RemovedBody447_151

def RemovedBody447_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody447_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody447_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody447_156 : StackLang.HolProg 64 :=
.seq RemovedBody447_154 RemovedBody447_155

def RemovedBody447_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_158 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody447_156 RemovedBody447_157

def RemovedBody447_159 : StackLang.HolProg 64 :=
.seq RemovedBody447_153 RemovedBody447_158

def RemovedBody447_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody447_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody447_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 447 7

def RemovedBody447_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody447_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody447_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody447_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody447_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody447_169 : StackLang.HolProg 64 :=
.seq RemovedBody447_167 RemovedBody447_168

def RemovedBody447_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody447_171 : StackLang.HolProg 64 :=
.seq RemovedBody447_169 RemovedBody447_170

def RemovedBody447_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody447_173 : StackLang.HolProg 64 :=
.seq RemovedBody447_171 RemovedBody447_172

def RemovedBody447_174 : StackLang.HolProg 64 :=
.seq RemovedBody447_166 RemovedBody447_173

def RemovedBody447_175 : StackLang.HolProg 64 :=
.seq RemovedBody447_165 RemovedBody447_174

def RemovedBody447_176 : StackLang.HolProg 64 :=
.seq RemovedBody447_164 RemovedBody447_175

def RemovedBody447_177 : StackLang.HolProg 64 :=
.seq RemovedBody447_163 RemovedBody447_176

def RemovedBody447_178 : StackLang.HolProg 64 :=
.seq RemovedBody447_162 RemovedBody447_177

def RemovedBody447_179 : StackLang.HolProg 64 :=
.seq RemovedBody447_161 RemovedBody447_178

def RemovedBody447_180 : StackLang.HolProg 64 :=
.seq RemovedBody447_160 RemovedBody447_179

def RemovedBody447_181 : StackLang.HolProg 64 :=
.seq RemovedBody447_159 RemovedBody447_180

def RemovedBody447_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody447_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody447_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody447_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody447_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody447_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody447_190 : StackLang.HolProg 64 :=
.seq RemovedBody447_188 RemovedBody447_189

def RemovedBody447_191 : StackLang.HolProg 64 :=
.seq RemovedBody447_187 RemovedBody447_190

def RemovedBody447_192 : StackLang.HolProg 64 :=
.seq RemovedBody447_186 RemovedBody447_191

def RemovedBody447_193 : StackLang.HolProg 64 :=
.seq RemovedBody447_185 RemovedBody447_192

def RemovedBody447_194 : StackLang.HolProg 64 :=
.seq RemovedBody447_184 RemovedBody447_193

def RemovedBody447_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody447_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody447_197 : StackLang.HolProg 64 :=
.seq RemovedBody447_195 RemovedBody447_196

def RemovedBody447_198 : StackLang.HolProg 64 :=
.call (some (RemovedBody447_194, 0, 447, 6)) (Sum.inl 398) (some (RemovedBody447_197, 447, 7))

def RemovedBody447_199 : StackLang.HolProg 64 :=
.seq RemovedBody447_183 RemovedBody447_198

def RemovedBody447_200 : StackLang.HolProg 64 :=
.seq RemovedBody447_182 RemovedBody447_199

def RemovedBody447_201 : StackLang.HolProg 64 :=
.seq RemovedBody447_181 RemovedBody447_200

def RemovedBody447_202 : StackLang.HolProg 64 :=
.seq RemovedBody447_152 RemovedBody447_201

def RemovedBody447_203 : StackLang.HolProg 64 :=
.seq RemovedBody447_149 RemovedBody447_202

def RemovedBody447_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody447_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody447_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody447_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody447_208 : StackLang.HolProg 64 :=
.seq RemovedBody447_206 RemovedBody447_207

def RemovedBody447_209 : StackLang.HolProg 64 :=
.seq RemovedBody447_205 RemovedBody447_208

def RemovedBody447_210 : StackLang.HolProg 64 :=
.seq RemovedBody447_204 RemovedBody447_209

def RemovedBody447_211 : StackLang.HolProg 64 :=
.seq RemovedBody447_203 RemovedBody447_210

def RemovedBody447_212 : StackLang.HolProg 64 :=
.seq RemovedBody447_148 RemovedBody447_211

def RemovedBody447_213 : StackLang.HolProg 64 :=
.seq RemovedBody447_147 RemovedBody447_212

def RemovedBody447_214 : StackLang.HolProg 64 :=
.seq RemovedBody447_146 RemovedBody447_213

def RemovedBody447_215 : StackLang.HolProg 64 :=
.seq RemovedBody447_93 RemovedBody447_214

def RemovedBody447_216 : StackLang.HolProg 64 :=
.seq RemovedBody447_88 RemovedBody447_215

def RemovedBody447_217 : StackLang.HolProg 64 :=
.seq RemovedBody447_87 RemovedBody447_216

def RemovedBody447_218 : StackLang.HolProg 64 :=
.seq RemovedBody447_86 RemovedBody447_217

def RemovedBody447_219 : StackLang.HolProg 64 :=
.seq RemovedBody447_77 RemovedBody447_218

def RemovedBody447_220 : StackLang.HolProg 64 :=
.seq RemovedBody447_76 RemovedBody447_219

def RemovedBody447_221 : StackLang.HolProg 64 :=
.seq RemovedBody447_75 RemovedBody447_220

def RemovedBody447_222 : StackLang.HolProg 64 :=
.seq RemovedBody447_74 RemovedBody447_221

def RemovedBody447_223 : StackLang.HolProg 64 :=
.seq RemovedBody447_15 RemovedBody447_222

def RemovedBody447_224 : StackLang.HolProg 64 :=
.seq RemovedBody447_12 RemovedBody447_223

def RemovedBody447_225 : StackLang.HolProg 64 :=
.seq RemovedBody447_11 RemovedBody447_224

def RemovedBody447_226 : StackLang.HolProg 64 :=
.seq RemovedBody447_10 RemovedBody447_225

def RemovedBody447_227 : StackLang.HolProg 64 :=
.seq RemovedBody447_9 RemovedBody447_226

def RemovedBody447_228 : StackLang.HolProg 64 :=
.seq RemovedBody447_8 RemovedBody447_227

def RemovedBody447_229 : StackLang.HolProg 64 :=
.seq RemovedBody447_7 RemovedBody447_228

def RemovedBody447_230 : StackLang.HolProg 64 :=
.seq RemovedBody447_6 RemovedBody447_229

def Removed447 : Nat × StackLang.HolProg 64 := (447, RemovedBody447_230)
theorem Removed447_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc447 = Removed447 := by
  kernel_rfl
#print axioms Removed447_eq
end InitECandidate.Proofs.BackendStages
