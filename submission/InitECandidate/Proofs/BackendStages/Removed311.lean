import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc311
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody311_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody311_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody311_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody311_3 : StackLang.HolProg 64 :=
.seq RemovedBody311_1 RemovedBody311_2

def RemovedBody311_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody311_3 RemovedBody311_4

def RemovedBody311_6 : StackLang.HolProg 64 :=
.seq RemovedBody311_0 RemovedBody311_5

def RemovedBody311_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody311_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody311_11 : StackLang.HolProg 64 :=
.seq RemovedBody311_9 RemovedBody311_10

def RemovedBody311_12 : StackLang.HolProg 64 :=
.seq RemovedBody311_8 RemovedBody311_11

def RemovedBody311_13 : StackLang.HolProg 64 :=
.seq RemovedBody311_7 RemovedBody311_12

def RemovedBody311_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 856#64)

def RemovedBody311_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody311_17 : StackLang.HolProg 64 :=
.seq RemovedBody311_15 RemovedBody311_16

def RemovedBody311_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody311_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody311_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody311_21 : StackLang.HolProg 64 :=
.seq RemovedBody311_19 RemovedBody311_20

def RemovedBody311_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody311_21 RemovedBody311_22

def RemovedBody311_24 : StackLang.HolProg 64 :=
.seq RemovedBody311_18 RemovedBody311_23

def RemovedBody311_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody311_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody311_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 3

def RemovedBody311_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody311_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody311_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody311_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody311_34 : StackLang.HolProg 64 :=
.seq RemovedBody311_32 RemovedBody311_33

def RemovedBody311_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody311_36 : StackLang.HolProg 64 :=
.seq RemovedBody311_34 RemovedBody311_35

def RemovedBody311_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody311_38 : StackLang.HolProg 64 :=
.seq RemovedBody311_36 RemovedBody311_37

def RemovedBody311_39 : StackLang.HolProg 64 :=
.seq RemovedBody311_31 RemovedBody311_38

def RemovedBody311_40 : StackLang.HolProg 64 :=
.seq RemovedBody311_30 RemovedBody311_39

def RemovedBody311_41 : StackLang.HolProg 64 :=
.seq RemovedBody311_29 RemovedBody311_40

def RemovedBody311_42 : StackLang.HolProg 64 :=
.seq RemovedBody311_28 RemovedBody311_41

def RemovedBody311_43 : StackLang.HolProg 64 :=
.seq RemovedBody311_27 RemovedBody311_42

def RemovedBody311_44 : StackLang.HolProg 64 :=
.seq RemovedBody311_26 RemovedBody311_43

def RemovedBody311_45 : StackLang.HolProg 64 :=
.seq RemovedBody311_25 RemovedBody311_44

def RemovedBody311_46 : StackLang.HolProg 64 :=
.seq RemovedBody311_24 RemovedBody311_45

def RemovedBody311_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody311_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody311_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody311_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody311_57 : StackLang.HolProg 64 :=
.seq RemovedBody311_55 RemovedBody311_56

def RemovedBody311_58 : StackLang.HolProg 64 :=
.seq RemovedBody311_54 RemovedBody311_57

def RemovedBody311_59 : StackLang.HolProg 64 :=
.seq RemovedBody311_53 RemovedBody311_58

def RemovedBody311_60 : StackLang.HolProg 64 :=
.seq RemovedBody311_52 RemovedBody311_59

def RemovedBody311_61 : StackLang.HolProg 64 :=
.seq RemovedBody311_51 RemovedBody311_60

def RemovedBody311_62 : StackLang.HolProg 64 :=
.seq RemovedBody311_50 RemovedBody311_61

def RemovedBody311_63 : StackLang.HolProg 64 :=
.seq RemovedBody311_49 RemovedBody311_62

def RemovedBody311_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody311_67 : StackLang.HolProg 64 :=
.seq RemovedBody311_65 RemovedBody311_66

def RemovedBody311_68 : StackLang.HolProg 64 :=
.seq RemovedBody311_64 RemovedBody311_67

def RemovedBody311_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody311_70 : StackLang.HolProg 64 :=
.seq RemovedBody311_68 RemovedBody311_69

def RemovedBody311_71 : StackLang.HolProg 64 :=
.call (some (RemovedBody311_63, 0, 311, 2)) (Sum.inl 69) (some (RemovedBody311_70, 311, 3))

def RemovedBody311_72 : StackLang.HolProg 64 :=
.seq RemovedBody311_48 RemovedBody311_71

def RemovedBody311_73 : StackLang.HolProg 64 :=
.seq RemovedBody311_47 RemovedBody311_72

def RemovedBody311_74 : StackLang.HolProg 64 :=
.seq RemovedBody311_46 RemovedBody311_73

def RemovedBody311_75 : StackLang.HolProg 64 :=
.seq RemovedBody311_17 RemovedBody311_74

def RemovedBody311_76 : StackLang.HolProg 64 :=
.seq RemovedBody311_14 RemovedBody311_75

def RemovedBody311_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody311_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody311_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_81 : StackLang.HolProg 64 :=
.seq RemovedBody311_79 RemovedBody311_80

def RemovedBody311_82 : StackLang.HolProg 64 :=
.seq RemovedBody311_78 RemovedBody311_81

def RemovedBody311_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 857#64)

def RemovedBody311_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody311_86 : StackLang.HolProg 64 :=
.seq RemovedBody311_84 RemovedBody311_85

def RemovedBody311_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody311_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody311_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody311_90 : StackLang.HolProg 64 :=
.seq RemovedBody311_88 RemovedBody311_89

def RemovedBody311_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody311_90 RemovedBody311_91

def RemovedBody311_93 : StackLang.HolProg 64 :=
.seq RemovedBody311_87 RemovedBody311_92

def RemovedBody311_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody311_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody311_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 5

def RemovedBody311_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody311_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody311_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody311_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody311_103 : StackLang.HolProg 64 :=
.seq RemovedBody311_101 RemovedBody311_102

def RemovedBody311_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody311_105 : StackLang.HolProg 64 :=
.seq RemovedBody311_103 RemovedBody311_104

def RemovedBody311_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody311_107 : StackLang.HolProg 64 :=
.seq RemovedBody311_105 RemovedBody311_106

def RemovedBody311_108 : StackLang.HolProg 64 :=
.seq RemovedBody311_100 RemovedBody311_107

def RemovedBody311_109 : StackLang.HolProg 64 :=
.seq RemovedBody311_99 RemovedBody311_108

def RemovedBody311_110 : StackLang.HolProg 64 :=
.seq RemovedBody311_98 RemovedBody311_109

def RemovedBody311_111 : StackLang.HolProg 64 :=
.seq RemovedBody311_97 RemovedBody311_110

def RemovedBody311_112 : StackLang.HolProg 64 :=
.seq RemovedBody311_96 RemovedBody311_111

def RemovedBody311_113 : StackLang.HolProg 64 :=
.seq RemovedBody311_95 RemovedBody311_112

def RemovedBody311_114 : StackLang.HolProg 64 :=
.seq RemovedBody311_94 RemovedBody311_113

def RemovedBody311_115 : StackLang.HolProg 64 :=
.seq RemovedBody311_93 RemovedBody311_114

def RemovedBody311_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody311_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody311_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody311_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody311_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_127 : StackLang.HolProg 64 :=
.seq RemovedBody311_125 RemovedBody311_126

def RemovedBody311_128 : StackLang.HolProg 64 :=
.seq RemovedBody311_124 RemovedBody311_127

def RemovedBody311_129 : StackLang.HolProg 64 :=
.seq RemovedBody311_123 RemovedBody311_128

def RemovedBody311_130 : StackLang.HolProg 64 :=
.seq RemovedBody311_122 RemovedBody311_129

def RemovedBody311_131 : StackLang.HolProg 64 :=
.seq RemovedBody311_121 RemovedBody311_130

def RemovedBody311_132 : StackLang.HolProg 64 :=
.seq RemovedBody311_120 RemovedBody311_131

def RemovedBody311_133 : StackLang.HolProg 64 :=
.seq RemovedBody311_119 RemovedBody311_132

def RemovedBody311_134 : StackLang.HolProg 64 :=
.seq RemovedBody311_118 RemovedBody311_133

def RemovedBody311_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_138 : StackLang.HolProg 64 :=
.seq RemovedBody311_136 RemovedBody311_137

def RemovedBody311_139 : StackLang.HolProg 64 :=
.seq RemovedBody311_135 RemovedBody311_138

def RemovedBody311_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody311_141 : StackLang.HolProg 64 :=
.seq RemovedBody311_139 RemovedBody311_140

def RemovedBody311_142 : StackLang.HolProg 64 :=
.call (some (RemovedBody311_134, 0, 311, 4)) (Sum.inl 310) (some (RemovedBody311_141, 311, 5))

def RemovedBody311_143 : StackLang.HolProg 64 :=
.seq RemovedBody311_117 RemovedBody311_142

def RemovedBody311_144 : StackLang.HolProg 64 :=
.seq RemovedBody311_116 RemovedBody311_143

def RemovedBody311_145 : StackLang.HolProg 64 :=
.seq RemovedBody311_115 RemovedBody311_144

def RemovedBody311_146 : StackLang.HolProg 64 :=
.seq RemovedBody311_86 RemovedBody311_145

def RemovedBody311_147 : StackLang.HolProg 64 :=
.seq RemovedBody311_83 RemovedBody311_146

def RemovedBody311_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody311_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody311_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 858#64)

def RemovedBody311_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody311_155 : StackLang.HolProg 64 :=
.seq RemovedBody311_153 RemovedBody311_154

def RemovedBody311_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody311_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody311_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody311_159 : StackLang.HolProg 64 :=
.seq RemovedBody311_157 RemovedBody311_158

def RemovedBody311_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody311_159 RemovedBody311_160

def RemovedBody311_162 : StackLang.HolProg 64 :=
.seq RemovedBody311_156 RemovedBody311_161

def RemovedBody311_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody311_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody311_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 7

def RemovedBody311_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody311_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody311_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody311_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody311_172 : StackLang.HolProg 64 :=
.seq RemovedBody311_170 RemovedBody311_171

def RemovedBody311_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody311_174 : StackLang.HolProg 64 :=
.seq RemovedBody311_172 RemovedBody311_173

def RemovedBody311_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody311_176 : StackLang.HolProg 64 :=
.seq RemovedBody311_174 RemovedBody311_175

def RemovedBody311_177 : StackLang.HolProg 64 :=
.seq RemovedBody311_169 RemovedBody311_176

def RemovedBody311_178 : StackLang.HolProg 64 :=
.seq RemovedBody311_168 RemovedBody311_177

def RemovedBody311_179 : StackLang.HolProg 64 :=
.seq RemovedBody311_167 RemovedBody311_178

def RemovedBody311_180 : StackLang.HolProg 64 :=
.seq RemovedBody311_166 RemovedBody311_179

def RemovedBody311_181 : StackLang.HolProg 64 :=
.seq RemovedBody311_165 RemovedBody311_180

def RemovedBody311_182 : StackLang.HolProg 64 :=
.seq RemovedBody311_164 RemovedBody311_181

def RemovedBody311_183 : StackLang.HolProg 64 :=
.seq RemovedBody311_163 RemovedBody311_182

def RemovedBody311_184 : StackLang.HolProg 64 :=
.seq RemovedBody311_162 RemovedBody311_183

def RemovedBody311_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody311_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody311_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody311_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_193 : StackLang.HolProg 64 :=
.seq RemovedBody311_191 RemovedBody311_192

def RemovedBody311_194 : StackLang.HolProg 64 :=
.seq RemovedBody311_190 RemovedBody311_193

def RemovedBody311_195 : StackLang.HolProg 64 :=
.seq RemovedBody311_189 RemovedBody311_194

def RemovedBody311_196 : StackLang.HolProg 64 :=
.seq RemovedBody311_188 RemovedBody311_195

def RemovedBody311_197 : StackLang.HolProg 64 :=
.seq RemovedBody311_187 RemovedBody311_196

def RemovedBody311_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_199 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody311_200 : StackLang.HolProg 64 :=
.seq RemovedBody311_198 RemovedBody311_199

def RemovedBody311_201 : StackLang.HolProg 64 :=
.call (some (RemovedBody311_197, 0, 311, 6)) (Sum.inl 306) (some (RemovedBody311_200, 311, 7))

def RemovedBody311_202 : StackLang.HolProg 64 :=
.seq RemovedBody311_186 RemovedBody311_201

def RemovedBody311_203 : StackLang.HolProg 64 :=
.seq RemovedBody311_185 RemovedBody311_202

def RemovedBody311_204 : StackLang.HolProg 64 :=
.seq RemovedBody311_184 RemovedBody311_203

def RemovedBody311_205 : StackLang.HolProg 64 :=
.seq RemovedBody311_155 RemovedBody311_204

def RemovedBody311_206 : StackLang.HolProg 64 :=
.seq RemovedBody311_152 RemovedBody311_205

def RemovedBody311_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody311_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody311_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody311_212 : StackLang.HolProg 64 :=
.seq RemovedBody311_210 RemovedBody311_211

def RemovedBody311_213 : StackLang.HolProg 64 :=
.seq RemovedBody311_209 RemovedBody311_212

def RemovedBody311_214 : StackLang.HolProg 64 :=
.seq RemovedBody311_208 RemovedBody311_213

def RemovedBody311_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 859#64)

def RemovedBody311_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody311_218 : StackLang.HolProg 64 :=
.seq RemovedBody311_216 RemovedBody311_217

def RemovedBody311_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody311_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody311_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody311_222 : StackLang.HolProg 64 :=
.seq RemovedBody311_220 RemovedBody311_221

def RemovedBody311_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_224 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody311_222 RemovedBody311_223

def RemovedBody311_225 : StackLang.HolProg 64 :=
.seq RemovedBody311_219 RemovedBody311_224

def RemovedBody311_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody311_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody311_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 9

def RemovedBody311_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody311_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody311_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody311_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody311_235 : StackLang.HolProg 64 :=
.seq RemovedBody311_233 RemovedBody311_234

def RemovedBody311_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody311_237 : StackLang.HolProg 64 :=
.seq RemovedBody311_235 RemovedBody311_236

def RemovedBody311_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody311_239 : StackLang.HolProg 64 :=
.seq RemovedBody311_237 RemovedBody311_238

def RemovedBody311_240 : StackLang.HolProg 64 :=
.seq RemovedBody311_232 RemovedBody311_239

def RemovedBody311_241 : StackLang.HolProg 64 :=
.seq RemovedBody311_231 RemovedBody311_240

def RemovedBody311_242 : StackLang.HolProg 64 :=
.seq RemovedBody311_230 RemovedBody311_241

def RemovedBody311_243 : StackLang.HolProg 64 :=
.seq RemovedBody311_229 RemovedBody311_242

def RemovedBody311_244 : StackLang.HolProg 64 :=
.seq RemovedBody311_228 RemovedBody311_243

def RemovedBody311_245 : StackLang.HolProg 64 :=
.seq RemovedBody311_227 RemovedBody311_244

def RemovedBody311_246 : StackLang.HolProg 64 :=
.seq RemovedBody311_226 RemovedBody311_245

def RemovedBody311_247 : StackLang.HolProg 64 :=
.seq RemovedBody311_225 RemovedBody311_246

def RemovedBody311_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody311_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody311_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody311_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody311_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody311_258 : StackLang.HolProg 64 :=
.seq RemovedBody311_256 RemovedBody311_257

def RemovedBody311_259 : StackLang.HolProg 64 :=
.seq RemovedBody311_255 RemovedBody311_258

def RemovedBody311_260 : StackLang.HolProg 64 :=
.seq RemovedBody311_254 RemovedBody311_259

def RemovedBody311_261 : StackLang.HolProg 64 :=
.seq RemovedBody311_253 RemovedBody311_260

def RemovedBody311_262 : StackLang.HolProg 64 :=
.seq RemovedBody311_252 RemovedBody311_261

def RemovedBody311_263 : StackLang.HolProg 64 :=
.seq RemovedBody311_251 RemovedBody311_262

def RemovedBody311_264 : StackLang.HolProg 64 :=
.seq RemovedBody311_250 RemovedBody311_263

def RemovedBody311_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody311_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody311_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody311_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody311_269 : StackLang.HolProg 64 :=
.seq RemovedBody311_267 RemovedBody311_268

def RemovedBody311_270 : StackLang.HolProg 64 :=
.seq RemovedBody311_266 RemovedBody311_269

def RemovedBody311_271 : StackLang.HolProg 64 :=
.seq RemovedBody311_265 RemovedBody311_270

def RemovedBody311_272 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody311_273 : StackLang.HolProg 64 :=
.seq RemovedBody311_271 RemovedBody311_272

def RemovedBody311_274 : StackLang.HolProg 64 :=
.call (some (RemovedBody311_264, 0, 311, 8)) (Sum.inl 70) (some (RemovedBody311_273, 311, 9))

def RemovedBody311_275 : StackLang.HolProg 64 :=
.seq RemovedBody311_249 RemovedBody311_274

def RemovedBody311_276 : StackLang.HolProg 64 :=
.seq RemovedBody311_248 RemovedBody311_275

def RemovedBody311_277 : StackLang.HolProg 64 :=
.seq RemovedBody311_247 RemovedBody311_276

def RemovedBody311_278 : StackLang.HolProg 64 :=
.seq RemovedBody311_218 RemovedBody311_277

def RemovedBody311_279 : StackLang.HolProg 64 :=
.seq RemovedBody311_215 RemovedBody311_278

def RemovedBody311_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody311_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody311_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody311_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody311_284 : StackLang.HolProg 64 :=
.seq RemovedBody311_282 RemovedBody311_283

def RemovedBody311_285 : StackLang.HolProg 64 :=
.seq RemovedBody311_281 RemovedBody311_284

def RemovedBody311_286 : StackLang.HolProg 64 :=
.seq RemovedBody311_280 RemovedBody311_285

def RemovedBody311_287 : StackLang.HolProg 64 :=
.seq RemovedBody311_279 RemovedBody311_286

def RemovedBody311_288 : StackLang.HolProg 64 :=
.seq RemovedBody311_214 RemovedBody311_287

def RemovedBody311_289 : StackLang.HolProg 64 :=
.seq RemovedBody311_207 RemovedBody311_288

def RemovedBody311_290 : StackLang.HolProg 64 :=
.seq RemovedBody311_206 RemovedBody311_289

def RemovedBody311_291 : StackLang.HolProg 64 :=
.seq RemovedBody311_151 RemovedBody311_290

def RemovedBody311_292 : StackLang.HolProg 64 :=
.seq RemovedBody311_150 RemovedBody311_291

def RemovedBody311_293 : StackLang.HolProg 64 :=
.seq RemovedBody311_149 RemovedBody311_292

def RemovedBody311_294 : StackLang.HolProg 64 :=
.seq RemovedBody311_148 RemovedBody311_293

def RemovedBody311_295 : StackLang.HolProg 64 :=
.seq RemovedBody311_147 RemovedBody311_294

def RemovedBody311_296 : StackLang.HolProg 64 :=
.seq RemovedBody311_82 RemovedBody311_295

def RemovedBody311_297 : StackLang.HolProg 64 :=
.seq RemovedBody311_77 RemovedBody311_296

def RemovedBody311_298 : StackLang.HolProg 64 :=
.seq RemovedBody311_76 RemovedBody311_297

def RemovedBody311_299 : StackLang.HolProg 64 :=
.seq RemovedBody311_13 RemovedBody311_298

def RemovedBody311_300 : StackLang.HolProg 64 :=
.seq RemovedBody311_6 RemovedBody311_299

def Removed311 : Nat × StackLang.HolProg 64 := (311, RemovedBody311_300)
theorem Removed311_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc311 = Removed311 := by
  kernel_rfl
#print axioms Removed311_eq
end InitECandidate.Proofs.BackendStages
