import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc361
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody361_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def RemovedBody361_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody361_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody361_3 : StackLang.HolProg 64 :=
.seq RemovedBody361_1 RemovedBody361_2

def RemovedBody361_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody361_3 RemovedBody361_4

def RemovedBody361_6 : StackLang.HolProg 64 :=
.seq RemovedBody361_0 RemovedBody361_5

def RemovedBody361_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody361_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody361_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody361_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_13 : StackLang.HolProg 64 :=
.seq RemovedBody361_11 RemovedBody361_12

def RemovedBody361_14 : StackLang.HolProg 64 :=
.seq RemovedBody361_10 RemovedBody361_13

def RemovedBody361_15 : StackLang.HolProg 64 :=
.seq RemovedBody361_9 RemovedBody361_14

def RemovedBody361_16 : StackLang.HolProg 64 :=
.seq RemovedBody361_8 RemovedBody361_15

def RemovedBody361_17 : StackLang.HolProg 64 :=
.seq RemovedBody361_7 RemovedBody361_16

def RemovedBody361_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1035#64)

def RemovedBody361_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_21 : StackLang.HolProg 64 :=
.seq RemovedBody361_19 RemovedBody361_20

def RemovedBody361_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody361_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody361_25 : StackLang.HolProg 64 :=
.seq RemovedBody361_23 RemovedBody361_24

def RemovedBody361_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody361_25 RemovedBody361_26

def RemovedBody361_28 : StackLang.HolProg 64 :=
.seq RemovedBody361_22 RemovedBody361_27

def RemovedBody361_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody361_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 361 3

def RemovedBody361_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody361_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody361_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody361_38 : StackLang.HolProg 64 :=
.seq RemovedBody361_36 RemovedBody361_37

def RemovedBody361_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody361_40 : StackLang.HolProg 64 :=
.seq RemovedBody361_38 RemovedBody361_39

def RemovedBody361_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_42 : StackLang.HolProg 64 :=
.seq RemovedBody361_40 RemovedBody361_41

def RemovedBody361_43 : StackLang.HolProg 64 :=
.seq RemovedBody361_35 RemovedBody361_42

def RemovedBody361_44 : StackLang.HolProg 64 :=
.seq RemovedBody361_34 RemovedBody361_43

def RemovedBody361_45 : StackLang.HolProg 64 :=
.seq RemovedBody361_33 RemovedBody361_44

def RemovedBody361_46 : StackLang.HolProg 64 :=
.seq RemovedBody361_32 RemovedBody361_45

def RemovedBody361_47 : StackLang.HolProg 64 :=
.seq RemovedBody361_31 RemovedBody361_46

def RemovedBody361_48 : StackLang.HolProg 64 :=
.seq RemovedBody361_30 RemovedBody361_47

def RemovedBody361_49 : StackLang.HolProg 64 :=
.seq RemovedBody361_29 RemovedBody361_48

def RemovedBody361_50 : StackLang.HolProg 64 :=
.seq RemovedBody361_28 RemovedBody361_49

def RemovedBody361_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody361_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_59 : StackLang.HolProg 64 :=
.seq RemovedBody361_57 RemovedBody361_58

def RemovedBody361_60 : StackLang.HolProg 64 :=
.seq RemovedBody361_56 RemovedBody361_59

def RemovedBody361_61 : StackLang.HolProg 64 :=
.seq RemovedBody361_55 RemovedBody361_60

def RemovedBody361_62 : StackLang.HolProg 64 :=
.seq RemovedBody361_54 RemovedBody361_61

def RemovedBody361_63 : StackLang.HolProg 64 :=
.seq RemovedBody361_53 RemovedBody361_62

def RemovedBody361_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody361_66 : StackLang.HolProg 64 :=
.seq RemovedBody361_64 RemovedBody361_65

def RemovedBody361_67 : StackLang.HolProg 64 :=
.call (some (RemovedBody361_63, 0, 361, 2)) (Sum.inl 360) (some (RemovedBody361_66, 361, 3))

def RemovedBody361_68 : StackLang.HolProg 64 :=
.seq RemovedBody361_52 RemovedBody361_67

def RemovedBody361_69 : StackLang.HolProg 64 :=
.seq RemovedBody361_51 RemovedBody361_68

def RemovedBody361_70 : StackLang.HolProg 64 :=
.seq RemovedBody361_50 RemovedBody361_69

def RemovedBody361_71 : StackLang.HolProg 64 :=
.seq RemovedBody361_21 RemovedBody361_70

def RemovedBody361_72 : StackLang.HolProg 64 :=
.seq RemovedBody361_18 RemovedBody361_71

def RemovedBody361_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody361_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_77 : StackLang.HolProg 64 :=
.seq RemovedBody361_75 RemovedBody361_76

def RemovedBody361_78 : StackLang.HolProg 64 :=
.seq RemovedBody361_74 RemovedBody361_77

def RemovedBody361_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1036#64)

def RemovedBody361_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_82 : StackLang.HolProg 64 :=
.seq RemovedBody361_80 RemovedBody361_81

def RemovedBody361_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody361_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody361_86 : StackLang.HolProg 64 :=
.seq RemovedBody361_84 RemovedBody361_85

def RemovedBody361_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody361_86 RemovedBody361_87

def RemovedBody361_89 : StackLang.HolProg 64 :=
.seq RemovedBody361_83 RemovedBody361_88

def RemovedBody361_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody361_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 361 5

def RemovedBody361_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody361_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody361_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody361_99 : StackLang.HolProg 64 :=
.seq RemovedBody361_97 RemovedBody361_98

def RemovedBody361_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody361_101 : StackLang.HolProg 64 :=
.seq RemovedBody361_99 RemovedBody361_100

def RemovedBody361_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_103 : StackLang.HolProg 64 :=
.seq RemovedBody361_101 RemovedBody361_102

def RemovedBody361_104 : StackLang.HolProg 64 :=
.seq RemovedBody361_96 RemovedBody361_103

def RemovedBody361_105 : StackLang.HolProg 64 :=
.seq RemovedBody361_95 RemovedBody361_104

def RemovedBody361_106 : StackLang.HolProg 64 :=
.seq RemovedBody361_94 RemovedBody361_105

def RemovedBody361_107 : StackLang.HolProg 64 :=
.seq RemovedBody361_93 RemovedBody361_106

def RemovedBody361_108 : StackLang.HolProg 64 :=
.seq RemovedBody361_92 RemovedBody361_107

def RemovedBody361_109 : StackLang.HolProg 64 :=
.seq RemovedBody361_91 RemovedBody361_108

def RemovedBody361_110 : StackLang.HolProg 64 :=
.seq RemovedBody361_90 RemovedBody361_109

def RemovedBody361_111 : StackLang.HolProg 64 :=
.seq RemovedBody361_89 RemovedBody361_110

def RemovedBody361_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody361_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_122 : StackLang.HolProg 64 :=
.seq RemovedBody361_120 RemovedBody361_121

def RemovedBody361_123 : StackLang.HolProg 64 :=
.seq RemovedBody361_119 RemovedBody361_122

def RemovedBody361_124 : StackLang.HolProg 64 :=
.seq RemovedBody361_118 RemovedBody361_123

def RemovedBody361_125 : StackLang.HolProg 64 :=
.seq RemovedBody361_117 RemovedBody361_124

def RemovedBody361_126 : StackLang.HolProg 64 :=
.seq RemovedBody361_116 RemovedBody361_125

def RemovedBody361_127 : StackLang.HolProg 64 :=
.seq RemovedBody361_115 RemovedBody361_126

def RemovedBody361_128 : StackLang.HolProg 64 :=
.seq RemovedBody361_114 RemovedBody361_127

def RemovedBody361_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_132 : StackLang.HolProg 64 :=
.seq RemovedBody361_130 RemovedBody361_131

def RemovedBody361_133 : StackLang.HolProg 64 :=
.seq RemovedBody361_129 RemovedBody361_132

def RemovedBody361_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody361_135 : StackLang.HolProg 64 :=
.seq RemovedBody361_133 RemovedBody361_134

def RemovedBody361_136 : StackLang.HolProg 64 :=
.call (some (RemovedBody361_128, 0, 361, 4)) (Sum.inl 178) (some (RemovedBody361_135, 361, 5))

def RemovedBody361_137 : StackLang.HolProg 64 :=
.seq RemovedBody361_113 RemovedBody361_136

def RemovedBody361_138 : StackLang.HolProg 64 :=
.seq RemovedBody361_112 RemovedBody361_137

def RemovedBody361_139 : StackLang.HolProg 64 :=
.seq RemovedBody361_111 RemovedBody361_138

def RemovedBody361_140 : StackLang.HolProg 64 :=
.seq RemovedBody361_82 RemovedBody361_139

def RemovedBody361_141 : StackLang.HolProg 64 :=
.seq RemovedBody361_79 RemovedBody361_140

def RemovedBody361_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody361_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody361_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_149 : StackLang.HolProg 64 :=
.seq RemovedBody361_147 RemovedBody361_148

def RemovedBody361_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody361_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody361_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody361_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody361_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 16#64))

def RemovedBody361_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 33#64)

def RemovedBody361_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody361_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody361_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody361_166 : StackLang.HolProg 64 :=
.seq RemovedBody361_164 RemovedBody361_165

def RemovedBody361_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody361_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody361_171 : StackLang.HolProg 64 :=
.seq RemovedBody361_169 RemovedBody361_170

def RemovedBody361_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_175 : StackLang.HolProg 64 :=
.seq RemovedBody361_173 RemovedBody361_174

def RemovedBody361_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody361_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody361_180 : StackLang.HolProg 64 :=
.seq RemovedBody361_178 RemovedBody361_179

def RemovedBody361_181 : StackLang.HolProg 64 :=
.seq RemovedBody361_177 RemovedBody361_180

def RemovedBody361_182 : StackLang.HolProg 64 :=
.seq RemovedBody361_176 RemovedBody361_181

def RemovedBody361_183 : StackLang.HolProg 64 :=
.seq RemovedBody361_175 RemovedBody361_182

def RemovedBody361_184 : StackLang.HolProg 64 :=
.seq RemovedBody361_172 RemovedBody361_183

def RemovedBody361_185 : StackLang.HolProg 64 :=
.seq RemovedBody361_171 RemovedBody361_184

def RemovedBody361_186 : StackLang.HolProg 64 :=
.seq RemovedBody361_168 RemovedBody361_185

def RemovedBody361_187 : StackLang.HolProg 64 :=
.seq RemovedBody361_167 RemovedBody361_186

def RemovedBody361_188 : StackLang.HolProg 64 :=
.seq RemovedBody361_166 RemovedBody361_187

def RemovedBody361_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1037#64)

def RemovedBody361_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_192 : StackLang.HolProg 64 :=
.seq RemovedBody361_190 RemovedBody361_191

def RemovedBody361_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody361_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody361_196 : StackLang.HolProg 64 :=
.seq RemovedBody361_194 RemovedBody361_195

def RemovedBody361_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_198 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody361_196 RemovedBody361_197

def RemovedBody361_199 : StackLang.HolProg 64 :=
.seq RemovedBody361_193 RemovedBody361_198

def RemovedBody361_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody361_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 361 7

def RemovedBody361_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody361_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody361_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody361_209 : StackLang.HolProg 64 :=
.seq RemovedBody361_207 RemovedBody361_208

def RemovedBody361_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody361_211 : StackLang.HolProg 64 :=
.seq RemovedBody361_209 RemovedBody361_210

def RemovedBody361_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_213 : StackLang.HolProg 64 :=
.seq RemovedBody361_211 RemovedBody361_212

def RemovedBody361_214 : StackLang.HolProg 64 :=
.seq RemovedBody361_206 RemovedBody361_213

def RemovedBody361_215 : StackLang.HolProg 64 :=
.seq RemovedBody361_205 RemovedBody361_214

def RemovedBody361_216 : StackLang.HolProg 64 :=
.seq RemovedBody361_204 RemovedBody361_215

def RemovedBody361_217 : StackLang.HolProg 64 :=
.seq RemovedBody361_203 RemovedBody361_216

def RemovedBody361_218 : StackLang.HolProg 64 :=
.seq RemovedBody361_202 RemovedBody361_217

def RemovedBody361_219 : StackLang.HolProg 64 :=
.seq RemovedBody361_201 RemovedBody361_218

def RemovedBody361_220 : StackLang.HolProg 64 :=
.seq RemovedBody361_200 RemovedBody361_219

def RemovedBody361_221 : StackLang.HolProg 64 :=
.seq RemovedBody361_199 RemovedBody361_220

def RemovedBody361_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody361_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody361_231 : StackLang.HolProg 64 :=
.seq RemovedBody361_229 RemovedBody361_230

def RemovedBody361_232 : StackLang.HolProg 64 :=
.seq RemovedBody361_228 RemovedBody361_231

def RemovedBody361_233 : StackLang.HolProg 64 :=
.seq RemovedBody361_227 RemovedBody361_232

def RemovedBody361_234 : StackLang.HolProg 64 :=
.seq RemovedBody361_226 RemovedBody361_233

def RemovedBody361_235 : StackLang.HolProg 64 :=
.seq RemovedBody361_225 RemovedBody361_234

def RemovedBody361_236 : StackLang.HolProg 64 :=
.seq RemovedBody361_224 RemovedBody361_235

def RemovedBody361_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody361_239 : StackLang.HolProg 64 :=
.seq RemovedBody361_237 RemovedBody361_238

def RemovedBody361_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody361_241 : StackLang.HolProg 64 :=
.seq RemovedBody361_239 RemovedBody361_240

def RemovedBody361_242 : StackLang.HolProg 64 :=
.call (some (RemovedBody361_236, 0, 361, 6)) (Sum.inl 180) (some (RemovedBody361_241, 361, 7))

def RemovedBody361_243 : StackLang.HolProg 64 :=
.seq RemovedBody361_223 RemovedBody361_242

def RemovedBody361_244 : StackLang.HolProg 64 :=
.seq RemovedBody361_222 RemovedBody361_243

def RemovedBody361_245 : StackLang.HolProg 64 :=
.seq RemovedBody361_221 RemovedBody361_244

def RemovedBody361_246 : StackLang.HolProg 64 :=
.seq RemovedBody361_192 RemovedBody361_245

def RemovedBody361_247 : StackLang.HolProg 64 :=
.seq RemovedBody361_189 RemovedBody361_246

def RemovedBody361_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody361_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody361_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 21#64)))

def RemovedBody361_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody361_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody361_255 : StackLang.HolProg 64 :=
.seq RemovedBody361_253 RemovedBody361_254

def RemovedBody361_256 : StackLang.HolProg 64 :=
.seq RemovedBody361_252 RemovedBody361_255

def RemovedBody361_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1038#64)

def RemovedBody361_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_260 : StackLang.HolProg 64 :=
.seq RemovedBody361_258 RemovedBody361_259

def RemovedBody361_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody361_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody361_264 : StackLang.HolProg 64 :=
.seq RemovedBody361_262 RemovedBody361_263

def RemovedBody361_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_266 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody361_264 RemovedBody361_265

def RemovedBody361_267 : StackLang.HolProg 64 :=
.seq RemovedBody361_261 RemovedBody361_266

def RemovedBody361_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody361_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 361 9

def RemovedBody361_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody361_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody361_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody361_277 : StackLang.HolProg 64 :=
.seq RemovedBody361_275 RemovedBody361_276

def RemovedBody361_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody361_279 : StackLang.HolProg 64 :=
.seq RemovedBody361_277 RemovedBody361_278

def RemovedBody361_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_281 : StackLang.HolProg 64 :=
.seq RemovedBody361_279 RemovedBody361_280

def RemovedBody361_282 : StackLang.HolProg 64 :=
.seq RemovedBody361_274 RemovedBody361_281

def RemovedBody361_283 : StackLang.HolProg 64 :=
.seq RemovedBody361_273 RemovedBody361_282

def RemovedBody361_284 : StackLang.HolProg 64 :=
.seq RemovedBody361_272 RemovedBody361_283

def RemovedBody361_285 : StackLang.HolProg 64 :=
.seq RemovedBody361_271 RemovedBody361_284

def RemovedBody361_286 : StackLang.HolProg 64 :=
.seq RemovedBody361_270 RemovedBody361_285

def RemovedBody361_287 : StackLang.HolProg 64 :=
.seq RemovedBody361_269 RemovedBody361_286

def RemovedBody361_288 : StackLang.HolProg 64 :=
.seq RemovedBody361_268 RemovedBody361_287

def RemovedBody361_289 : StackLang.HolProg 64 :=
.seq RemovedBody361_267 RemovedBody361_288

def RemovedBody361_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody361_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody361_299 : StackLang.HolProg 64 :=
.seq RemovedBody361_297 RemovedBody361_298

def RemovedBody361_300 : StackLang.HolProg 64 :=
.seq RemovedBody361_296 RemovedBody361_299

def RemovedBody361_301 : StackLang.HolProg 64 :=
.seq RemovedBody361_295 RemovedBody361_300

def RemovedBody361_302 : StackLang.HolProg 64 :=
.seq RemovedBody361_294 RemovedBody361_301

def RemovedBody361_303 : StackLang.HolProg 64 :=
.seq RemovedBody361_293 RemovedBody361_302

def RemovedBody361_304 : StackLang.HolProg 64 :=
.seq RemovedBody361_292 RemovedBody361_303

def RemovedBody361_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody361_307 : StackLang.HolProg 64 :=
.seq RemovedBody361_305 RemovedBody361_306

def RemovedBody361_308 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody361_309 : StackLang.HolProg 64 :=
.seq RemovedBody361_307 RemovedBody361_308

def RemovedBody361_310 : StackLang.HolProg 64 :=
.call (some (RemovedBody361_304, 0, 361, 8)) (Sum.inl 178) (some (RemovedBody361_309, 361, 9))

def RemovedBody361_311 : StackLang.HolProg 64 :=
.seq RemovedBody361_291 RemovedBody361_310

def RemovedBody361_312 : StackLang.HolProg 64 :=
.seq RemovedBody361_290 RemovedBody361_311

def RemovedBody361_313 : StackLang.HolProg 64 :=
.seq RemovedBody361_289 RemovedBody361_312

def RemovedBody361_314 : StackLang.HolProg 64 :=
.seq RemovedBody361_260 RemovedBody361_313

def RemovedBody361_315 : StackLang.HolProg 64 :=
.seq RemovedBody361_257 RemovedBody361_314

def RemovedBody361_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody361_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody361_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def RemovedBody361_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody361_324 : StackLang.HolProg 64 :=
.seq RemovedBody361_322 RemovedBody361_323

def RemovedBody361_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1039#64)

def RemovedBody361_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_328 : StackLang.HolProg 64 :=
.seq RemovedBody361_326 RemovedBody361_327

def RemovedBody361_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody361_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody361_332 : StackLang.HolProg 64 :=
.seq RemovedBody361_330 RemovedBody361_331

def RemovedBody361_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody361_332 RemovedBody361_333

def RemovedBody361_335 : StackLang.HolProg 64 :=
.seq RemovedBody361_329 RemovedBody361_334

def RemovedBody361_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody361_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 361 11

def RemovedBody361_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody361_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody361_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody361_345 : StackLang.HolProg 64 :=
.seq RemovedBody361_343 RemovedBody361_344

def RemovedBody361_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody361_347 : StackLang.HolProg 64 :=
.seq RemovedBody361_345 RemovedBody361_346

def RemovedBody361_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_349 : StackLang.HolProg 64 :=
.seq RemovedBody361_347 RemovedBody361_348

def RemovedBody361_350 : StackLang.HolProg 64 :=
.seq RemovedBody361_342 RemovedBody361_349

def RemovedBody361_351 : StackLang.HolProg 64 :=
.seq RemovedBody361_341 RemovedBody361_350

def RemovedBody361_352 : StackLang.HolProg 64 :=
.seq RemovedBody361_340 RemovedBody361_351

def RemovedBody361_353 : StackLang.HolProg 64 :=
.seq RemovedBody361_339 RemovedBody361_352

def RemovedBody361_354 : StackLang.HolProg 64 :=
.seq RemovedBody361_338 RemovedBody361_353

def RemovedBody361_355 : StackLang.HolProg 64 :=
.seq RemovedBody361_337 RemovedBody361_354

def RemovedBody361_356 : StackLang.HolProg 64 :=
.seq RemovedBody361_336 RemovedBody361_355

def RemovedBody361_357 : StackLang.HolProg 64 :=
.seq RemovedBody361_335 RemovedBody361_356

def RemovedBody361_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody361_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_368 : StackLang.HolProg 64 :=
.seq RemovedBody361_366 RemovedBody361_367

def RemovedBody361_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_371 : StackLang.HolProg 64 :=
.seq RemovedBody361_369 RemovedBody361_370

def RemovedBody361_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_374 : StackLang.HolProg 64 :=
.seq RemovedBody361_372 RemovedBody361_373

def RemovedBody361_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody361_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_377 : StackLang.HolProg 64 :=
.seq RemovedBody361_375 RemovedBody361_376

def RemovedBody361_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody361_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody361_380 : StackLang.HolProg 64 :=
.seq RemovedBody361_378 RemovedBody361_379

def RemovedBody361_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody361_382 : StackLang.HolProg 64 :=
.seq RemovedBody361_380 RemovedBody361_381

def RemovedBody361_383 : StackLang.HolProg 64 :=
.seq RemovedBody361_377 RemovedBody361_382

def RemovedBody361_384 : StackLang.HolProg 64 :=
.seq RemovedBody361_374 RemovedBody361_383

def RemovedBody361_385 : StackLang.HolProg 64 :=
.seq RemovedBody361_371 RemovedBody361_384

def RemovedBody361_386 : StackLang.HolProg 64 :=
.seq RemovedBody361_368 RemovedBody361_385

def RemovedBody361_387 : StackLang.HolProg 64 :=
.seq RemovedBody361_365 RemovedBody361_386

def RemovedBody361_388 : StackLang.HolProg 64 :=
.seq RemovedBody361_364 RemovedBody361_387

def RemovedBody361_389 : StackLang.HolProg 64 :=
.seq RemovedBody361_363 RemovedBody361_388

def RemovedBody361_390 : StackLang.HolProg 64 :=
.seq RemovedBody361_362 RemovedBody361_389

def RemovedBody361_391 : StackLang.HolProg 64 :=
.seq RemovedBody361_361 RemovedBody361_390

def RemovedBody361_392 : StackLang.HolProg 64 :=
.seq RemovedBody361_360 RemovedBody361_391

def RemovedBody361_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_396 : StackLang.HolProg 64 :=
.seq RemovedBody361_394 RemovedBody361_395

def RemovedBody361_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_399 : StackLang.HolProg 64 :=
.seq RemovedBody361_397 RemovedBody361_398

def RemovedBody361_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_402 : StackLang.HolProg 64 :=
.seq RemovedBody361_400 RemovedBody361_401

def RemovedBody361_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody361_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_405 : StackLang.HolProg 64 :=
.seq RemovedBody361_403 RemovedBody361_404

def RemovedBody361_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody361_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody361_408 : StackLang.HolProg 64 :=
.seq RemovedBody361_406 RemovedBody361_407

def RemovedBody361_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody361_410 : StackLang.HolProg 64 :=
.seq RemovedBody361_408 RemovedBody361_409

def RemovedBody361_411 : StackLang.HolProg 64 :=
.seq RemovedBody361_405 RemovedBody361_410

def RemovedBody361_412 : StackLang.HolProg 64 :=
.seq RemovedBody361_402 RemovedBody361_411

def RemovedBody361_413 : StackLang.HolProg 64 :=
.seq RemovedBody361_399 RemovedBody361_412

def RemovedBody361_414 : StackLang.HolProg 64 :=
.seq RemovedBody361_396 RemovedBody361_413

def RemovedBody361_415 : StackLang.HolProg 64 :=
.seq RemovedBody361_393 RemovedBody361_414

def RemovedBody361_416 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody361_417 : StackLang.HolProg 64 :=
.seq RemovedBody361_415 RemovedBody361_416

def RemovedBody361_418 : StackLang.HolProg 64 :=
.call (some (RemovedBody361_392, 0, 361, 10)) (Sum.inl 176) (some (RemovedBody361_417, 361, 11))

def RemovedBody361_419 : StackLang.HolProg 64 :=
.seq RemovedBody361_359 RemovedBody361_418

def RemovedBody361_420 : StackLang.HolProg 64 :=
.seq RemovedBody361_358 RemovedBody361_419

def RemovedBody361_421 : StackLang.HolProg 64 :=
.seq RemovedBody361_357 RemovedBody361_420

def RemovedBody361_422 : StackLang.HolProg 64 :=
.seq RemovedBody361_328 RemovedBody361_421

def RemovedBody361_423 : StackLang.HolProg 64 :=
.seq RemovedBody361_325 RemovedBody361_422

def RemovedBody361_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody361_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody361_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody361_429 : StackLang.HolProg 64 :=
.seq RemovedBody361_427 RemovedBody361_428

def RemovedBody361_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1040#64)

def RemovedBody361_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_433 : StackLang.HolProg 64 :=
.seq RemovedBody361_431 RemovedBody361_432

def RemovedBody361_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody361_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody361_437 : StackLang.HolProg 64 :=
.seq RemovedBody361_435 RemovedBody361_436

def RemovedBody361_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_439 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody361_437 RemovedBody361_438

def RemovedBody361_440 : StackLang.HolProg 64 :=
.seq RemovedBody361_434 RemovedBody361_439

def RemovedBody361_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody361_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 361 13

def RemovedBody361_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody361_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody361_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody361_450 : StackLang.HolProg 64 :=
.seq RemovedBody361_448 RemovedBody361_449

def RemovedBody361_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody361_452 : StackLang.HolProg 64 :=
.seq RemovedBody361_450 RemovedBody361_451

def RemovedBody361_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_454 : StackLang.HolProg 64 :=
.seq RemovedBody361_452 RemovedBody361_453

def RemovedBody361_455 : StackLang.HolProg 64 :=
.seq RemovedBody361_447 RemovedBody361_454

def RemovedBody361_456 : StackLang.HolProg 64 :=
.seq RemovedBody361_446 RemovedBody361_455

def RemovedBody361_457 : StackLang.HolProg 64 :=
.seq RemovedBody361_445 RemovedBody361_456

def RemovedBody361_458 : StackLang.HolProg 64 :=
.seq RemovedBody361_444 RemovedBody361_457

def RemovedBody361_459 : StackLang.HolProg 64 :=
.seq RemovedBody361_443 RemovedBody361_458

def RemovedBody361_460 : StackLang.HolProg 64 :=
.seq RemovedBody361_442 RemovedBody361_459

def RemovedBody361_461 : StackLang.HolProg 64 :=
.seq RemovedBody361_441 RemovedBody361_460

def RemovedBody361_462 : StackLang.HolProg 64 :=
.seq RemovedBody361_440 RemovedBody361_461

def RemovedBody361_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody361_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_474 : StackLang.HolProg 64 :=
.seq RemovedBody361_472 RemovedBody361_473

def RemovedBody361_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_477 : StackLang.HolProg 64 :=
.seq RemovedBody361_475 RemovedBody361_476

def RemovedBody361_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_480 : StackLang.HolProg 64 :=
.seq RemovedBody361_478 RemovedBody361_479

def RemovedBody361_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody361_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_483 : StackLang.HolProg 64 :=
.seq RemovedBody361_481 RemovedBody361_482

def RemovedBody361_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody361_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_486 : StackLang.HolProg 64 :=
.seq RemovedBody361_484 RemovedBody361_485

def RemovedBody361_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody361_488 : StackLang.HolProg 64 :=
.seq RemovedBody361_486 RemovedBody361_487

def RemovedBody361_489 : StackLang.HolProg 64 :=
.seq RemovedBody361_483 RemovedBody361_488

def RemovedBody361_490 : StackLang.HolProg 64 :=
.seq RemovedBody361_480 RemovedBody361_489

def RemovedBody361_491 : StackLang.HolProg 64 :=
.seq RemovedBody361_477 RemovedBody361_490

def RemovedBody361_492 : StackLang.HolProg 64 :=
.seq RemovedBody361_474 RemovedBody361_491

def RemovedBody361_493 : StackLang.HolProg 64 :=
.seq RemovedBody361_471 RemovedBody361_492

def RemovedBody361_494 : StackLang.HolProg 64 :=
.seq RemovedBody361_470 RemovedBody361_493

def RemovedBody361_495 : StackLang.HolProg 64 :=
.seq RemovedBody361_469 RemovedBody361_494

def RemovedBody361_496 : StackLang.HolProg 64 :=
.seq RemovedBody361_468 RemovedBody361_495

def RemovedBody361_497 : StackLang.HolProg 64 :=
.seq RemovedBody361_467 RemovedBody361_496

def RemovedBody361_498 : StackLang.HolProg 64 :=
.seq RemovedBody361_466 RemovedBody361_497

def RemovedBody361_499 : StackLang.HolProg 64 :=
.seq RemovedBody361_465 RemovedBody361_498

def RemovedBody361_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_504 : StackLang.HolProg 64 :=
.seq RemovedBody361_502 RemovedBody361_503

def RemovedBody361_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_507 : StackLang.HolProg 64 :=
.seq RemovedBody361_505 RemovedBody361_506

def RemovedBody361_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_510 : StackLang.HolProg 64 :=
.seq RemovedBody361_508 RemovedBody361_509

def RemovedBody361_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody361_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_513 : StackLang.HolProg 64 :=
.seq RemovedBody361_511 RemovedBody361_512

def RemovedBody361_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody361_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_516 : StackLang.HolProg 64 :=
.seq RemovedBody361_514 RemovedBody361_515

def RemovedBody361_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody361_518 : StackLang.HolProg 64 :=
.seq RemovedBody361_516 RemovedBody361_517

def RemovedBody361_519 : StackLang.HolProg 64 :=
.seq RemovedBody361_513 RemovedBody361_518

def RemovedBody361_520 : StackLang.HolProg 64 :=
.seq RemovedBody361_510 RemovedBody361_519

def RemovedBody361_521 : StackLang.HolProg 64 :=
.seq RemovedBody361_507 RemovedBody361_520

def RemovedBody361_522 : StackLang.HolProg 64 :=
.seq RemovedBody361_504 RemovedBody361_521

def RemovedBody361_523 : StackLang.HolProg 64 :=
.seq RemovedBody361_501 RemovedBody361_522

def RemovedBody361_524 : StackLang.HolProg 64 :=
.seq RemovedBody361_500 RemovedBody361_523

def RemovedBody361_525 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody361_526 : StackLang.HolProg 64 :=
.seq RemovedBody361_524 RemovedBody361_525

def RemovedBody361_527 : StackLang.HolProg 64 :=
.call (some (RemovedBody361_499, 0, 361, 12)) (Sum.inl 178) (some (RemovedBody361_526, 361, 13))

def RemovedBody361_528 : StackLang.HolProg 64 :=
.seq RemovedBody361_464 RemovedBody361_527

def RemovedBody361_529 : StackLang.HolProg 64 :=
.seq RemovedBody361_463 RemovedBody361_528

def RemovedBody361_530 : StackLang.HolProg 64 :=
.seq RemovedBody361_462 RemovedBody361_529

def RemovedBody361_531 : StackLang.HolProg 64 :=
.seq RemovedBody361_433 RemovedBody361_530

def RemovedBody361_532 : StackLang.HolProg 64 :=
.seq RemovedBody361_430 RemovedBody361_531

def RemovedBody361_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody361_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def RemovedBody361_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody361_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody361_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody361_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody361_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody361_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody361_550 : StackLang.HolProg 64 :=
.seq RemovedBody361_548 RemovedBody361_549

def RemovedBody361_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_553 : StackLang.HolProg 64 :=
.seq RemovedBody361_551 RemovedBody361_552

def RemovedBody361_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_556 : StackLang.HolProg 64 :=
.seq RemovedBody361_554 RemovedBody361_555

def RemovedBody361_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody361_560 : StackLang.HolProg 64 :=
.seq RemovedBody361_558 RemovedBody361_559

def RemovedBody361_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody361_564 : StackLang.HolProg 64 :=
.seq RemovedBody361_562 RemovedBody361_563

def RemovedBody361_565 : StackLang.HolProg 64 :=
.seq RemovedBody361_561 RemovedBody361_564

def RemovedBody361_566 : StackLang.HolProg 64 :=
.seq RemovedBody361_560 RemovedBody361_565

def RemovedBody361_567 : StackLang.HolProg 64 :=
.seq RemovedBody361_557 RemovedBody361_566

def RemovedBody361_568 : StackLang.HolProg 64 :=
.seq RemovedBody361_556 RemovedBody361_567

def RemovedBody361_569 : StackLang.HolProg 64 :=
.seq RemovedBody361_553 RemovedBody361_568

def RemovedBody361_570 : StackLang.HolProg 64 :=
.seq RemovedBody361_550 RemovedBody361_569

def RemovedBody361_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1041#64)

def RemovedBody361_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_574 : StackLang.HolProg 64 :=
.seq RemovedBody361_572 RemovedBody361_573

def RemovedBody361_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody361_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody361_578 : StackLang.HolProg 64 :=
.seq RemovedBody361_576 RemovedBody361_577

def RemovedBody361_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_580 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody361_578 RemovedBody361_579

def RemovedBody361_581 : StackLang.HolProg 64 :=
.seq RemovedBody361_575 RemovedBody361_580

def RemovedBody361_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody361_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody361_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 361 15

def RemovedBody361_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody361_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody361_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody361_591 : StackLang.HolProg 64 :=
.seq RemovedBody361_589 RemovedBody361_590

def RemovedBody361_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody361_593 : StackLang.HolProg 64 :=
.seq RemovedBody361_591 RemovedBody361_592

def RemovedBody361_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_595 : StackLang.HolProg 64 :=
.seq RemovedBody361_593 RemovedBody361_594

def RemovedBody361_596 : StackLang.HolProg 64 :=
.seq RemovedBody361_588 RemovedBody361_595

def RemovedBody361_597 : StackLang.HolProg 64 :=
.seq RemovedBody361_587 RemovedBody361_596

def RemovedBody361_598 : StackLang.HolProg 64 :=
.seq RemovedBody361_586 RemovedBody361_597

def RemovedBody361_599 : StackLang.HolProg 64 :=
.seq RemovedBody361_585 RemovedBody361_598

def RemovedBody361_600 : StackLang.HolProg 64 :=
.seq RemovedBody361_584 RemovedBody361_599

def RemovedBody361_601 : StackLang.HolProg 64 :=
.seq RemovedBody361_583 RemovedBody361_600

def RemovedBody361_602 : StackLang.HolProg 64 :=
.seq RemovedBody361_582 RemovedBody361_601

def RemovedBody361_603 : StackLang.HolProg 64 :=
.seq RemovedBody361_581 RemovedBody361_602

def RemovedBody361_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody361_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody361_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody361_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody361_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody361_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody361_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody361_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody361_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody361_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody361_624 : StackLang.HolProg 64 :=
.seq RemovedBody361_622 RemovedBody361_623

def RemovedBody361_625 : StackLang.HolProg 64 :=
.seq RemovedBody361_621 RemovedBody361_624

def RemovedBody361_626 : StackLang.HolProg 64 :=
.seq RemovedBody361_620 RemovedBody361_625

def RemovedBody361_627 : StackLang.HolProg 64 :=
.seq RemovedBody361_619 RemovedBody361_626

def RemovedBody361_628 : StackLang.HolProg 64 :=
.seq RemovedBody361_618 RemovedBody361_627

def RemovedBody361_629 : StackLang.HolProg 64 :=
.seq RemovedBody361_617 RemovedBody361_628

def RemovedBody361_630 : StackLang.HolProg 64 :=
.seq RemovedBody361_616 RemovedBody361_629

def RemovedBody361_631 : StackLang.HolProg 64 :=
.seq RemovedBody361_615 RemovedBody361_630

def RemovedBody361_632 : StackLang.HolProg 64 :=
.seq RemovedBody361_614 RemovedBody361_631

def RemovedBody361_633 : StackLang.HolProg 64 :=
.seq RemovedBody361_613 RemovedBody361_632

def RemovedBody361_634 : StackLang.HolProg 64 :=
.seq RemovedBody361_612 RemovedBody361_633

def RemovedBody361_635 : StackLang.HolProg 64 :=
.seq RemovedBody361_611 RemovedBody361_634

def RemovedBody361_636 : StackLang.HolProg 64 :=
.seq RemovedBody361_610 RemovedBody361_635

def RemovedBody361_637 : StackLang.HolProg 64 :=
.seq RemovedBody361_609 RemovedBody361_636

def RemovedBody361_638 : StackLang.HolProg 64 :=
.seq RemovedBody361_608 RemovedBody361_637

def RemovedBody361_639 : StackLang.HolProg 64 :=
.seq RemovedBody361_607 RemovedBody361_638

def RemovedBody361_640 : StackLang.HolProg 64 :=
.seq RemovedBody361_606 RemovedBody361_639

def RemovedBody361_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody361_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody361_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody361_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody361_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody361_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody361_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody361_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody361_654 : StackLang.HolProg 64 :=
.seq RemovedBody361_652 RemovedBody361_653

def RemovedBody361_655 : StackLang.HolProg 64 :=
.seq RemovedBody361_651 RemovedBody361_654

def RemovedBody361_656 : StackLang.HolProg 64 :=
.seq RemovedBody361_650 RemovedBody361_655

def RemovedBody361_657 : StackLang.HolProg 64 :=
.seq RemovedBody361_649 RemovedBody361_656

def RemovedBody361_658 : StackLang.HolProg 64 :=
.seq RemovedBody361_648 RemovedBody361_657

def RemovedBody361_659 : StackLang.HolProg 64 :=
.seq RemovedBody361_647 RemovedBody361_658

def RemovedBody361_660 : StackLang.HolProg 64 :=
.seq RemovedBody361_646 RemovedBody361_659

def RemovedBody361_661 : StackLang.HolProg 64 :=
.seq RemovedBody361_645 RemovedBody361_660

def RemovedBody361_662 : StackLang.HolProg 64 :=
.seq RemovedBody361_644 RemovedBody361_661

def RemovedBody361_663 : StackLang.HolProg 64 :=
.seq RemovedBody361_643 RemovedBody361_662

def RemovedBody361_664 : StackLang.HolProg 64 :=
.seq RemovedBody361_642 RemovedBody361_663

def RemovedBody361_665 : StackLang.HolProg 64 :=
.seq RemovedBody361_641 RemovedBody361_664

def RemovedBody361_666 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody361_667 : StackLang.HolProg 64 :=
.seq RemovedBody361_665 RemovedBody361_666

def RemovedBody361_668 : StackLang.HolProg 64 :=
.call (some (RemovedBody361_640, 0, 361, 14)) (Sum.inl 176) (some (RemovedBody361_667, 361, 15))

def RemovedBody361_669 : StackLang.HolProg 64 :=
.seq RemovedBody361_605 RemovedBody361_668

def RemovedBody361_670 : StackLang.HolProg 64 :=
.seq RemovedBody361_604 RemovedBody361_669

def RemovedBody361_671 : StackLang.HolProg 64 :=
.seq RemovedBody361_603 RemovedBody361_670

def RemovedBody361_672 : StackLang.HolProg 64 :=
.seq RemovedBody361_574 RemovedBody361_671

def RemovedBody361_673 : StackLang.HolProg 64 :=
.seq RemovedBody361_571 RemovedBody361_672

def RemovedBody361_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody361_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody361_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody361_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody361_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody361_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody361_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_688 : StackLang.HolProg 64 :=
.seq RemovedBody361_686 RemovedBody361_687

def RemovedBody361_689 : StackLang.HolProg 64 :=
.seq RemovedBody361_685 RemovedBody361_688

def RemovedBody361_690 : StackLang.HolProg 64 :=
.seq RemovedBody361_684 RemovedBody361_689

def RemovedBody361_691 : StackLang.HolProg 64 :=
.seq RemovedBody361_683 RemovedBody361_690

def RemovedBody361_692 : StackLang.HolProg 64 :=
.seq RemovedBody361_682 RemovedBody361_691

def RemovedBody361_693 : StackLang.HolProg 64 :=
.seq RemovedBody361_681 RemovedBody361_692

def RemovedBody361_694 : StackLang.HolProg 64 :=
.seq RemovedBody361_680 RemovedBody361_693

def RemovedBody361_695 : StackLang.HolProg 64 :=
.seq RemovedBody361_679 RemovedBody361_694

def RemovedBody361_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody361_697 : StackLang.HolProg 64 :=
.seq RemovedBody361_695 RemovedBody361_696

def RemovedBody361_698 : StackLang.HolProg 64 :=
.seq RemovedBody361_678 RemovedBody361_697

def RemovedBody361_699 : StackLang.HolProg 64 :=
.seq RemovedBody361_677 RemovedBody361_698

def RemovedBody361_700 : StackLang.HolProg 64 :=
.seq RemovedBody361_676 RemovedBody361_699

def RemovedBody361_701 : StackLang.HolProg 64 :=
.seq RemovedBody361_675 RemovedBody361_700

def RemovedBody361_702 : StackLang.HolProg 64 :=
.seq RemovedBody361_674 RemovedBody361_701

def RemovedBody361_703 : StackLang.HolProg 64 :=
.seq RemovedBody361_673 RemovedBody361_702

def RemovedBody361_704 : StackLang.HolProg 64 :=
.seq RemovedBody361_570 RemovedBody361_703

def RemovedBody361_705 : StackLang.HolProg 64 :=
.seq RemovedBody361_547 RemovedBody361_704

def RemovedBody361_706 : StackLang.HolProg 64 :=
.seq RemovedBody361_546 RemovedBody361_705

def RemovedBody361_707 : StackLang.HolProg 64 :=
.seq RemovedBody361_545 RemovedBody361_706

def RemovedBody361_708 : StackLang.HolProg 64 :=
.seq RemovedBody361_544 RemovedBody361_707

def RemovedBody361_709 : StackLang.HolProg 64 :=
.seq RemovedBody361_543 RemovedBody361_708

def RemovedBody361_710 : StackLang.HolProg 64 :=
.seq RemovedBody361_542 RemovedBody361_709

def RemovedBody361_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody361_713 : StackLang.HolProg 64 :=
.seq RemovedBody361_711 RemovedBody361_712

def RemovedBody361_714 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody361_710 RemovedBody361_713

def RemovedBody361_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody361_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody361_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody361_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody361_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_725 : StackLang.HolProg 64 :=
.seq RemovedBody361_723 RemovedBody361_724

def RemovedBody361_726 : StackLang.HolProg 64 :=
.seq RemovedBody361_722 RemovedBody361_725

def RemovedBody361_727 : StackLang.HolProg 64 :=
.seq RemovedBody361_721 RemovedBody361_726

def RemovedBody361_728 : StackLang.HolProg 64 :=
.seq RemovedBody361_720 RemovedBody361_727

def RemovedBody361_729 : StackLang.HolProg 64 :=
.seq RemovedBody361_719 RemovedBody361_728

def RemovedBody361_730 : StackLang.HolProg 64 :=
.seq RemovedBody361_718 RemovedBody361_729

def RemovedBody361_731 : StackLang.HolProg 64 :=
.seq RemovedBody361_717 RemovedBody361_730

def RemovedBody361_732 : StackLang.HolProg 64 :=
.seq RemovedBody361_716 RemovedBody361_731

def RemovedBody361_733 : StackLang.HolProg 64 :=
.seq RemovedBody361_715 RemovedBody361_732

def RemovedBody361_734 : StackLang.HolProg 64 :=
.seq RemovedBody361_714 RemovedBody361_733

def RemovedBody361_735 : StackLang.HolProg 64 :=
.seq RemovedBody361_541 RemovedBody361_734

def RemovedBody361_736 : StackLang.HolProg 64 :=
.loop RemovedBody361_735

def RemovedBody361_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody361_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody361_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_743 : StackLang.HolProg 64 :=
.seq RemovedBody361_741 RemovedBody361_742

def RemovedBody361_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody361_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_746 : StackLang.HolProg 64 :=
.seq RemovedBody361_744 RemovedBody361_745

def RemovedBody361_747 : StackLang.HolProg 64 :=
.seq RemovedBody361_743 RemovedBody361_746

def RemovedBody361_748 : StackLang.HolProg 64 :=
.seq RemovedBody361_740 RemovedBody361_747

def RemovedBody361_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody361_750 : StackLang.HolProg 64 :=
.seq RemovedBody361_748 RemovedBody361_749

def RemovedBody361_751 : StackLang.HolProg 64 :=
.seq RemovedBody361_739 RemovedBody361_750

def RemovedBody361_752 : StackLang.HolProg 64 :=
.seq RemovedBody361_738 RemovedBody361_751

def RemovedBody361_753 : StackLang.HolProg 64 :=
.seq RemovedBody361_737 RemovedBody361_752

def RemovedBody361_754 : StackLang.HolProg 64 :=
.seq RemovedBody361_736 RemovedBody361_753

def RemovedBody361_755 : StackLang.HolProg 64 :=
.seq RemovedBody361_540 RemovedBody361_754

def RemovedBody361_756 : StackLang.HolProg 64 :=
.seq RemovedBody361_539 RemovedBody361_755

def RemovedBody361_757 : StackLang.HolProg 64 :=
.seq RemovedBody361_538 RemovedBody361_756

def RemovedBody361_758 : StackLang.HolProg 64 :=
.seq RemovedBody361_537 RemovedBody361_757

def RemovedBody361_759 : StackLang.HolProg 64 :=
.seq RemovedBody361_536 RemovedBody361_758

def RemovedBody361_760 : StackLang.HolProg 64 :=
.seq RemovedBody361_535 RemovedBody361_759

def RemovedBody361_761 : StackLang.HolProg 64 :=
.seq RemovedBody361_534 RemovedBody361_760

def RemovedBody361_762 : StackLang.HolProg 64 :=
.seq RemovedBody361_533 RemovedBody361_761

def RemovedBody361_763 : StackLang.HolProg 64 :=
.seq RemovedBody361_532 RemovedBody361_762

def RemovedBody361_764 : StackLang.HolProg 64 :=
.seq RemovedBody361_429 RemovedBody361_763

def RemovedBody361_765 : StackLang.HolProg 64 :=
.seq RemovedBody361_426 RemovedBody361_764

def RemovedBody361_766 : StackLang.HolProg 64 :=
.seq RemovedBody361_425 RemovedBody361_765

def RemovedBody361_767 : StackLang.HolProg 64 :=
.seq RemovedBody361_424 RemovedBody361_766

def RemovedBody361_768 : StackLang.HolProg 64 :=
.seq RemovedBody361_423 RemovedBody361_767

def RemovedBody361_769 : StackLang.HolProg 64 :=
.seq RemovedBody361_324 RemovedBody361_768

def RemovedBody361_770 : StackLang.HolProg 64 :=
.seq RemovedBody361_321 RemovedBody361_769

def RemovedBody361_771 : StackLang.HolProg 64 :=
.seq RemovedBody361_320 RemovedBody361_770

def RemovedBody361_772 : StackLang.HolProg 64 :=
.seq RemovedBody361_319 RemovedBody361_771

def RemovedBody361_773 : StackLang.HolProg 64 :=
.seq RemovedBody361_318 RemovedBody361_772

def RemovedBody361_774 : StackLang.HolProg 64 :=
.seq RemovedBody361_317 RemovedBody361_773

def RemovedBody361_775 : StackLang.HolProg 64 :=
.seq RemovedBody361_316 RemovedBody361_774

def RemovedBody361_776 : StackLang.HolProg 64 :=
.seq RemovedBody361_315 RemovedBody361_775

def RemovedBody361_777 : StackLang.HolProg 64 :=
.seq RemovedBody361_256 RemovedBody361_776

def RemovedBody361_778 : StackLang.HolProg 64 :=
.seq RemovedBody361_251 RemovedBody361_777

def RemovedBody361_779 : StackLang.HolProg 64 :=
.seq RemovedBody361_250 RemovedBody361_778

def RemovedBody361_780 : StackLang.HolProg 64 :=
.seq RemovedBody361_249 RemovedBody361_779

def RemovedBody361_781 : StackLang.HolProg 64 :=
.seq RemovedBody361_248 RemovedBody361_780

def RemovedBody361_782 : StackLang.HolProg 64 :=
.seq RemovedBody361_247 RemovedBody361_781

def RemovedBody361_783 : StackLang.HolProg 64 :=
.seq RemovedBody361_188 RemovedBody361_782

def RemovedBody361_784 : StackLang.HolProg 64 :=
.seq RemovedBody361_163 RemovedBody361_783

def RemovedBody361_785 : StackLang.HolProg 64 :=
.seq RemovedBody361_162 RemovedBody361_784

def RemovedBody361_786 : StackLang.HolProg 64 :=
.seq RemovedBody361_161 RemovedBody361_785

def RemovedBody361_787 : StackLang.HolProg 64 :=
.seq RemovedBody361_160 RemovedBody361_786

def RemovedBody361_788 : StackLang.HolProg 64 :=
.seq RemovedBody361_159 RemovedBody361_787

def RemovedBody361_789 : StackLang.HolProg 64 :=
.seq RemovedBody361_158 RemovedBody361_788

def RemovedBody361_790 : StackLang.HolProg 64 :=
.seq RemovedBody361_157 RemovedBody361_789

def RemovedBody361_791 : StackLang.HolProg 64 :=
.seq RemovedBody361_156 RemovedBody361_790

def RemovedBody361_792 : StackLang.HolProg 64 :=
.seq RemovedBody361_155 RemovedBody361_791

def RemovedBody361_793 : StackLang.HolProg 64 :=
.seq RemovedBody361_154 RemovedBody361_792

def RemovedBody361_794 : StackLang.HolProg 64 :=
.seq RemovedBody361_153 RemovedBody361_793

def RemovedBody361_795 : StackLang.HolProg 64 :=
.seq RemovedBody361_152 RemovedBody361_794

def RemovedBody361_796 : StackLang.HolProg 64 :=
.seq RemovedBody361_151 RemovedBody361_795

def RemovedBody361_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody361_799 : StackLang.HolProg 64 :=
.seq RemovedBody361_797 RemovedBody361_798

def RemovedBody361_800 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody361_796 RemovedBody361_799

def RemovedBody361_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody361_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody361_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_806 : StackLang.HolProg 64 :=
.seq RemovedBody361_804 RemovedBody361_805

def RemovedBody361_807 : StackLang.HolProg 64 :=
.seq RemovedBody361_803 RemovedBody361_806

def RemovedBody361_808 : StackLang.HolProg 64 :=
.seq RemovedBody361_802 RemovedBody361_807

def RemovedBody361_809 : StackLang.HolProg 64 :=
.seq RemovedBody361_801 RemovedBody361_808

def RemovedBody361_810 : StackLang.HolProg 64 :=
.seq RemovedBody361_800 RemovedBody361_809

def RemovedBody361_811 : StackLang.HolProg 64 :=
.seq RemovedBody361_150 RemovedBody361_810

def RemovedBody361_812 : StackLang.HolProg 64 :=
.loop RemovedBody361_811

def RemovedBody361_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody361_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody361_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody361_816 : StackLang.HolProg 64 :=
.seq RemovedBody361_814 RemovedBody361_815

def RemovedBody361_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody361_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody361_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody361_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def RemovedBody361_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody361_822 : StackLang.HolProg 64 :=
.seq RemovedBody361_820 RemovedBody361_821

def RemovedBody361_823 : StackLang.HolProg 64 :=
.seq RemovedBody361_819 RemovedBody361_822

def RemovedBody361_824 : StackLang.HolProg 64 :=
.seq RemovedBody361_818 RemovedBody361_823

def RemovedBody361_825 : StackLang.HolProg 64 :=
.seq RemovedBody361_817 RemovedBody361_824

def RemovedBody361_826 : StackLang.HolProg 64 :=
.seq RemovedBody361_816 RemovedBody361_825

def RemovedBody361_827 : StackLang.HolProg 64 :=
.seq RemovedBody361_813 RemovedBody361_826

def RemovedBody361_828 : StackLang.HolProg 64 :=
.seq RemovedBody361_812 RemovedBody361_827

def RemovedBody361_829 : StackLang.HolProg 64 :=
.seq RemovedBody361_149 RemovedBody361_828

def RemovedBody361_830 : StackLang.HolProg 64 :=
.seq RemovedBody361_146 RemovedBody361_829

def RemovedBody361_831 : StackLang.HolProg 64 :=
.seq RemovedBody361_145 RemovedBody361_830

def RemovedBody361_832 : StackLang.HolProg 64 :=
.seq RemovedBody361_144 RemovedBody361_831

def RemovedBody361_833 : StackLang.HolProg 64 :=
.seq RemovedBody361_143 RemovedBody361_832

def RemovedBody361_834 : StackLang.HolProg 64 :=
.seq RemovedBody361_142 RemovedBody361_833

def RemovedBody361_835 : StackLang.HolProg 64 :=
.seq RemovedBody361_141 RemovedBody361_834

def RemovedBody361_836 : StackLang.HolProg 64 :=
.seq RemovedBody361_78 RemovedBody361_835

def RemovedBody361_837 : StackLang.HolProg 64 :=
.seq RemovedBody361_73 RemovedBody361_836

def RemovedBody361_838 : StackLang.HolProg 64 :=
.seq RemovedBody361_72 RemovedBody361_837

def RemovedBody361_839 : StackLang.HolProg 64 :=
.seq RemovedBody361_17 RemovedBody361_838

def RemovedBody361_840 : StackLang.HolProg 64 :=
.seq RemovedBody361_6 RemovedBody361_839

def Removed361 : Nat × StackLang.HolProg 64 := (361, RemovedBody361_840)
theorem Removed361_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc361 = Removed361 := by
  kernel_rfl
#print axioms Removed361_eq
end InitECandidate.Proofs.BackendStages
