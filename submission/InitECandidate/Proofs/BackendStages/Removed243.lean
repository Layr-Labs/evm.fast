import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc243
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody243_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody243_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody243_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody243_3 : StackLang.HolProg 64 :=
.seq RemovedBody243_1 RemovedBody243_2

def RemovedBody243_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody243_3 RemovedBody243_4

def RemovedBody243_6 : StackLang.HolProg 64 :=
.seq RemovedBody243_0 RemovedBody243_5

def RemovedBody243_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody243_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody243_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody243_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody243_12 : StackLang.HolProg 64 :=
.seq RemovedBody243_10 RemovedBody243_11

def RemovedBody243_13 : StackLang.HolProg 64 :=
.seq RemovedBody243_9 RemovedBody243_12

def RemovedBody243_14 : StackLang.HolProg 64 :=
.seq RemovedBody243_8 RemovedBody243_13

def RemovedBody243_15 : StackLang.HolProg 64 :=
.seq RemovedBody243_7 RemovedBody243_14

def RemovedBody243_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 476#64)

def RemovedBody243_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody243_19 : StackLang.HolProg 64 :=
.seq RemovedBody243_17 RemovedBody243_18

def RemovedBody243_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody243_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody243_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody243_23 : StackLang.HolProg 64 :=
.seq RemovedBody243_21 RemovedBody243_22

def RemovedBody243_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody243_23 RemovedBody243_24

def RemovedBody243_26 : StackLang.HolProg 64 :=
.seq RemovedBody243_20 RemovedBody243_25

def RemovedBody243_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody243_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody243_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 3

def RemovedBody243_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody243_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody243_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody243_36 : StackLang.HolProg 64 :=
.seq RemovedBody243_34 RemovedBody243_35

def RemovedBody243_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody243_38 : StackLang.HolProg 64 :=
.seq RemovedBody243_36 RemovedBody243_37

def RemovedBody243_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_40 : StackLang.HolProg 64 :=
.seq RemovedBody243_38 RemovedBody243_39

def RemovedBody243_41 : StackLang.HolProg 64 :=
.seq RemovedBody243_33 RemovedBody243_40

def RemovedBody243_42 : StackLang.HolProg 64 :=
.seq RemovedBody243_32 RemovedBody243_41

def RemovedBody243_43 : StackLang.HolProg 64 :=
.seq RemovedBody243_31 RemovedBody243_42

def RemovedBody243_44 : StackLang.HolProg 64 :=
.seq RemovedBody243_30 RemovedBody243_43

def RemovedBody243_45 : StackLang.HolProg 64 :=
.seq RemovedBody243_29 RemovedBody243_44

def RemovedBody243_46 : StackLang.HolProg 64 :=
.seq RemovedBody243_28 RemovedBody243_45

def RemovedBody243_47 : StackLang.HolProg 64 :=
.seq RemovedBody243_27 RemovedBody243_46

def RemovedBody243_48 : StackLang.HolProg 64 :=
.seq RemovedBody243_26 RemovedBody243_47

def RemovedBody243_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody243_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody243_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody243_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_58 : StackLang.HolProg 64 :=
.seq RemovedBody243_56 RemovedBody243_57

def RemovedBody243_59 : StackLang.HolProg 64 :=
.seq RemovedBody243_55 RemovedBody243_58

def RemovedBody243_60 : StackLang.HolProg 64 :=
.seq RemovedBody243_54 RemovedBody243_59

def RemovedBody243_61 : StackLang.HolProg 64 :=
.seq RemovedBody243_53 RemovedBody243_60

def RemovedBody243_62 : StackLang.HolProg 64 :=
.seq RemovedBody243_52 RemovedBody243_61

def RemovedBody243_63 : StackLang.HolProg 64 :=
.seq RemovedBody243_51 RemovedBody243_62

def RemovedBody243_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody243_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_66 : StackLang.HolProg 64 :=
.seq RemovedBody243_64 RemovedBody243_65

def RemovedBody243_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody243_68 : StackLang.HolProg 64 :=
.seq RemovedBody243_66 RemovedBody243_67

def RemovedBody243_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody243_63, 0, 243, 2)) (Sum.inl 69) (some (RemovedBody243_68, 243, 3))

def RemovedBody243_70 : StackLang.HolProg 64 :=
.seq RemovedBody243_50 RemovedBody243_69

def RemovedBody243_71 : StackLang.HolProg 64 :=
.seq RemovedBody243_49 RemovedBody243_70

def RemovedBody243_72 : StackLang.HolProg 64 :=
.seq RemovedBody243_48 RemovedBody243_71

def RemovedBody243_73 : StackLang.HolProg 64 :=
.seq RemovedBody243_19 RemovedBody243_72

def RemovedBody243_74 : StackLang.HolProg 64 :=
.seq RemovedBody243_16 RemovedBody243_73

def RemovedBody243_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody243_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody243_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody243_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_79 : StackLang.HolProg 64 :=
.seq RemovedBody243_77 RemovedBody243_78

def RemovedBody243_80 : StackLang.HolProg 64 :=
.seq RemovedBody243_76 RemovedBody243_79

def RemovedBody243_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 477#64)

def RemovedBody243_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody243_84 : StackLang.HolProg 64 :=
.seq RemovedBody243_82 RemovedBody243_83

def RemovedBody243_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody243_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody243_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody243_88 : StackLang.HolProg 64 :=
.seq RemovedBody243_86 RemovedBody243_87

def RemovedBody243_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody243_88 RemovedBody243_89

def RemovedBody243_91 : StackLang.HolProg 64 :=
.seq RemovedBody243_85 RemovedBody243_90

def RemovedBody243_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody243_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody243_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 5

def RemovedBody243_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody243_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody243_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody243_101 : StackLang.HolProg 64 :=
.seq RemovedBody243_99 RemovedBody243_100

def RemovedBody243_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody243_103 : StackLang.HolProg 64 :=
.seq RemovedBody243_101 RemovedBody243_102

def RemovedBody243_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_105 : StackLang.HolProg 64 :=
.seq RemovedBody243_103 RemovedBody243_104

def RemovedBody243_106 : StackLang.HolProg 64 :=
.seq RemovedBody243_98 RemovedBody243_105

def RemovedBody243_107 : StackLang.HolProg 64 :=
.seq RemovedBody243_97 RemovedBody243_106

def RemovedBody243_108 : StackLang.HolProg 64 :=
.seq RemovedBody243_96 RemovedBody243_107

def RemovedBody243_109 : StackLang.HolProg 64 :=
.seq RemovedBody243_95 RemovedBody243_108

def RemovedBody243_110 : StackLang.HolProg 64 :=
.seq RemovedBody243_94 RemovedBody243_109

def RemovedBody243_111 : StackLang.HolProg 64 :=
.seq RemovedBody243_93 RemovedBody243_110

def RemovedBody243_112 : StackLang.HolProg 64 :=
.seq RemovedBody243_92 RemovedBody243_111

def RemovedBody243_113 : StackLang.HolProg 64 :=
.seq RemovedBody243_91 RemovedBody243_112

def RemovedBody243_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody243_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody243_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody243_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody243_123 : StackLang.HolProg 64 :=
.seq RemovedBody243_121 RemovedBody243_122

def RemovedBody243_124 : StackLang.HolProg 64 :=
.seq RemovedBody243_120 RemovedBody243_123

def RemovedBody243_125 : StackLang.HolProg 64 :=
.seq RemovedBody243_119 RemovedBody243_124

def RemovedBody243_126 : StackLang.HolProg 64 :=
.seq RemovedBody243_118 RemovedBody243_125

def RemovedBody243_127 : StackLang.HolProg 64 :=
.seq RemovedBody243_117 RemovedBody243_126

def RemovedBody243_128 : StackLang.HolProg 64 :=
.seq RemovedBody243_116 RemovedBody243_127

def RemovedBody243_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody243_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody243_131 : StackLang.HolProg 64 :=
.seq RemovedBody243_129 RemovedBody243_130

def RemovedBody243_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody243_133 : StackLang.HolProg 64 :=
.seq RemovedBody243_131 RemovedBody243_132

def RemovedBody243_134 : StackLang.HolProg 64 :=
.call (some (RemovedBody243_128, 0, 243, 4)) (Sum.inl 241) (some (RemovedBody243_133, 243, 5))

def RemovedBody243_135 : StackLang.HolProg 64 :=
.seq RemovedBody243_115 RemovedBody243_134

def RemovedBody243_136 : StackLang.HolProg 64 :=
.seq RemovedBody243_114 RemovedBody243_135

def RemovedBody243_137 : StackLang.HolProg 64 :=
.seq RemovedBody243_113 RemovedBody243_136

def RemovedBody243_138 : StackLang.HolProg 64 :=
.seq RemovedBody243_84 RemovedBody243_137

def RemovedBody243_139 : StackLang.HolProg 64 :=
.seq RemovedBody243_81 RemovedBody243_138

def RemovedBody243_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody243_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody243_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody243_143 : StackLang.HolProg 64 :=
.seq RemovedBody243_141 RemovedBody243_142

def RemovedBody243_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 478#64)

def RemovedBody243_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody243_147 : StackLang.HolProg 64 :=
.seq RemovedBody243_145 RemovedBody243_146

def RemovedBody243_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody243_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody243_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody243_151 : StackLang.HolProg 64 :=
.seq RemovedBody243_149 RemovedBody243_150

def RemovedBody243_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_153 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody243_151 RemovedBody243_152

def RemovedBody243_154 : StackLang.HolProg 64 :=
.seq RemovedBody243_148 RemovedBody243_153

def RemovedBody243_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody243_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody243_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 7

def RemovedBody243_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody243_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody243_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody243_164 : StackLang.HolProg 64 :=
.seq RemovedBody243_162 RemovedBody243_163

def RemovedBody243_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody243_166 : StackLang.HolProg 64 :=
.seq RemovedBody243_164 RemovedBody243_165

def RemovedBody243_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_168 : StackLang.HolProg 64 :=
.seq RemovedBody243_166 RemovedBody243_167

def RemovedBody243_169 : StackLang.HolProg 64 :=
.seq RemovedBody243_161 RemovedBody243_168

def RemovedBody243_170 : StackLang.HolProg 64 :=
.seq RemovedBody243_160 RemovedBody243_169

def RemovedBody243_171 : StackLang.HolProg 64 :=
.seq RemovedBody243_159 RemovedBody243_170

def RemovedBody243_172 : StackLang.HolProg 64 :=
.seq RemovedBody243_158 RemovedBody243_171

def RemovedBody243_173 : StackLang.HolProg 64 :=
.seq RemovedBody243_157 RemovedBody243_172

def RemovedBody243_174 : StackLang.HolProg 64 :=
.seq RemovedBody243_156 RemovedBody243_173

def RemovedBody243_175 : StackLang.HolProg 64 :=
.seq RemovedBody243_155 RemovedBody243_174

def RemovedBody243_176 : StackLang.HolProg 64 :=
.seq RemovedBody243_154 RemovedBody243_175

def RemovedBody243_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody243_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_184 : StackLang.HolProg 64 :=
.seq RemovedBody243_182 RemovedBody243_183

def RemovedBody243_185 : StackLang.HolProg 64 :=
.seq RemovedBody243_181 RemovedBody243_184

def RemovedBody243_186 : StackLang.HolProg 64 :=
.seq RemovedBody243_180 RemovedBody243_185

def RemovedBody243_187 : StackLang.HolProg 64 :=
.seq RemovedBody243_179 RemovedBody243_186

def RemovedBody243_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_189 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody243_190 : StackLang.HolProg 64 :=
.seq RemovedBody243_188 RemovedBody243_189

def RemovedBody243_191 : StackLang.HolProg 64 :=
.call (some (RemovedBody243_187, 0, 243, 6)) (Sum.inl 235) (some (RemovedBody243_190, 243, 7))

def RemovedBody243_192 : StackLang.HolProg 64 :=
.seq RemovedBody243_178 RemovedBody243_191

def RemovedBody243_193 : StackLang.HolProg 64 :=
.seq RemovedBody243_177 RemovedBody243_192

def RemovedBody243_194 : StackLang.HolProg 64 :=
.seq RemovedBody243_176 RemovedBody243_193

def RemovedBody243_195 : StackLang.HolProg 64 :=
.seq RemovedBody243_147 RemovedBody243_194

def RemovedBody243_196 : StackLang.HolProg 64 :=
.seq RemovedBody243_144 RemovedBody243_195

def RemovedBody243_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody243_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody243_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 479#64)

def RemovedBody243_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody243_202 : StackLang.HolProg 64 :=
.seq RemovedBody243_200 RemovedBody243_201

def RemovedBody243_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody243_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody243_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody243_206 : StackLang.HolProg 64 :=
.seq RemovedBody243_204 RemovedBody243_205

def RemovedBody243_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_208 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody243_206 RemovedBody243_207

def RemovedBody243_209 : StackLang.HolProg 64 :=
.seq RemovedBody243_203 RemovedBody243_208

def RemovedBody243_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody243_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody243_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 9

def RemovedBody243_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody243_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody243_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody243_219 : StackLang.HolProg 64 :=
.seq RemovedBody243_217 RemovedBody243_218

def RemovedBody243_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody243_221 : StackLang.HolProg 64 :=
.seq RemovedBody243_219 RemovedBody243_220

def RemovedBody243_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_223 : StackLang.HolProg 64 :=
.seq RemovedBody243_221 RemovedBody243_222

def RemovedBody243_224 : StackLang.HolProg 64 :=
.seq RemovedBody243_216 RemovedBody243_223

def RemovedBody243_225 : StackLang.HolProg 64 :=
.seq RemovedBody243_215 RemovedBody243_224

def RemovedBody243_226 : StackLang.HolProg 64 :=
.seq RemovedBody243_214 RemovedBody243_225

def RemovedBody243_227 : StackLang.HolProg 64 :=
.seq RemovedBody243_213 RemovedBody243_226

def RemovedBody243_228 : StackLang.HolProg 64 :=
.seq RemovedBody243_212 RemovedBody243_227

def RemovedBody243_229 : StackLang.HolProg 64 :=
.seq RemovedBody243_211 RemovedBody243_228

def RemovedBody243_230 : StackLang.HolProg 64 :=
.seq RemovedBody243_210 RemovedBody243_229

def RemovedBody243_231 : StackLang.HolProg 64 :=
.seq RemovedBody243_209 RemovedBody243_230

def RemovedBody243_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody243_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody243_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody243_240 : StackLang.HolProg 64 :=
.seq RemovedBody243_238 RemovedBody243_239

def RemovedBody243_241 : StackLang.HolProg 64 :=
.seq RemovedBody243_237 RemovedBody243_240

def RemovedBody243_242 : StackLang.HolProg 64 :=
.seq RemovedBody243_236 RemovedBody243_241

def RemovedBody243_243 : StackLang.HolProg 64 :=
.seq RemovedBody243_235 RemovedBody243_242

def RemovedBody243_244 : StackLang.HolProg 64 :=
.seq RemovedBody243_234 RemovedBody243_243

def RemovedBody243_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody243_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody243_247 : StackLang.HolProg 64 :=
.seq RemovedBody243_245 RemovedBody243_246

def RemovedBody243_248 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody243_249 : StackLang.HolProg 64 :=
.seq RemovedBody243_247 RemovedBody243_248

def RemovedBody243_250 : StackLang.HolProg 64 :=
.call (some (RemovedBody243_244, 0, 243, 8)) (Sum.inl 70) (some (RemovedBody243_249, 243, 9))

def RemovedBody243_251 : StackLang.HolProg 64 :=
.seq RemovedBody243_233 RemovedBody243_250

def RemovedBody243_252 : StackLang.HolProg 64 :=
.seq RemovedBody243_232 RemovedBody243_251

def RemovedBody243_253 : StackLang.HolProg 64 :=
.seq RemovedBody243_231 RemovedBody243_252

def RemovedBody243_254 : StackLang.HolProg 64 :=
.seq RemovedBody243_202 RemovedBody243_253

def RemovedBody243_255 : StackLang.HolProg 64 :=
.seq RemovedBody243_199 RemovedBody243_254

def RemovedBody243_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody243_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody243_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 480#64)

def RemovedBody243_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody243_261 : StackLang.HolProg 64 :=
.seq RemovedBody243_259 RemovedBody243_260

def RemovedBody243_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody243_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody243_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody243_265 : StackLang.HolProg 64 :=
.seq RemovedBody243_263 RemovedBody243_264

def RemovedBody243_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_267 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody243_265 RemovedBody243_266

def RemovedBody243_268 : StackLang.HolProg 64 :=
.seq RemovedBody243_262 RemovedBody243_267

def RemovedBody243_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody243_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody243_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 11

def RemovedBody243_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody243_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody243_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody243_278 : StackLang.HolProg 64 :=
.seq RemovedBody243_276 RemovedBody243_277

def RemovedBody243_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody243_280 : StackLang.HolProg 64 :=
.seq RemovedBody243_278 RemovedBody243_279

def RemovedBody243_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_282 : StackLang.HolProg 64 :=
.seq RemovedBody243_280 RemovedBody243_281

def RemovedBody243_283 : StackLang.HolProg 64 :=
.seq RemovedBody243_275 RemovedBody243_282

def RemovedBody243_284 : StackLang.HolProg 64 :=
.seq RemovedBody243_274 RemovedBody243_283

def RemovedBody243_285 : StackLang.HolProg 64 :=
.seq RemovedBody243_273 RemovedBody243_284

def RemovedBody243_286 : StackLang.HolProg 64 :=
.seq RemovedBody243_272 RemovedBody243_285

def RemovedBody243_287 : StackLang.HolProg 64 :=
.seq RemovedBody243_271 RemovedBody243_286

def RemovedBody243_288 : StackLang.HolProg 64 :=
.seq RemovedBody243_270 RemovedBody243_287

def RemovedBody243_289 : StackLang.HolProg 64 :=
.seq RemovedBody243_269 RemovedBody243_288

def RemovedBody243_290 : StackLang.HolProg 64 :=
.seq RemovedBody243_268 RemovedBody243_289

def RemovedBody243_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody243_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody243_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody243_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody243_298 : StackLang.HolProg 64 :=
.seq RemovedBody243_296 RemovedBody243_297

def RemovedBody243_299 : StackLang.HolProg 64 :=
.seq RemovedBody243_295 RemovedBody243_298

def RemovedBody243_300 : StackLang.HolProg 64 :=
.seq RemovedBody243_294 RemovedBody243_299

def RemovedBody243_301 : StackLang.HolProg 64 :=
.seq RemovedBody243_293 RemovedBody243_300

def RemovedBody243_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody243_303 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody243_304 : StackLang.HolProg 64 :=
.seq RemovedBody243_302 RemovedBody243_303

def RemovedBody243_305 : StackLang.HolProg 64 :=
.call (some (RemovedBody243_301, 0, 243, 10)) (Sum.inl 236) (some (RemovedBody243_304, 243, 11))

def RemovedBody243_306 : StackLang.HolProg 64 :=
.seq RemovedBody243_292 RemovedBody243_305

def RemovedBody243_307 : StackLang.HolProg 64 :=
.seq RemovedBody243_291 RemovedBody243_306

def RemovedBody243_308 : StackLang.HolProg 64 :=
.seq RemovedBody243_290 RemovedBody243_307

def RemovedBody243_309 : StackLang.HolProg 64 :=
.seq RemovedBody243_261 RemovedBody243_308

def RemovedBody243_310 : StackLang.HolProg 64 :=
.seq RemovedBody243_258 RemovedBody243_309

def RemovedBody243_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody243_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody243_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody243_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody243_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody243_316 : StackLang.HolProg 64 :=
.seq RemovedBody243_314 RemovedBody243_315

def RemovedBody243_317 : StackLang.HolProg 64 :=
.seq RemovedBody243_313 RemovedBody243_316

def RemovedBody243_318 : StackLang.HolProg 64 :=
.seq RemovedBody243_312 RemovedBody243_317

def RemovedBody243_319 : StackLang.HolProg 64 :=
.seq RemovedBody243_311 RemovedBody243_318

def RemovedBody243_320 : StackLang.HolProg 64 :=
.seq RemovedBody243_310 RemovedBody243_319

def RemovedBody243_321 : StackLang.HolProg 64 :=
.seq RemovedBody243_257 RemovedBody243_320

def RemovedBody243_322 : StackLang.HolProg 64 :=
.seq RemovedBody243_256 RemovedBody243_321

def RemovedBody243_323 : StackLang.HolProg 64 :=
.seq RemovedBody243_255 RemovedBody243_322

def RemovedBody243_324 : StackLang.HolProg 64 :=
.seq RemovedBody243_198 RemovedBody243_323

def RemovedBody243_325 : StackLang.HolProg 64 :=
.seq RemovedBody243_197 RemovedBody243_324

def RemovedBody243_326 : StackLang.HolProg 64 :=
.seq RemovedBody243_196 RemovedBody243_325

def RemovedBody243_327 : StackLang.HolProg 64 :=
.seq RemovedBody243_143 RemovedBody243_326

def RemovedBody243_328 : StackLang.HolProg 64 :=
.seq RemovedBody243_140 RemovedBody243_327

def RemovedBody243_329 : StackLang.HolProg 64 :=
.seq RemovedBody243_139 RemovedBody243_328

def RemovedBody243_330 : StackLang.HolProg 64 :=
.seq RemovedBody243_80 RemovedBody243_329

def RemovedBody243_331 : StackLang.HolProg 64 :=
.seq RemovedBody243_75 RemovedBody243_330

def RemovedBody243_332 : StackLang.HolProg 64 :=
.seq RemovedBody243_74 RemovedBody243_331

def RemovedBody243_333 : StackLang.HolProg 64 :=
.seq RemovedBody243_15 RemovedBody243_332

def RemovedBody243_334 : StackLang.HolProg 64 :=
.seq RemovedBody243_6 RemovedBody243_333

def Removed243 : Nat × StackLang.HolProg 64 := (243, RemovedBody243_334)
theorem Removed243_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc243 = Removed243 := by
  kernel_rfl
#print axioms Removed243_eq
end InitECandidate.Proofs.BackendStages
