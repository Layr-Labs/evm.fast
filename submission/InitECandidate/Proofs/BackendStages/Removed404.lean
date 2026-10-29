import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc404
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody404_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody404_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody404_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody404_3 : StackLang.HolProg 64 :=
.seq RemovedBody404_1 RemovedBody404_2

def RemovedBody404_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody404_3 RemovedBody404_4

def RemovedBody404_6 : StackLang.HolProg 64 :=
.seq RemovedBody404_0 RemovedBody404_5

def RemovedBody404_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody404_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody404_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody404_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody404_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def RemovedBody404_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody404_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody404_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_17 : StackLang.HolProg 64 :=
.seq RemovedBody404_15 RemovedBody404_16

def RemovedBody404_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1202#64)

def RemovedBody404_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody404_21 : StackLang.HolProg 64 :=
.seq RemovedBody404_19 RemovedBody404_20

def RemovedBody404_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody404_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody404_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody404_25 : StackLang.HolProg 64 :=
.seq RemovedBody404_23 RemovedBody404_24

def RemovedBody404_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody404_25 RemovedBody404_26

def RemovedBody404_28 : StackLang.HolProg 64 :=
.seq RemovedBody404_22 RemovedBody404_27

def RemovedBody404_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody404_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody404_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 3

def RemovedBody404_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody404_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody404_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody404_38 : StackLang.HolProg 64 :=
.seq RemovedBody404_36 RemovedBody404_37

def RemovedBody404_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody404_40 : StackLang.HolProg 64 :=
.seq RemovedBody404_38 RemovedBody404_39

def RemovedBody404_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody404_42 : StackLang.HolProg 64 :=
.seq RemovedBody404_40 RemovedBody404_41

def RemovedBody404_43 : StackLang.HolProg 64 :=
.seq RemovedBody404_35 RemovedBody404_42

def RemovedBody404_44 : StackLang.HolProg 64 :=
.seq RemovedBody404_34 RemovedBody404_43

def RemovedBody404_45 : StackLang.HolProg 64 :=
.seq RemovedBody404_33 RemovedBody404_44

def RemovedBody404_46 : StackLang.HolProg 64 :=
.seq RemovedBody404_32 RemovedBody404_45

def RemovedBody404_47 : StackLang.HolProg 64 :=
.seq RemovedBody404_31 RemovedBody404_46

def RemovedBody404_48 : StackLang.HolProg 64 :=
.seq RemovedBody404_30 RemovedBody404_47

def RemovedBody404_49 : StackLang.HolProg 64 :=
.seq RemovedBody404_29 RemovedBody404_48

def RemovedBody404_50 : StackLang.HolProg 64 :=
.seq RemovedBody404_28 RemovedBody404_49

def RemovedBody404_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody404_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody404_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_58 : StackLang.HolProg 64 :=
.seq RemovedBody404_56 RemovedBody404_57

def RemovedBody404_59 : StackLang.HolProg 64 :=
.seq RemovedBody404_55 RemovedBody404_58

def RemovedBody404_60 : StackLang.HolProg 64 :=
.seq RemovedBody404_54 RemovedBody404_59

def RemovedBody404_61 : StackLang.HolProg 64 :=
.seq RemovedBody404_53 RemovedBody404_60

def RemovedBody404_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody404_64 : StackLang.HolProg 64 :=
.seq RemovedBody404_62 RemovedBody404_63

def RemovedBody404_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody404_61, 0, 404, 2)) (Sum.inl 192) (some (RemovedBody404_64, 404, 3))

def RemovedBody404_66 : StackLang.HolProg 64 :=
.seq RemovedBody404_52 RemovedBody404_65

def RemovedBody404_67 : StackLang.HolProg 64 :=
.seq RemovedBody404_51 RemovedBody404_66

def RemovedBody404_68 : StackLang.HolProg 64 :=
.seq RemovedBody404_50 RemovedBody404_67

def RemovedBody404_69 : StackLang.HolProg 64 :=
.seq RemovedBody404_21 RemovedBody404_68

def RemovedBody404_70 : StackLang.HolProg 64 :=
.seq RemovedBody404_18 RemovedBody404_69

def RemovedBody404_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody404_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody404_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody404_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody404_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551440#64))

def RemovedBody404_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody404_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1203#64)

def RemovedBody404_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody404_81 : StackLang.HolProg 64 :=
.seq RemovedBody404_79 RemovedBody404_80

def RemovedBody404_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody404_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody404_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody404_85 : StackLang.HolProg 64 :=
.seq RemovedBody404_83 RemovedBody404_84

def RemovedBody404_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody404_85 RemovedBody404_86

def RemovedBody404_88 : StackLang.HolProg 64 :=
.seq RemovedBody404_82 RemovedBody404_87

def RemovedBody404_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody404_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody404_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 5

def RemovedBody404_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody404_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody404_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody404_98 : StackLang.HolProg 64 :=
.seq RemovedBody404_96 RemovedBody404_97

def RemovedBody404_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody404_100 : StackLang.HolProg 64 :=
.seq RemovedBody404_98 RemovedBody404_99

def RemovedBody404_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody404_102 : StackLang.HolProg 64 :=
.seq RemovedBody404_100 RemovedBody404_101

def RemovedBody404_103 : StackLang.HolProg 64 :=
.seq RemovedBody404_95 RemovedBody404_102

def RemovedBody404_104 : StackLang.HolProg 64 :=
.seq RemovedBody404_94 RemovedBody404_103

def RemovedBody404_105 : StackLang.HolProg 64 :=
.seq RemovedBody404_93 RemovedBody404_104

def RemovedBody404_106 : StackLang.HolProg 64 :=
.seq RemovedBody404_92 RemovedBody404_105

def RemovedBody404_107 : StackLang.HolProg 64 :=
.seq RemovedBody404_91 RemovedBody404_106

def RemovedBody404_108 : StackLang.HolProg 64 :=
.seq RemovedBody404_90 RemovedBody404_107

def RemovedBody404_109 : StackLang.HolProg 64 :=
.seq RemovedBody404_89 RemovedBody404_108

def RemovedBody404_110 : StackLang.HolProg 64 :=
.seq RemovedBody404_88 RemovedBody404_109

def RemovedBody404_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody404_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody404_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody404_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_120 : StackLang.HolProg 64 :=
.seq RemovedBody404_118 RemovedBody404_119

def RemovedBody404_121 : StackLang.HolProg 64 :=
.seq RemovedBody404_117 RemovedBody404_120

def RemovedBody404_122 : StackLang.HolProg 64 :=
.seq RemovedBody404_116 RemovedBody404_121

def RemovedBody404_123 : StackLang.HolProg 64 :=
.seq RemovedBody404_115 RemovedBody404_122

def RemovedBody404_124 : StackLang.HolProg 64 :=
.seq RemovedBody404_114 RemovedBody404_123

def RemovedBody404_125 : StackLang.HolProg 64 :=
.seq RemovedBody404_113 RemovedBody404_124

def RemovedBody404_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_128 : StackLang.HolProg 64 :=
.seq RemovedBody404_126 RemovedBody404_127

def RemovedBody404_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody404_130 : StackLang.HolProg 64 :=
.seq RemovedBody404_128 RemovedBody404_129

def RemovedBody404_131 : StackLang.HolProg 64 :=
.call (some (RemovedBody404_125, 0, 404, 4)) (Sum.inl 186) (some (RemovedBody404_130, 404, 5))

def RemovedBody404_132 : StackLang.HolProg 64 :=
.seq RemovedBody404_112 RemovedBody404_131

def RemovedBody404_133 : StackLang.HolProg 64 :=
.seq RemovedBody404_111 RemovedBody404_132

def RemovedBody404_134 : StackLang.HolProg 64 :=
.seq RemovedBody404_110 RemovedBody404_133

def RemovedBody404_135 : StackLang.HolProg 64 :=
.seq RemovedBody404_81 RemovedBody404_134

def RemovedBody404_136 : StackLang.HolProg 64 :=
.seq RemovedBody404_78 RemovedBody404_135

def RemovedBody404_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody404_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody404_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody404_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody404_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody404_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody404_144 : StackLang.HolProg 64 :=
.seq RemovedBody404_142 RemovedBody404_143

def RemovedBody404_145 : StackLang.HolProg 64 :=
.seq RemovedBody404_141 RemovedBody404_144

def RemovedBody404_146 : StackLang.HolProg 64 :=
.seq RemovedBody404_140 RemovedBody404_145

def RemovedBody404_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody404_146 RemovedBody404_147

def RemovedBody404_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody404_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody404_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody404_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_154 : StackLang.HolProg 64 :=
.seq RemovedBody404_152 RemovedBody404_153

def RemovedBody404_155 : StackLang.HolProg 64 :=
.seq RemovedBody404_151 RemovedBody404_154

def RemovedBody404_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1204#64)

def RemovedBody404_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody404_159 : StackLang.HolProg 64 :=
.seq RemovedBody404_157 RemovedBody404_158

def RemovedBody404_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody404_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody404_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody404_163 : StackLang.HolProg 64 :=
.seq RemovedBody404_161 RemovedBody404_162

def RemovedBody404_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_165 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody404_163 RemovedBody404_164

def RemovedBody404_166 : StackLang.HolProg 64 :=
.seq RemovedBody404_160 RemovedBody404_165

def RemovedBody404_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody404_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody404_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 7

def RemovedBody404_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody404_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody404_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody404_176 : StackLang.HolProg 64 :=
.seq RemovedBody404_174 RemovedBody404_175

def RemovedBody404_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody404_178 : StackLang.HolProg 64 :=
.seq RemovedBody404_176 RemovedBody404_177

def RemovedBody404_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody404_180 : StackLang.HolProg 64 :=
.seq RemovedBody404_178 RemovedBody404_179

def RemovedBody404_181 : StackLang.HolProg 64 :=
.seq RemovedBody404_173 RemovedBody404_180

def RemovedBody404_182 : StackLang.HolProg 64 :=
.seq RemovedBody404_172 RemovedBody404_181

def RemovedBody404_183 : StackLang.HolProg 64 :=
.seq RemovedBody404_171 RemovedBody404_182

def RemovedBody404_184 : StackLang.HolProg 64 :=
.seq RemovedBody404_170 RemovedBody404_183

def RemovedBody404_185 : StackLang.HolProg 64 :=
.seq RemovedBody404_169 RemovedBody404_184

def RemovedBody404_186 : StackLang.HolProg 64 :=
.seq RemovedBody404_168 RemovedBody404_185

def RemovedBody404_187 : StackLang.HolProg 64 :=
.seq RemovedBody404_167 RemovedBody404_186

def RemovedBody404_188 : StackLang.HolProg 64 :=
.seq RemovedBody404_166 RemovedBody404_187

def RemovedBody404_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody404_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody404_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_196 : StackLang.HolProg 64 :=
.seq RemovedBody404_194 RemovedBody404_195

def RemovedBody404_197 : StackLang.HolProg 64 :=
.seq RemovedBody404_193 RemovedBody404_196

def RemovedBody404_198 : StackLang.HolProg 64 :=
.seq RemovedBody404_192 RemovedBody404_197

def RemovedBody404_199 : StackLang.HolProg 64 :=
.seq RemovedBody404_191 RemovedBody404_198

def RemovedBody404_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody404_202 : StackLang.HolProg 64 :=
.seq RemovedBody404_200 RemovedBody404_201

def RemovedBody404_203 : StackLang.HolProg 64 :=
.call (some (RemovedBody404_199, 0, 404, 6)) (Sum.inl 396) (some (RemovedBody404_202, 404, 7))

def RemovedBody404_204 : StackLang.HolProg 64 :=
.seq RemovedBody404_190 RemovedBody404_203

def RemovedBody404_205 : StackLang.HolProg 64 :=
.seq RemovedBody404_189 RemovedBody404_204

def RemovedBody404_206 : StackLang.HolProg 64 :=
.seq RemovedBody404_188 RemovedBody404_205

def RemovedBody404_207 : StackLang.HolProg 64 :=
.seq RemovedBody404_159 RemovedBody404_206

def RemovedBody404_208 : StackLang.HolProg 64 :=
.seq RemovedBody404_156 RemovedBody404_207

def RemovedBody404_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody404_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody404_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1205#64)

def RemovedBody404_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody404_214 : StackLang.HolProg 64 :=
.seq RemovedBody404_212 RemovedBody404_213

def RemovedBody404_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody404_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody404_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody404_218 : StackLang.HolProg 64 :=
.seq RemovedBody404_216 RemovedBody404_217

def RemovedBody404_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_220 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody404_218 RemovedBody404_219

def RemovedBody404_221 : StackLang.HolProg 64 :=
.seq RemovedBody404_215 RemovedBody404_220

def RemovedBody404_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody404_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody404_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 9

def RemovedBody404_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody404_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody404_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody404_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody404_231 : StackLang.HolProg 64 :=
.seq RemovedBody404_229 RemovedBody404_230

def RemovedBody404_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody404_233 : StackLang.HolProg 64 :=
.seq RemovedBody404_231 RemovedBody404_232

def RemovedBody404_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody404_235 : StackLang.HolProg 64 :=
.seq RemovedBody404_233 RemovedBody404_234

def RemovedBody404_236 : StackLang.HolProg 64 :=
.seq RemovedBody404_228 RemovedBody404_235

def RemovedBody404_237 : StackLang.HolProg 64 :=
.seq RemovedBody404_227 RemovedBody404_236

def RemovedBody404_238 : StackLang.HolProg 64 :=
.seq RemovedBody404_226 RemovedBody404_237

def RemovedBody404_239 : StackLang.HolProg 64 :=
.seq RemovedBody404_225 RemovedBody404_238

def RemovedBody404_240 : StackLang.HolProg 64 :=
.seq RemovedBody404_224 RemovedBody404_239

def RemovedBody404_241 : StackLang.HolProg 64 :=
.seq RemovedBody404_223 RemovedBody404_240

def RemovedBody404_242 : StackLang.HolProg 64 :=
.seq RemovedBody404_222 RemovedBody404_241

def RemovedBody404_243 : StackLang.HolProg 64 :=
.seq RemovedBody404_221 RemovedBody404_242

def RemovedBody404_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody404_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody404_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody404_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody404_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_252 : StackLang.HolProg 64 :=
.seq RemovedBody404_250 RemovedBody404_251

def RemovedBody404_253 : StackLang.HolProg 64 :=
.seq RemovedBody404_249 RemovedBody404_252

def RemovedBody404_254 : StackLang.HolProg 64 :=
.seq RemovedBody404_248 RemovedBody404_253

def RemovedBody404_255 : StackLang.HolProg 64 :=
.seq RemovedBody404_247 RemovedBody404_254

def RemovedBody404_256 : StackLang.HolProg 64 :=
.seq RemovedBody404_246 RemovedBody404_255

def RemovedBody404_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody404_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody404_259 : StackLang.HolProg 64 :=
.seq RemovedBody404_257 RemovedBody404_258

def RemovedBody404_260 : StackLang.HolProg 64 :=
.call (some (RemovedBody404_256, 0, 404, 8)) (Sum.inl 398) (some (RemovedBody404_259, 404, 9))

def RemovedBody404_261 : StackLang.HolProg 64 :=
.seq RemovedBody404_245 RemovedBody404_260

def RemovedBody404_262 : StackLang.HolProg 64 :=
.seq RemovedBody404_244 RemovedBody404_261

def RemovedBody404_263 : StackLang.HolProg 64 :=
.seq RemovedBody404_243 RemovedBody404_262

def RemovedBody404_264 : StackLang.HolProg 64 :=
.seq RemovedBody404_214 RemovedBody404_263

def RemovedBody404_265 : StackLang.HolProg 64 :=
.seq RemovedBody404_211 RemovedBody404_264

def RemovedBody404_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody404_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody404_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody404_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody404_270 : StackLang.HolProg 64 :=
.seq RemovedBody404_268 RemovedBody404_269

def RemovedBody404_271 : StackLang.HolProg 64 :=
.seq RemovedBody404_267 RemovedBody404_270

def RemovedBody404_272 : StackLang.HolProg 64 :=
.seq RemovedBody404_266 RemovedBody404_271

def RemovedBody404_273 : StackLang.HolProg 64 :=
.seq RemovedBody404_265 RemovedBody404_272

def RemovedBody404_274 : StackLang.HolProg 64 :=
.seq RemovedBody404_210 RemovedBody404_273

def RemovedBody404_275 : StackLang.HolProg 64 :=
.seq RemovedBody404_209 RemovedBody404_274

def RemovedBody404_276 : StackLang.HolProg 64 :=
.seq RemovedBody404_208 RemovedBody404_275

def RemovedBody404_277 : StackLang.HolProg 64 :=
.seq RemovedBody404_155 RemovedBody404_276

def RemovedBody404_278 : StackLang.HolProg 64 :=
.seq RemovedBody404_150 RemovedBody404_277

def RemovedBody404_279 : StackLang.HolProg 64 :=
.seq RemovedBody404_149 RemovedBody404_278

def RemovedBody404_280 : StackLang.HolProg 64 :=
.seq RemovedBody404_148 RemovedBody404_279

def RemovedBody404_281 : StackLang.HolProg 64 :=
.seq RemovedBody404_139 RemovedBody404_280

def RemovedBody404_282 : StackLang.HolProg 64 :=
.seq RemovedBody404_138 RemovedBody404_281

def RemovedBody404_283 : StackLang.HolProg 64 :=
.seq RemovedBody404_137 RemovedBody404_282

def RemovedBody404_284 : StackLang.HolProg 64 :=
.seq RemovedBody404_136 RemovedBody404_283

def RemovedBody404_285 : StackLang.HolProg 64 :=
.seq RemovedBody404_77 RemovedBody404_284

def RemovedBody404_286 : StackLang.HolProg 64 :=
.seq RemovedBody404_76 RemovedBody404_285

def RemovedBody404_287 : StackLang.HolProg 64 :=
.seq RemovedBody404_75 RemovedBody404_286

def RemovedBody404_288 : StackLang.HolProg 64 :=
.seq RemovedBody404_74 RemovedBody404_287

def RemovedBody404_289 : StackLang.HolProg 64 :=
.seq RemovedBody404_73 RemovedBody404_288

def RemovedBody404_290 : StackLang.HolProg 64 :=
.seq RemovedBody404_72 RemovedBody404_289

def RemovedBody404_291 : StackLang.HolProg 64 :=
.seq RemovedBody404_71 RemovedBody404_290

def RemovedBody404_292 : StackLang.HolProg 64 :=
.seq RemovedBody404_70 RemovedBody404_291

def RemovedBody404_293 : StackLang.HolProg 64 :=
.seq RemovedBody404_17 RemovedBody404_292

def RemovedBody404_294 : StackLang.HolProg 64 :=
.seq RemovedBody404_14 RemovedBody404_293

def RemovedBody404_295 : StackLang.HolProg 64 :=
.seq RemovedBody404_13 RemovedBody404_294

def RemovedBody404_296 : StackLang.HolProg 64 :=
.seq RemovedBody404_12 RemovedBody404_295

def RemovedBody404_297 : StackLang.HolProg 64 :=
.seq RemovedBody404_11 RemovedBody404_296

def RemovedBody404_298 : StackLang.HolProg 64 :=
.seq RemovedBody404_10 RemovedBody404_297

def RemovedBody404_299 : StackLang.HolProg 64 :=
.seq RemovedBody404_9 RemovedBody404_298

def RemovedBody404_300 : StackLang.HolProg 64 :=
.seq RemovedBody404_8 RemovedBody404_299

def RemovedBody404_301 : StackLang.HolProg 64 :=
.seq RemovedBody404_7 RemovedBody404_300

def RemovedBody404_302 : StackLang.HolProg 64 :=
.seq RemovedBody404_6 RemovedBody404_301

def Removed404 : Nat × StackLang.HolProg 64 := (404, RemovedBody404_302)
theorem Removed404_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc404 = Removed404 := by
  kernel_rfl
#print axioms Removed404_eq
end InitECandidate.Proofs.BackendStages
