import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc388
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody388_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody388_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody388_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody388_3 : StackLang.HolProg 64 :=
.seq RemovedBody388_1 RemovedBody388_2

def RemovedBody388_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody388_3 RemovedBody388_4

def RemovedBody388_6 : StackLang.HolProg 64 :=
.seq RemovedBody388_0 RemovedBody388_5

def RemovedBody388_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody388_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody388_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody388_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody388_11 : StackLang.HolProg 64 :=
.seq RemovedBody388_9 RemovedBody388_10

def RemovedBody388_12 : StackLang.HolProg 64 :=
.seq RemovedBody388_8 RemovedBody388_11

def RemovedBody388_13 : StackLang.HolProg 64 :=
.seq RemovedBody388_7 RemovedBody388_12

def RemovedBody388_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1157#64)

def RemovedBody388_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody388_17 : StackLang.HolProg 64 :=
.seq RemovedBody388_15 RemovedBody388_16

def RemovedBody388_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody388_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody388_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody388_21 : StackLang.HolProg 64 :=
.seq RemovedBody388_19 RemovedBody388_20

def RemovedBody388_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody388_21 RemovedBody388_22

def RemovedBody388_24 : StackLang.HolProg 64 :=
.seq RemovedBody388_18 RemovedBody388_23

def RemovedBody388_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody388_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody388_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 388 3

def RemovedBody388_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody388_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody388_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody388_34 : StackLang.HolProg 64 :=
.seq RemovedBody388_32 RemovedBody388_33

def RemovedBody388_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody388_36 : StackLang.HolProg 64 :=
.seq RemovedBody388_34 RemovedBody388_35

def RemovedBody388_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_38 : StackLang.HolProg 64 :=
.seq RemovedBody388_36 RemovedBody388_37

def RemovedBody388_39 : StackLang.HolProg 64 :=
.seq RemovedBody388_31 RemovedBody388_38

def RemovedBody388_40 : StackLang.HolProg 64 :=
.seq RemovedBody388_30 RemovedBody388_39

def RemovedBody388_41 : StackLang.HolProg 64 :=
.seq RemovedBody388_29 RemovedBody388_40

def RemovedBody388_42 : StackLang.HolProg 64 :=
.seq RemovedBody388_28 RemovedBody388_41

def RemovedBody388_43 : StackLang.HolProg 64 :=
.seq RemovedBody388_27 RemovedBody388_42

def RemovedBody388_44 : StackLang.HolProg 64 :=
.seq RemovedBody388_26 RemovedBody388_43

def RemovedBody388_45 : StackLang.HolProg 64 :=
.seq RemovedBody388_25 RemovedBody388_44

def RemovedBody388_46 : StackLang.HolProg 64 :=
.seq RemovedBody388_24 RemovedBody388_45

def RemovedBody388_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody388_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody388_54 : StackLang.HolProg 64 :=
.seq RemovedBody388_52 RemovedBody388_53

def RemovedBody388_55 : StackLang.HolProg 64 :=
.seq RemovedBody388_51 RemovedBody388_54

def RemovedBody388_56 : StackLang.HolProg 64 :=
.seq RemovedBody388_50 RemovedBody388_55

def RemovedBody388_57 : StackLang.HolProg 64 :=
.seq RemovedBody388_49 RemovedBody388_56

def RemovedBody388_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody388_60 : StackLang.HolProg 64 :=
.seq RemovedBody388_58 RemovedBody388_59

def RemovedBody388_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody388_57, 0, 388, 2)) (Sum.inl 186) (some (RemovedBody388_60, 388, 3))

def RemovedBody388_62 : StackLang.HolProg 64 :=
.seq RemovedBody388_48 RemovedBody388_61

def RemovedBody388_63 : StackLang.HolProg 64 :=
.seq RemovedBody388_47 RemovedBody388_62

def RemovedBody388_64 : StackLang.HolProg 64 :=
.seq RemovedBody388_46 RemovedBody388_63

def RemovedBody388_65 : StackLang.HolProg 64 :=
.seq RemovedBody388_17 RemovedBody388_64

def RemovedBody388_66 : StackLang.HolProg 64 :=
.seq RemovedBody388_14 RemovedBody388_65

def RemovedBody388_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody388_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody388_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody388_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody388_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551600#64))

def RemovedBody388_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551408#64))

def RemovedBody388_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody388_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody388_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody388_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_78 : StackLang.HolProg 64 :=
.seq RemovedBody388_76 RemovedBody388_77

def RemovedBody388_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1158#64)

def RemovedBody388_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody388_82 : StackLang.HolProg 64 :=
.seq RemovedBody388_80 RemovedBody388_81

def RemovedBody388_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody388_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody388_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody388_86 : StackLang.HolProg 64 :=
.seq RemovedBody388_84 RemovedBody388_85

def RemovedBody388_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody388_86 RemovedBody388_87

def RemovedBody388_89 : StackLang.HolProg 64 :=
.seq RemovedBody388_83 RemovedBody388_88

def RemovedBody388_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody388_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody388_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 388 5

def RemovedBody388_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody388_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody388_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody388_99 : StackLang.HolProg 64 :=
.seq RemovedBody388_97 RemovedBody388_98

def RemovedBody388_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody388_101 : StackLang.HolProg 64 :=
.seq RemovedBody388_99 RemovedBody388_100

def RemovedBody388_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_103 : StackLang.HolProg 64 :=
.seq RemovedBody388_101 RemovedBody388_102

def RemovedBody388_104 : StackLang.HolProg 64 :=
.seq RemovedBody388_96 RemovedBody388_103

def RemovedBody388_105 : StackLang.HolProg 64 :=
.seq RemovedBody388_95 RemovedBody388_104

def RemovedBody388_106 : StackLang.HolProg 64 :=
.seq RemovedBody388_94 RemovedBody388_105

def RemovedBody388_107 : StackLang.HolProg 64 :=
.seq RemovedBody388_93 RemovedBody388_106

def RemovedBody388_108 : StackLang.HolProg 64 :=
.seq RemovedBody388_92 RemovedBody388_107

def RemovedBody388_109 : StackLang.HolProg 64 :=
.seq RemovedBody388_91 RemovedBody388_108

def RemovedBody388_110 : StackLang.HolProg 64 :=
.seq RemovedBody388_90 RemovedBody388_109

def RemovedBody388_111 : StackLang.HolProg 64 :=
.seq RemovedBody388_89 RemovedBody388_110

def RemovedBody388_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody388_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody388_119 : StackLang.HolProg 64 :=
.seq RemovedBody388_117 RemovedBody388_118

def RemovedBody388_120 : StackLang.HolProg 64 :=
.seq RemovedBody388_116 RemovedBody388_119

def RemovedBody388_121 : StackLang.HolProg 64 :=
.seq RemovedBody388_115 RemovedBody388_120

def RemovedBody388_122 : StackLang.HolProg 64 :=
.seq RemovedBody388_114 RemovedBody388_121

def RemovedBody388_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody388_124 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody388_125 : StackLang.HolProg 64 :=
.seq RemovedBody388_123 RemovedBody388_124

def RemovedBody388_126 : StackLang.HolProg 64 :=
.call (some (RemovedBody388_122, 0, 388, 4)) (Sum.inl 66) (some (RemovedBody388_125, 388, 5))

def RemovedBody388_127 : StackLang.HolProg 64 :=
.seq RemovedBody388_113 RemovedBody388_126

def RemovedBody388_128 : StackLang.HolProg 64 :=
.seq RemovedBody388_112 RemovedBody388_127

def RemovedBody388_129 : StackLang.HolProg 64 :=
.seq RemovedBody388_111 RemovedBody388_128

def RemovedBody388_130 : StackLang.HolProg 64 :=
.seq RemovedBody388_82 RemovedBody388_129

def RemovedBody388_131 : StackLang.HolProg 64 :=
.seq RemovedBody388_79 RemovedBody388_130

def RemovedBody388_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody388_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_134 : StackLang.HolProg 64 :=
.seq RemovedBody388_132 RemovedBody388_133

def RemovedBody388_135 : StackLang.HolProg 64 :=
.seq RemovedBody388_131 RemovedBody388_134

def RemovedBody388_136 : StackLang.HolProg 64 :=
.seq RemovedBody388_78 RemovedBody388_135

def RemovedBody388_137 : StackLang.HolProg 64 :=
.seq RemovedBody388_75 RemovedBody388_136

def RemovedBody388_138 : StackLang.HolProg 64 :=
.seq RemovedBody388_74 RemovedBody388_137

def RemovedBody388_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody388_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody388_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody388_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_143 : StackLang.HolProg 64 :=
.seq RemovedBody388_141 RemovedBody388_142

def RemovedBody388_144 : StackLang.HolProg 64 :=
.seq RemovedBody388_140 RemovedBody388_143

def RemovedBody388_145 : StackLang.HolProg 64 :=
.seq RemovedBody388_139 RemovedBody388_144

def RemovedBody388_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody388_138 RemovedBody388_145

def RemovedBody388_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody388_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody388_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody388_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody388_152 : StackLang.HolProg 64 :=
.seq RemovedBody388_150 RemovedBody388_151

def RemovedBody388_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1159#64)

def RemovedBody388_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody388_156 : StackLang.HolProg 64 :=
.seq RemovedBody388_154 RemovedBody388_155

def RemovedBody388_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody388_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody388_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody388_160 : StackLang.HolProg 64 :=
.seq RemovedBody388_158 RemovedBody388_159

def RemovedBody388_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody388_160 RemovedBody388_161

def RemovedBody388_163 : StackLang.HolProg 64 :=
.seq RemovedBody388_157 RemovedBody388_162

def RemovedBody388_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody388_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody388_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 388 7

def RemovedBody388_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody388_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody388_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody388_173 : StackLang.HolProg 64 :=
.seq RemovedBody388_171 RemovedBody388_172

def RemovedBody388_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody388_175 : StackLang.HolProg 64 :=
.seq RemovedBody388_173 RemovedBody388_174

def RemovedBody388_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_177 : StackLang.HolProg 64 :=
.seq RemovedBody388_175 RemovedBody388_176

def RemovedBody388_178 : StackLang.HolProg 64 :=
.seq RemovedBody388_170 RemovedBody388_177

def RemovedBody388_179 : StackLang.HolProg 64 :=
.seq RemovedBody388_169 RemovedBody388_178

def RemovedBody388_180 : StackLang.HolProg 64 :=
.seq RemovedBody388_168 RemovedBody388_179

def RemovedBody388_181 : StackLang.HolProg 64 :=
.seq RemovedBody388_167 RemovedBody388_180

def RemovedBody388_182 : StackLang.HolProg 64 :=
.seq RemovedBody388_166 RemovedBody388_181

def RemovedBody388_183 : StackLang.HolProg 64 :=
.seq RemovedBody388_165 RemovedBody388_182

def RemovedBody388_184 : StackLang.HolProg 64 :=
.seq RemovedBody388_164 RemovedBody388_183

def RemovedBody388_185 : StackLang.HolProg 64 :=
.seq RemovedBody388_163 RemovedBody388_184

def RemovedBody388_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody388_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody388_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody388_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody388_195 : StackLang.HolProg 64 :=
.seq RemovedBody388_193 RemovedBody388_194

def RemovedBody388_196 : StackLang.HolProg 64 :=
.seq RemovedBody388_192 RemovedBody388_195

def RemovedBody388_197 : StackLang.HolProg 64 :=
.seq RemovedBody388_191 RemovedBody388_196

def RemovedBody388_198 : StackLang.HolProg 64 :=
.seq RemovedBody388_190 RemovedBody388_197

def RemovedBody388_199 : StackLang.HolProg 64 :=
.seq RemovedBody388_189 RemovedBody388_198

def RemovedBody388_200 : StackLang.HolProg 64 :=
.seq RemovedBody388_188 RemovedBody388_199

def RemovedBody388_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody388_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody388_203 : StackLang.HolProg 64 :=
.seq RemovedBody388_201 RemovedBody388_202

def RemovedBody388_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody388_205 : StackLang.HolProg 64 :=
.seq RemovedBody388_203 RemovedBody388_204

def RemovedBody388_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody388_200, 0, 388, 6)) (Sum.inl 68) (some (RemovedBody388_205, 388, 7))

def RemovedBody388_207 : StackLang.HolProg 64 :=
.seq RemovedBody388_187 RemovedBody388_206

def RemovedBody388_208 : StackLang.HolProg 64 :=
.seq RemovedBody388_186 RemovedBody388_207

def RemovedBody388_209 : StackLang.HolProg 64 :=
.seq RemovedBody388_185 RemovedBody388_208

def RemovedBody388_210 : StackLang.HolProg 64 :=
.seq RemovedBody388_156 RemovedBody388_209

def RemovedBody388_211 : StackLang.HolProg 64 :=
.seq RemovedBody388_153 RemovedBody388_210

def RemovedBody388_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody388_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody388_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody388_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody388_216 : StackLang.HolProg 64 :=
.seq RemovedBody388_214 RemovedBody388_215

def RemovedBody388_217 : StackLang.HolProg 64 :=
.seq RemovedBody388_213 RemovedBody388_216

def RemovedBody388_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1160#64)

def RemovedBody388_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody388_221 : StackLang.HolProg 64 :=
.seq RemovedBody388_219 RemovedBody388_220

def RemovedBody388_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody388_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody388_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody388_225 : StackLang.HolProg 64 :=
.seq RemovedBody388_223 RemovedBody388_224

def RemovedBody388_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_227 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody388_225 RemovedBody388_226

def RemovedBody388_228 : StackLang.HolProg 64 :=
.seq RemovedBody388_222 RemovedBody388_227

def RemovedBody388_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody388_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody388_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 388 9

def RemovedBody388_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody388_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody388_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody388_238 : StackLang.HolProg 64 :=
.seq RemovedBody388_236 RemovedBody388_237

def RemovedBody388_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody388_240 : StackLang.HolProg 64 :=
.seq RemovedBody388_238 RemovedBody388_239

def RemovedBody388_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_242 : StackLang.HolProg 64 :=
.seq RemovedBody388_240 RemovedBody388_241

def RemovedBody388_243 : StackLang.HolProg 64 :=
.seq RemovedBody388_235 RemovedBody388_242

def RemovedBody388_244 : StackLang.HolProg 64 :=
.seq RemovedBody388_234 RemovedBody388_243

def RemovedBody388_245 : StackLang.HolProg 64 :=
.seq RemovedBody388_233 RemovedBody388_244

def RemovedBody388_246 : StackLang.HolProg 64 :=
.seq RemovedBody388_232 RemovedBody388_245

def RemovedBody388_247 : StackLang.HolProg 64 :=
.seq RemovedBody388_231 RemovedBody388_246

def RemovedBody388_248 : StackLang.HolProg 64 :=
.seq RemovedBody388_230 RemovedBody388_247

def RemovedBody388_249 : StackLang.HolProg 64 :=
.seq RemovedBody388_229 RemovedBody388_248

def RemovedBody388_250 : StackLang.HolProg 64 :=
.seq RemovedBody388_228 RemovedBody388_249

def RemovedBody388_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody388_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody388_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody388_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody388_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody388_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody388_263 : StackLang.HolProg 64 :=
.seq RemovedBody388_261 RemovedBody388_262

def RemovedBody388_264 : StackLang.HolProg 64 :=
.seq RemovedBody388_260 RemovedBody388_263

def RemovedBody388_265 : StackLang.HolProg 64 :=
.seq RemovedBody388_259 RemovedBody388_264

def RemovedBody388_266 : StackLang.HolProg 64 :=
.seq RemovedBody388_258 RemovedBody388_265

def RemovedBody388_267 : StackLang.HolProg 64 :=
.seq RemovedBody388_257 RemovedBody388_266

def RemovedBody388_268 : StackLang.HolProg 64 :=
.seq RemovedBody388_256 RemovedBody388_267

def RemovedBody388_269 : StackLang.HolProg 64 :=
.seq RemovedBody388_255 RemovedBody388_268

def RemovedBody388_270 : StackLang.HolProg 64 :=
.seq RemovedBody388_254 RemovedBody388_269

def RemovedBody388_271 : StackLang.HolProg 64 :=
.seq RemovedBody388_253 RemovedBody388_270

def RemovedBody388_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody388_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody388_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody388_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody388_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody388_278 : StackLang.HolProg 64 :=
.seq RemovedBody388_276 RemovedBody388_277

def RemovedBody388_279 : StackLang.HolProg 64 :=
.seq RemovedBody388_275 RemovedBody388_278

def RemovedBody388_280 : StackLang.HolProg 64 :=
.seq RemovedBody388_274 RemovedBody388_279

def RemovedBody388_281 : StackLang.HolProg 64 :=
.seq RemovedBody388_273 RemovedBody388_280

def RemovedBody388_282 : StackLang.HolProg 64 :=
.seq RemovedBody388_272 RemovedBody388_281

def RemovedBody388_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody388_284 : StackLang.HolProg 64 :=
.seq RemovedBody388_282 RemovedBody388_283

def RemovedBody388_285 : StackLang.HolProg 64 :=
.call (some (RemovedBody388_271, 0, 388, 8)) (Sum.inl 77) (some (RemovedBody388_284, 388, 9))

def RemovedBody388_286 : StackLang.HolProg 64 :=
.seq RemovedBody388_252 RemovedBody388_285

def RemovedBody388_287 : StackLang.HolProg 64 :=
.seq RemovedBody388_251 RemovedBody388_286

def RemovedBody388_288 : StackLang.HolProg 64 :=
.seq RemovedBody388_250 RemovedBody388_287

def RemovedBody388_289 : StackLang.HolProg 64 :=
.seq RemovedBody388_221 RemovedBody388_288

def RemovedBody388_290 : StackLang.HolProg 64 :=
.seq RemovedBody388_218 RemovedBody388_289

def RemovedBody388_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody388_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody388_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody388_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody388_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 18446744073709551600#64))

def RemovedBody388_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody388_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 18446744073709551416#64))

def RemovedBody388_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody388_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody388_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody388_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody388_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody388_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody388_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody388_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody388_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody388_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551600#64)))

def RemovedBody388_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 18446744073709551600#64))

def RemovedBody388_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody388_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody388_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1161#64)

def RemovedBody388_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody388_325 : StackLang.HolProg 64 :=
.seq RemovedBody388_323 RemovedBody388_324

def RemovedBody388_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody388_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody388_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody388_329 : StackLang.HolProg 64 :=
.seq RemovedBody388_327 RemovedBody388_328

def RemovedBody388_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_331 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody388_329 RemovedBody388_330

def RemovedBody388_332 : StackLang.HolProg 64 :=
.seq RemovedBody388_326 RemovedBody388_331

def RemovedBody388_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody388_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody388_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 388 11

def RemovedBody388_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody388_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody388_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody388_342 : StackLang.HolProg 64 :=
.seq RemovedBody388_340 RemovedBody388_341

def RemovedBody388_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody388_344 : StackLang.HolProg 64 :=
.seq RemovedBody388_342 RemovedBody388_343

def RemovedBody388_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_346 : StackLang.HolProg 64 :=
.seq RemovedBody388_344 RemovedBody388_345

def RemovedBody388_347 : StackLang.HolProg 64 :=
.seq RemovedBody388_339 RemovedBody388_346

def RemovedBody388_348 : StackLang.HolProg 64 :=
.seq RemovedBody388_338 RemovedBody388_347

def RemovedBody388_349 : StackLang.HolProg 64 :=
.seq RemovedBody388_337 RemovedBody388_348

def RemovedBody388_350 : StackLang.HolProg 64 :=
.seq RemovedBody388_336 RemovedBody388_349

def RemovedBody388_351 : StackLang.HolProg 64 :=
.seq RemovedBody388_335 RemovedBody388_350

def RemovedBody388_352 : StackLang.HolProg 64 :=
.seq RemovedBody388_334 RemovedBody388_351

def RemovedBody388_353 : StackLang.HolProg 64 :=
.seq RemovedBody388_333 RemovedBody388_352

def RemovedBody388_354 : StackLang.HolProg 64 :=
.seq RemovedBody388_332 RemovedBody388_353

def RemovedBody388_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody388_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody388_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody388_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody388_362 : StackLang.HolProg 64 :=
.seq RemovedBody388_360 RemovedBody388_361

def RemovedBody388_363 : StackLang.HolProg 64 :=
.seq RemovedBody388_359 RemovedBody388_362

def RemovedBody388_364 : StackLang.HolProg 64 :=
.seq RemovedBody388_358 RemovedBody388_363

def RemovedBody388_365 : StackLang.HolProg 64 :=
.seq RemovedBody388_357 RemovedBody388_364

def RemovedBody388_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody388_367 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody388_368 : StackLang.HolProg 64 :=
.seq RemovedBody388_366 RemovedBody388_367

def RemovedBody388_369 : StackLang.HolProg 64 :=
.call (some (RemovedBody388_365, 0, 388, 10)) (Sum.inl 192) (some (RemovedBody388_368, 388, 11))

def RemovedBody388_370 : StackLang.HolProg 64 :=
.seq RemovedBody388_356 RemovedBody388_369

def RemovedBody388_371 : StackLang.HolProg 64 :=
.seq RemovedBody388_355 RemovedBody388_370

def RemovedBody388_372 : StackLang.HolProg 64 :=
.seq RemovedBody388_354 RemovedBody388_371

def RemovedBody388_373 : StackLang.HolProg 64 :=
.seq RemovedBody388_325 RemovedBody388_372

def RemovedBody388_374 : StackLang.HolProg 64 :=
.seq RemovedBody388_322 RemovedBody388_373

def RemovedBody388_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody388_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody388_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody388_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody388_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody388_380 : StackLang.HolProg 64 :=
.seq RemovedBody388_378 RemovedBody388_379

def RemovedBody388_381 : StackLang.HolProg 64 :=
.seq RemovedBody388_377 RemovedBody388_380

def RemovedBody388_382 : StackLang.HolProg 64 :=
.seq RemovedBody388_376 RemovedBody388_381

def RemovedBody388_383 : StackLang.HolProg 64 :=
.seq RemovedBody388_375 RemovedBody388_382

def RemovedBody388_384 : StackLang.HolProg 64 :=
.seq RemovedBody388_374 RemovedBody388_383

def RemovedBody388_385 : StackLang.HolProg 64 :=
.seq RemovedBody388_321 RemovedBody388_384

def RemovedBody388_386 : StackLang.HolProg 64 :=
.seq RemovedBody388_320 RemovedBody388_385

def RemovedBody388_387 : StackLang.HolProg 64 :=
.seq RemovedBody388_319 RemovedBody388_386

def RemovedBody388_388 : StackLang.HolProg 64 :=
.seq RemovedBody388_318 RemovedBody388_387

def RemovedBody388_389 : StackLang.HolProg 64 :=
.seq RemovedBody388_317 RemovedBody388_388

def RemovedBody388_390 : StackLang.HolProg 64 :=
.seq RemovedBody388_316 RemovedBody388_389

def RemovedBody388_391 : StackLang.HolProg 64 :=
.seq RemovedBody388_315 RemovedBody388_390

def RemovedBody388_392 : StackLang.HolProg 64 :=
.seq RemovedBody388_314 RemovedBody388_391

def RemovedBody388_393 : StackLang.HolProg 64 :=
.seq RemovedBody388_313 RemovedBody388_392

def RemovedBody388_394 : StackLang.HolProg 64 :=
.seq RemovedBody388_312 RemovedBody388_393

def RemovedBody388_395 : StackLang.HolProg 64 :=
.seq RemovedBody388_311 RemovedBody388_394

def RemovedBody388_396 : StackLang.HolProg 64 :=
.seq RemovedBody388_310 RemovedBody388_395

def RemovedBody388_397 : StackLang.HolProg 64 :=
.seq RemovedBody388_309 RemovedBody388_396

def RemovedBody388_398 : StackLang.HolProg 64 :=
.seq RemovedBody388_308 RemovedBody388_397

def RemovedBody388_399 : StackLang.HolProg 64 :=
.seq RemovedBody388_307 RemovedBody388_398

def RemovedBody388_400 : StackLang.HolProg 64 :=
.seq RemovedBody388_306 RemovedBody388_399

def RemovedBody388_401 : StackLang.HolProg 64 :=
.seq RemovedBody388_305 RemovedBody388_400

def RemovedBody388_402 : StackLang.HolProg 64 :=
.seq RemovedBody388_304 RemovedBody388_401

def RemovedBody388_403 : StackLang.HolProg 64 :=
.seq RemovedBody388_303 RemovedBody388_402

def RemovedBody388_404 : StackLang.HolProg 64 :=
.seq RemovedBody388_302 RemovedBody388_403

def RemovedBody388_405 : StackLang.HolProg 64 :=
.seq RemovedBody388_301 RemovedBody388_404

def RemovedBody388_406 : StackLang.HolProg 64 :=
.seq RemovedBody388_300 RemovedBody388_405

def RemovedBody388_407 : StackLang.HolProg 64 :=
.seq RemovedBody388_299 RemovedBody388_406

def RemovedBody388_408 : StackLang.HolProg 64 :=
.seq RemovedBody388_298 RemovedBody388_407

def RemovedBody388_409 : StackLang.HolProg 64 :=
.seq RemovedBody388_297 RemovedBody388_408

def RemovedBody388_410 : StackLang.HolProg 64 :=
.seq RemovedBody388_296 RemovedBody388_409

def RemovedBody388_411 : StackLang.HolProg 64 :=
.seq RemovedBody388_295 RemovedBody388_410

def RemovedBody388_412 : StackLang.HolProg 64 :=
.seq RemovedBody388_294 RemovedBody388_411

def RemovedBody388_413 : StackLang.HolProg 64 :=
.seq RemovedBody388_293 RemovedBody388_412

def RemovedBody388_414 : StackLang.HolProg 64 :=
.seq RemovedBody388_292 RemovedBody388_413

def RemovedBody388_415 : StackLang.HolProg 64 :=
.seq RemovedBody388_291 RemovedBody388_414

def RemovedBody388_416 : StackLang.HolProg 64 :=
.seq RemovedBody388_290 RemovedBody388_415

def RemovedBody388_417 : StackLang.HolProg 64 :=
.seq RemovedBody388_217 RemovedBody388_416

def RemovedBody388_418 : StackLang.HolProg 64 :=
.seq RemovedBody388_212 RemovedBody388_417

def RemovedBody388_419 : StackLang.HolProg 64 :=
.seq RemovedBody388_211 RemovedBody388_418

def RemovedBody388_420 : StackLang.HolProg 64 :=
.seq RemovedBody388_152 RemovedBody388_419

def RemovedBody388_421 : StackLang.HolProg 64 :=
.seq RemovedBody388_149 RemovedBody388_420

def RemovedBody388_422 : StackLang.HolProg 64 :=
.seq RemovedBody388_148 RemovedBody388_421

def RemovedBody388_423 : StackLang.HolProg 64 :=
.seq RemovedBody388_147 RemovedBody388_422

def RemovedBody388_424 : StackLang.HolProg 64 :=
.seq RemovedBody388_146 RemovedBody388_423

def RemovedBody388_425 : StackLang.HolProg 64 :=
.seq RemovedBody388_73 RemovedBody388_424

def RemovedBody388_426 : StackLang.HolProg 64 :=
.seq RemovedBody388_72 RemovedBody388_425

def RemovedBody388_427 : StackLang.HolProg 64 :=
.seq RemovedBody388_71 RemovedBody388_426

def RemovedBody388_428 : StackLang.HolProg 64 :=
.seq RemovedBody388_70 RemovedBody388_427

def RemovedBody388_429 : StackLang.HolProg 64 :=
.seq RemovedBody388_69 RemovedBody388_428

def RemovedBody388_430 : StackLang.HolProg 64 :=
.seq RemovedBody388_68 RemovedBody388_429

def RemovedBody388_431 : StackLang.HolProg 64 :=
.seq RemovedBody388_67 RemovedBody388_430

def RemovedBody388_432 : StackLang.HolProg 64 :=
.seq RemovedBody388_66 RemovedBody388_431

def RemovedBody388_433 : StackLang.HolProg 64 :=
.seq RemovedBody388_13 RemovedBody388_432

def RemovedBody388_434 : StackLang.HolProg 64 :=
.seq RemovedBody388_6 RemovedBody388_433

def Removed388 : Nat × StackLang.HolProg 64 := (388, RemovedBody388_434)
theorem Removed388_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc388 = Removed388 := by
  kernel_rfl
#print axioms Removed388_eq
end InitECandidate.Proofs.BackendStages
