import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc537
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody537_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody537_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody537_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody537_3 : StackLang.HolProg 64 :=
.seq RemovedBody537_1 RemovedBody537_2

def RemovedBody537_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody537_3 RemovedBody537_4

def RemovedBody537_6 : StackLang.HolProg 64 :=
.seq RemovedBody537_0 RemovedBody537_5

def RemovedBody537_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody537_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody537_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody537_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody537_11 : StackLang.HolProg 64 :=
.seq RemovedBody537_9 RemovedBody537_10

def RemovedBody537_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1784#64)

def RemovedBody537_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody537_15 : StackLang.HolProg 64 :=
.seq RemovedBody537_13 RemovedBody537_14

def RemovedBody537_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody537_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody537_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody537_19 : StackLang.HolProg 64 :=
.seq RemovedBody537_17 RemovedBody537_18

def RemovedBody537_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody537_19 RemovedBody537_20

def RemovedBody537_22 : StackLang.HolProg 64 :=
.seq RemovedBody537_16 RemovedBody537_21

def RemovedBody537_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody537_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody537_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 537 3

def RemovedBody537_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody537_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody537_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody537_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody537_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody537_32 : StackLang.HolProg 64 :=
.seq RemovedBody537_30 RemovedBody537_31

def RemovedBody537_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody537_34 : StackLang.HolProg 64 :=
.seq RemovedBody537_32 RemovedBody537_33

def RemovedBody537_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody537_36 : StackLang.HolProg 64 :=
.seq RemovedBody537_34 RemovedBody537_35

def RemovedBody537_37 : StackLang.HolProg 64 :=
.seq RemovedBody537_29 RemovedBody537_36

def RemovedBody537_38 : StackLang.HolProg 64 :=
.seq RemovedBody537_28 RemovedBody537_37

def RemovedBody537_39 : StackLang.HolProg 64 :=
.seq RemovedBody537_27 RemovedBody537_38

def RemovedBody537_40 : StackLang.HolProg 64 :=
.seq RemovedBody537_26 RemovedBody537_39

def RemovedBody537_41 : StackLang.HolProg 64 :=
.seq RemovedBody537_25 RemovedBody537_40

def RemovedBody537_42 : StackLang.HolProg 64 :=
.seq RemovedBody537_24 RemovedBody537_41

def RemovedBody537_43 : StackLang.HolProg 64 :=
.seq RemovedBody537_23 RemovedBody537_42

def RemovedBody537_44 : StackLang.HolProg 64 :=
.seq RemovedBody537_22 RemovedBody537_43

def RemovedBody537_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody537_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody537_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody537_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody537_52 : StackLang.HolProg 64 :=
.seq RemovedBody537_50 RemovedBody537_51

def RemovedBody537_53 : StackLang.HolProg 64 :=
.seq RemovedBody537_49 RemovedBody537_52

def RemovedBody537_54 : StackLang.HolProg 64 :=
.seq RemovedBody537_48 RemovedBody537_53

def RemovedBody537_55 : StackLang.HolProg 64 :=
.seq RemovedBody537_47 RemovedBody537_54

def RemovedBody537_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody537_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody537_58 : StackLang.HolProg 64 :=
.seq RemovedBody537_56 RemovedBody537_57

def RemovedBody537_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody537_55, 0, 537, 2)) (Sum.inl 470) (some (RemovedBody537_58, 537, 3))

def RemovedBody537_60 : StackLang.HolProg 64 :=
.seq RemovedBody537_46 RemovedBody537_59

def RemovedBody537_61 : StackLang.HolProg 64 :=
.seq RemovedBody537_45 RemovedBody537_60

def RemovedBody537_62 : StackLang.HolProg 64 :=
.seq RemovedBody537_44 RemovedBody537_61

def RemovedBody537_63 : StackLang.HolProg 64 :=
.seq RemovedBody537_15 RemovedBody537_62

def RemovedBody537_64 : StackLang.HolProg 64 :=
.seq RemovedBody537_12 RemovedBody537_63

def RemovedBody537_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody537_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody537_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody537_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody537_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody537_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody537_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody537_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody537_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody537_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody537_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_78 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody537_79 : StackLang.HolProg 64 :=
.seq RemovedBody537_77 RemovedBody537_78

def RemovedBody537_80 : StackLang.HolProg 64 :=
.seq RemovedBody537_76 RemovedBody537_79

def RemovedBody537_81 : StackLang.HolProg 64 :=
.seq RemovedBody537_75 RemovedBody537_80

def RemovedBody537_82 : StackLang.HolProg 64 :=
.seq RemovedBody537_74 RemovedBody537_81

def RemovedBody537_83 : StackLang.HolProg 64 :=
.seq RemovedBody537_73 RemovedBody537_82

def RemovedBody537_84 : StackLang.HolProg 64 :=
.seq RemovedBody537_72 RemovedBody537_83

def RemovedBody537_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody537_84 RemovedBody537_85

def RemovedBody537_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody537_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody537_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody537_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody537_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody537_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody537_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody537_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody537_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody537_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody537_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody537_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody537_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1785#64)

def RemovedBody537_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody537_109 : StackLang.HolProg 64 :=
.seq RemovedBody537_107 RemovedBody537_108

def RemovedBody537_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody537_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody537_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody537_113 : StackLang.HolProg 64 :=
.seq RemovedBody537_111 RemovedBody537_112

def RemovedBody537_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody537_113 RemovedBody537_114

def RemovedBody537_116 : StackLang.HolProg 64 :=
.seq RemovedBody537_110 RemovedBody537_115

def RemovedBody537_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody537_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody537_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 537 5

def RemovedBody537_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody537_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody537_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody537_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody537_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody537_126 : StackLang.HolProg 64 :=
.seq RemovedBody537_124 RemovedBody537_125

def RemovedBody537_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody537_128 : StackLang.HolProg 64 :=
.seq RemovedBody537_126 RemovedBody537_127

def RemovedBody537_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody537_130 : StackLang.HolProg 64 :=
.seq RemovedBody537_128 RemovedBody537_129

def RemovedBody537_131 : StackLang.HolProg 64 :=
.seq RemovedBody537_123 RemovedBody537_130

def RemovedBody537_132 : StackLang.HolProg 64 :=
.seq RemovedBody537_122 RemovedBody537_131

def RemovedBody537_133 : StackLang.HolProg 64 :=
.seq RemovedBody537_121 RemovedBody537_132

def RemovedBody537_134 : StackLang.HolProg 64 :=
.seq RemovedBody537_120 RemovedBody537_133

def RemovedBody537_135 : StackLang.HolProg 64 :=
.seq RemovedBody537_119 RemovedBody537_134

def RemovedBody537_136 : StackLang.HolProg 64 :=
.seq RemovedBody537_118 RemovedBody537_135

def RemovedBody537_137 : StackLang.HolProg 64 :=
.seq RemovedBody537_117 RemovedBody537_136

def RemovedBody537_138 : StackLang.HolProg 64 :=
.seq RemovedBody537_116 RemovedBody537_137

def RemovedBody537_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody537_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody537_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody537_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_146 : StackLang.HolProg 64 :=
.seq RemovedBody537_144 RemovedBody537_145

def RemovedBody537_147 : StackLang.HolProg 64 :=
.seq RemovedBody537_143 RemovedBody537_146

def RemovedBody537_148 : StackLang.HolProg 64 :=
.seq RemovedBody537_142 RemovedBody537_147

def RemovedBody537_149 : StackLang.HolProg 64 :=
.seq RemovedBody537_141 RemovedBody537_148

def RemovedBody537_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody537_152 : StackLang.HolProg 64 :=
.seq RemovedBody537_150 RemovedBody537_151

def RemovedBody537_153 : StackLang.HolProg 64 :=
.call (some (RemovedBody537_149, 0, 537, 4)) (Sum.inl 476) (some (RemovedBody537_152, 537, 5))

def RemovedBody537_154 : StackLang.HolProg 64 :=
.seq RemovedBody537_140 RemovedBody537_153

def RemovedBody537_155 : StackLang.HolProg 64 :=
.seq RemovedBody537_139 RemovedBody537_154

def RemovedBody537_156 : StackLang.HolProg 64 :=
.seq RemovedBody537_138 RemovedBody537_155

def RemovedBody537_157 : StackLang.HolProg 64 :=
.seq RemovedBody537_109 RemovedBody537_156

def RemovedBody537_158 : StackLang.HolProg 64 :=
.seq RemovedBody537_106 RemovedBody537_157

def RemovedBody537_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody537_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody537_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1786#64)

def RemovedBody537_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody537_165 : StackLang.HolProg 64 :=
.seq RemovedBody537_163 RemovedBody537_164

def RemovedBody537_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody537_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody537_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody537_169 : StackLang.HolProg 64 :=
.seq RemovedBody537_167 RemovedBody537_168

def RemovedBody537_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody537_169 RemovedBody537_170

def RemovedBody537_172 : StackLang.HolProg 64 :=
.seq RemovedBody537_166 RemovedBody537_171

def RemovedBody537_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody537_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody537_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 537 7

def RemovedBody537_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody537_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody537_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody537_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody537_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody537_182 : StackLang.HolProg 64 :=
.seq RemovedBody537_180 RemovedBody537_181

def RemovedBody537_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody537_184 : StackLang.HolProg 64 :=
.seq RemovedBody537_182 RemovedBody537_183

def RemovedBody537_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody537_186 : StackLang.HolProg 64 :=
.seq RemovedBody537_184 RemovedBody537_185

def RemovedBody537_187 : StackLang.HolProg 64 :=
.seq RemovedBody537_179 RemovedBody537_186

def RemovedBody537_188 : StackLang.HolProg 64 :=
.seq RemovedBody537_178 RemovedBody537_187

def RemovedBody537_189 : StackLang.HolProg 64 :=
.seq RemovedBody537_177 RemovedBody537_188

def RemovedBody537_190 : StackLang.HolProg 64 :=
.seq RemovedBody537_176 RemovedBody537_189

def RemovedBody537_191 : StackLang.HolProg 64 :=
.seq RemovedBody537_175 RemovedBody537_190

def RemovedBody537_192 : StackLang.HolProg 64 :=
.seq RemovedBody537_174 RemovedBody537_191

def RemovedBody537_193 : StackLang.HolProg 64 :=
.seq RemovedBody537_173 RemovedBody537_192

def RemovedBody537_194 : StackLang.HolProg 64 :=
.seq RemovedBody537_172 RemovedBody537_193

def RemovedBody537_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody537_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody537_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody537_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody537_202 : StackLang.HolProg 64 :=
.seq RemovedBody537_200 RemovedBody537_201

def RemovedBody537_203 : StackLang.HolProg 64 :=
.seq RemovedBody537_199 RemovedBody537_202

def RemovedBody537_204 : StackLang.HolProg 64 :=
.seq RemovedBody537_198 RemovedBody537_203

def RemovedBody537_205 : StackLang.HolProg 64 :=
.seq RemovedBody537_197 RemovedBody537_204

def RemovedBody537_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody537_207 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody537_208 : StackLang.HolProg 64 :=
.seq RemovedBody537_206 RemovedBody537_207

def RemovedBody537_209 : StackLang.HolProg 64 :=
.call (some (RemovedBody537_205, 0, 537, 6)) (Sum.inl 490) (some (RemovedBody537_208, 537, 7))

def RemovedBody537_210 : StackLang.HolProg 64 :=
.seq RemovedBody537_196 RemovedBody537_209

def RemovedBody537_211 : StackLang.HolProg 64 :=
.seq RemovedBody537_195 RemovedBody537_210

def RemovedBody537_212 : StackLang.HolProg 64 :=
.seq RemovedBody537_194 RemovedBody537_211

def RemovedBody537_213 : StackLang.HolProg 64 :=
.seq RemovedBody537_165 RemovedBody537_212

def RemovedBody537_214 : StackLang.HolProg 64 :=
.seq RemovedBody537_162 RemovedBody537_213

def RemovedBody537_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody537_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody537_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody537_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody537_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody537_220 : StackLang.HolProg 64 :=
.seq RemovedBody537_218 RemovedBody537_219

def RemovedBody537_221 : StackLang.HolProg 64 :=
.seq RemovedBody537_217 RemovedBody537_220

def RemovedBody537_222 : StackLang.HolProg 64 :=
.seq RemovedBody537_216 RemovedBody537_221

def RemovedBody537_223 : StackLang.HolProg 64 :=
.seq RemovedBody537_215 RemovedBody537_222

def RemovedBody537_224 : StackLang.HolProg 64 :=
.seq RemovedBody537_214 RemovedBody537_223

def RemovedBody537_225 : StackLang.HolProg 64 :=
.seq RemovedBody537_161 RemovedBody537_224

def RemovedBody537_226 : StackLang.HolProg 64 :=
.seq RemovedBody537_160 RemovedBody537_225

def RemovedBody537_227 : StackLang.HolProg 64 :=
.seq RemovedBody537_159 RemovedBody537_226

def RemovedBody537_228 : StackLang.HolProg 64 :=
.seq RemovedBody537_158 RemovedBody537_227

def RemovedBody537_229 : StackLang.HolProg 64 :=
.seq RemovedBody537_105 RemovedBody537_228

def RemovedBody537_230 : StackLang.HolProg 64 :=
.seq RemovedBody537_104 RemovedBody537_229

def RemovedBody537_231 : StackLang.HolProg 64 :=
.seq RemovedBody537_103 RemovedBody537_230

def RemovedBody537_232 : StackLang.HolProg 64 :=
.seq RemovedBody537_102 RemovedBody537_231

def RemovedBody537_233 : StackLang.HolProg 64 :=
.seq RemovedBody537_101 RemovedBody537_232

def RemovedBody537_234 : StackLang.HolProg 64 :=
.seq RemovedBody537_100 RemovedBody537_233

def RemovedBody537_235 : StackLang.HolProg 64 :=
.seq RemovedBody537_99 RemovedBody537_234

def RemovedBody537_236 : StackLang.HolProg 64 :=
.seq RemovedBody537_98 RemovedBody537_235

def RemovedBody537_237 : StackLang.HolProg 64 :=
.seq RemovedBody537_97 RemovedBody537_236

def RemovedBody537_238 : StackLang.HolProg 64 :=
.seq RemovedBody537_96 RemovedBody537_237

def RemovedBody537_239 : StackLang.HolProg 64 :=
.seq RemovedBody537_95 RemovedBody537_238

def RemovedBody537_240 : StackLang.HolProg 64 :=
.seq RemovedBody537_94 RemovedBody537_239

def RemovedBody537_241 : StackLang.HolProg 64 :=
.seq RemovedBody537_93 RemovedBody537_240

def RemovedBody537_242 : StackLang.HolProg 64 :=
.seq RemovedBody537_92 RemovedBody537_241

def RemovedBody537_243 : StackLang.HolProg 64 :=
.seq RemovedBody537_91 RemovedBody537_242

def RemovedBody537_244 : StackLang.HolProg 64 :=
.seq RemovedBody537_90 RemovedBody537_243

def RemovedBody537_245 : StackLang.HolProg 64 :=
.seq RemovedBody537_89 RemovedBody537_244

def RemovedBody537_246 : StackLang.HolProg 64 :=
.seq RemovedBody537_88 RemovedBody537_245

def RemovedBody537_247 : StackLang.HolProg 64 :=
.seq RemovedBody537_87 RemovedBody537_246

def RemovedBody537_248 : StackLang.HolProg 64 :=
.seq RemovedBody537_86 RemovedBody537_247

def RemovedBody537_249 : StackLang.HolProg 64 :=
.seq RemovedBody537_71 RemovedBody537_248

def RemovedBody537_250 : StackLang.HolProg 64 :=
.seq RemovedBody537_70 RemovedBody537_249

def RemovedBody537_251 : StackLang.HolProg 64 :=
.seq RemovedBody537_69 RemovedBody537_250

def RemovedBody537_252 : StackLang.HolProg 64 :=
.seq RemovedBody537_68 RemovedBody537_251

def RemovedBody537_253 : StackLang.HolProg 64 :=
.seq RemovedBody537_67 RemovedBody537_252

def RemovedBody537_254 : StackLang.HolProg 64 :=
.seq RemovedBody537_66 RemovedBody537_253

def RemovedBody537_255 : StackLang.HolProg 64 :=
.seq RemovedBody537_65 RemovedBody537_254

def RemovedBody537_256 : StackLang.HolProg 64 :=
.seq RemovedBody537_64 RemovedBody537_255

def RemovedBody537_257 : StackLang.HolProg 64 :=
.seq RemovedBody537_11 RemovedBody537_256

def RemovedBody537_258 : StackLang.HolProg 64 :=
.seq RemovedBody537_8 RemovedBody537_257

def RemovedBody537_259 : StackLang.HolProg 64 :=
.seq RemovedBody537_7 RemovedBody537_258

def RemovedBody537_260 : StackLang.HolProg 64 :=
.seq RemovedBody537_6 RemovedBody537_259

def Removed537 : Nat × StackLang.HolProg 64 := (537, RemovedBody537_260)
theorem Removed537_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc537 = Removed537 := by
  kernel_rfl
#print axioms Removed537_eq
end InitECandidate.Proofs.BackendStages
