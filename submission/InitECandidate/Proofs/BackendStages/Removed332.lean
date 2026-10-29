import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc332
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody332_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody332_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody332_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody332_3 : StackLang.HolProg 64 :=
.seq RemovedBody332_1 RemovedBody332_2

def RemovedBody332_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody332_3 RemovedBody332_4

def RemovedBody332_6 : StackLang.HolProg 64 :=
.seq RemovedBody332_0 RemovedBody332_5

def RemovedBody332_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody332_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody332_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody332_11 : StackLang.HolProg 64 :=
.seq RemovedBody332_9 RemovedBody332_10

def RemovedBody332_12 : StackLang.HolProg 64 :=
.seq RemovedBody332_8 RemovedBody332_11

def RemovedBody332_13 : StackLang.HolProg 64 :=
.seq RemovedBody332_7 RemovedBody332_12

def RemovedBody332_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 940#64)

def RemovedBody332_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody332_17 : StackLang.HolProg 64 :=
.seq RemovedBody332_15 RemovedBody332_16

def RemovedBody332_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody332_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody332_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody332_21 : StackLang.HolProg 64 :=
.seq RemovedBody332_19 RemovedBody332_20

def RemovedBody332_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody332_21 RemovedBody332_22

def RemovedBody332_24 : StackLang.HolProg 64 :=
.seq RemovedBody332_18 RemovedBody332_23

def RemovedBody332_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody332_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody332_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 3

def RemovedBody332_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody332_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody332_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody332_34 : StackLang.HolProg 64 :=
.seq RemovedBody332_32 RemovedBody332_33

def RemovedBody332_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody332_36 : StackLang.HolProg 64 :=
.seq RemovedBody332_34 RemovedBody332_35

def RemovedBody332_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_38 : StackLang.HolProg 64 :=
.seq RemovedBody332_36 RemovedBody332_37

def RemovedBody332_39 : StackLang.HolProg 64 :=
.seq RemovedBody332_31 RemovedBody332_38

def RemovedBody332_40 : StackLang.HolProg 64 :=
.seq RemovedBody332_30 RemovedBody332_39

def RemovedBody332_41 : StackLang.HolProg 64 :=
.seq RemovedBody332_29 RemovedBody332_40

def RemovedBody332_42 : StackLang.HolProg 64 :=
.seq RemovedBody332_28 RemovedBody332_41

def RemovedBody332_43 : StackLang.HolProg 64 :=
.seq RemovedBody332_27 RemovedBody332_42

def RemovedBody332_44 : StackLang.HolProg 64 :=
.seq RemovedBody332_26 RemovedBody332_43

def RemovedBody332_45 : StackLang.HolProg 64 :=
.seq RemovedBody332_25 RemovedBody332_44

def RemovedBody332_46 : StackLang.HolProg 64 :=
.seq RemovedBody332_24 RemovedBody332_45

def RemovedBody332_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody332_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody332_54 : StackLang.HolProg 64 :=
.seq RemovedBody332_52 RemovedBody332_53

def RemovedBody332_55 : StackLang.HolProg 64 :=
.seq RemovedBody332_51 RemovedBody332_54

def RemovedBody332_56 : StackLang.HolProg 64 :=
.seq RemovedBody332_50 RemovedBody332_55

def RemovedBody332_57 : StackLang.HolProg 64 :=
.seq RemovedBody332_49 RemovedBody332_56

def RemovedBody332_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody332_60 : StackLang.HolProg 64 :=
.seq RemovedBody332_58 RemovedBody332_59

def RemovedBody332_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody332_57, 0, 332, 2)) (Sum.inl 69) (some (RemovedBody332_60, 332, 3))

def RemovedBody332_62 : StackLang.HolProg 64 :=
.seq RemovedBody332_48 RemovedBody332_61

def RemovedBody332_63 : StackLang.HolProg 64 :=
.seq RemovedBody332_47 RemovedBody332_62

def RemovedBody332_64 : StackLang.HolProg 64 :=
.seq RemovedBody332_46 RemovedBody332_63

def RemovedBody332_65 : StackLang.HolProg 64 :=
.seq RemovedBody332_17 RemovedBody332_64

def RemovedBody332_66 : StackLang.HolProg 64 :=
.seq RemovedBody332_14 RemovedBody332_65

def RemovedBody332_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody332_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody332_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody332_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody332_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 941#64)

def RemovedBody332_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody332_74 : StackLang.HolProg 64 :=
.seq RemovedBody332_72 RemovedBody332_73

def RemovedBody332_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody332_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody332_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody332_78 : StackLang.HolProg 64 :=
.seq RemovedBody332_76 RemovedBody332_77

def RemovedBody332_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody332_78 RemovedBody332_79

def RemovedBody332_81 : StackLang.HolProg 64 :=
.seq RemovedBody332_75 RemovedBody332_80

def RemovedBody332_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody332_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody332_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 5

def RemovedBody332_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody332_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody332_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody332_91 : StackLang.HolProg 64 :=
.seq RemovedBody332_89 RemovedBody332_90

def RemovedBody332_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody332_93 : StackLang.HolProg 64 :=
.seq RemovedBody332_91 RemovedBody332_92

def RemovedBody332_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_95 : StackLang.HolProg 64 :=
.seq RemovedBody332_93 RemovedBody332_94

def RemovedBody332_96 : StackLang.HolProg 64 :=
.seq RemovedBody332_88 RemovedBody332_95

def RemovedBody332_97 : StackLang.HolProg 64 :=
.seq RemovedBody332_87 RemovedBody332_96

def RemovedBody332_98 : StackLang.HolProg 64 :=
.seq RemovedBody332_86 RemovedBody332_97

def RemovedBody332_99 : StackLang.HolProg 64 :=
.seq RemovedBody332_85 RemovedBody332_98

def RemovedBody332_100 : StackLang.HolProg 64 :=
.seq RemovedBody332_84 RemovedBody332_99

def RemovedBody332_101 : StackLang.HolProg 64 :=
.seq RemovedBody332_83 RemovedBody332_100

def RemovedBody332_102 : StackLang.HolProg 64 :=
.seq RemovedBody332_82 RemovedBody332_101

def RemovedBody332_103 : StackLang.HolProg 64 :=
.seq RemovedBody332_81 RemovedBody332_102

def RemovedBody332_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody332_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody332_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_112 : StackLang.HolProg 64 :=
.seq RemovedBody332_110 RemovedBody332_111

def RemovedBody332_113 : StackLang.HolProg 64 :=
.seq RemovedBody332_109 RemovedBody332_112

def RemovedBody332_114 : StackLang.HolProg 64 :=
.seq RemovedBody332_108 RemovedBody332_113

def RemovedBody332_115 : StackLang.HolProg 64 :=
.seq RemovedBody332_107 RemovedBody332_114

def RemovedBody332_116 : StackLang.HolProg 64 :=
.seq RemovedBody332_106 RemovedBody332_115

def RemovedBody332_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody332_119 : StackLang.HolProg 64 :=
.seq RemovedBody332_117 RemovedBody332_118

def RemovedBody332_120 : StackLang.HolProg 64 :=
.call (some (RemovedBody332_116, 0, 332, 4)) (Sum.inl 308) (some (RemovedBody332_119, 332, 5))

def RemovedBody332_121 : StackLang.HolProg 64 :=
.seq RemovedBody332_105 RemovedBody332_120

def RemovedBody332_122 : StackLang.HolProg 64 :=
.seq RemovedBody332_104 RemovedBody332_121

def RemovedBody332_123 : StackLang.HolProg 64 :=
.seq RemovedBody332_103 RemovedBody332_122

def RemovedBody332_124 : StackLang.HolProg 64 :=
.seq RemovedBody332_74 RemovedBody332_123

def RemovedBody332_125 : StackLang.HolProg 64 :=
.seq RemovedBody332_71 RemovedBody332_124

def RemovedBody332_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody332_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody332_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody332_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody332_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody332_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody332_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody332_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551456#64))

def RemovedBody332_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody332_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_138 : StackLang.HolProg 64 :=
.seq RemovedBody332_136 RemovedBody332_137

def RemovedBody332_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody332_141 : StackLang.HolProg 64 :=
.seq RemovedBody332_139 RemovedBody332_140

def RemovedBody332_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody332_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody332_145 : StackLang.HolProg 64 :=
.seq RemovedBody332_143 RemovedBody332_144

def RemovedBody332_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody332_147 : StackLang.HolProg 64 :=
.seq RemovedBody332_145 RemovedBody332_146

def RemovedBody332_148 : StackLang.HolProg 64 :=
.seq RemovedBody332_142 RemovedBody332_147

def RemovedBody332_149 : StackLang.HolProg 64 :=
.seq RemovedBody332_141 RemovedBody332_148

def RemovedBody332_150 : StackLang.HolProg 64 :=
.seq RemovedBody332_138 RemovedBody332_149

def RemovedBody332_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 942#64)

def RemovedBody332_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody332_154 : StackLang.HolProg 64 :=
.seq RemovedBody332_152 RemovedBody332_153

def RemovedBody332_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody332_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody332_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody332_158 : StackLang.HolProg 64 :=
.seq RemovedBody332_156 RemovedBody332_157

def RemovedBody332_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_160 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody332_158 RemovedBody332_159

def RemovedBody332_161 : StackLang.HolProg 64 :=
.seq RemovedBody332_155 RemovedBody332_160

def RemovedBody332_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody332_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody332_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 7

def RemovedBody332_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody332_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody332_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody332_171 : StackLang.HolProg 64 :=
.seq RemovedBody332_169 RemovedBody332_170

def RemovedBody332_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody332_173 : StackLang.HolProg 64 :=
.seq RemovedBody332_171 RemovedBody332_172

def RemovedBody332_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_175 : StackLang.HolProg 64 :=
.seq RemovedBody332_173 RemovedBody332_174

def RemovedBody332_176 : StackLang.HolProg 64 :=
.seq RemovedBody332_168 RemovedBody332_175

def RemovedBody332_177 : StackLang.HolProg 64 :=
.seq RemovedBody332_167 RemovedBody332_176

def RemovedBody332_178 : StackLang.HolProg 64 :=
.seq RemovedBody332_166 RemovedBody332_177

def RemovedBody332_179 : StackLang.HolProg 64 :=
.seq RemovedBody332_165 RemovedBody332_178

def RemovedBody332_180 : StackLang.HolProg 64 :=
.seq RemovedBody332_164 RemovedBody332_179

def RemovedBody332_181 : StackLang.HolProg 64 :=
.seq RemovedBody332_163 RemovedBody332_180

def RemovedBody332_182 : StackLang.HolProg 64 :=
.seq RemovedBody332_162 RemovedBody332_181

def RemovedBody332_183 : StackLang.HolProg 64 :=
.seq RemovedBody332_161 RemovedBody332_182

def RemovedBody332_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody332_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody332_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody332_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody332_194 : StackLang.HolProg 64 :=
.seq RemovedBody332_192 RemovedBody332_193

def RemovedBody332_195 : StackLang.HolProg 64 :=
.seq RemovedBody332_191 RemovedBody332_194

def RemovedBody332_196 : StackLang.HolProg 64 :=
.seq RemovedBody332_190 RemovedBody332_195

def RemovedBody332_197 : StackLang.HolProg 64 :=
.seq RemovedBody332_189 RemovedBody332_196

def RemovedBody332_198 : StackLang.HolProg 64 :=
.seq RemovedBody332_188 RemovedBody332_197

def RemovedBody332_199 : StackLang.HolProg 64 :=
.seq RemovedBody332_187 RemovedBody332_198

def RemovedBody332_200 : StackLang.HolProg 64 :=
.seq RemovedBody332_186 RemovedBody332_199

def RemovedBody332_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody332_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody332_204 : StackLang.HolProg 64 :=
.seq RemovedBody332_202 RemovedBody332_203

def RemovedBody332_205 : StackLang.HolProg 64 :=
.seq RemovedBody332_201 RemovedBody332_204

def RemovedBody332_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody332_207 : StackLang.HolProg 64 :=
.seq RemovedBody332_205 RemovedBody332_206

def RemovedBody332_208 : StackLang.HolProg 64 :=
.call (some (RemovedBody332_200, 0, 332, 6)) (Sum.inl 177) (some (RemovedBody332_207, 332, 7))

def RemovedBody332_209 : StackLang.HolProg 64 :=
.seq RemovedBody332_185 RemovedBody332_208

def RemovedBody332_210 : StackLang.HolProg 64 :=
.seq RemovedBody332_184 RemovedBody332_209

def RemovedBody332_211 : StackLang.HolProg 64 :=
.seq RemovedBody332_183 RemovedBody332_210

def RemovedBody332_212 : StackLang.HolProg 64 :=
.seq RemovedBody332_154 RemovedBody332_211

def RemovedBody332_213 : StackLang.HolProg 64 :=
.seq RemovedBody332_151 RemovedBody332_212

def RemovedBody332_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody332_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody332_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody332_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody332_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody332_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551456#64))

def RemovedBody332_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody332_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody332_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody332_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody332_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_227 : StackLang.HolProg 64 :=
.seq RemovedBody332_225 RemovedBody332_226

def RemovedBody332_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody332_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody332_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 943#64)

def RemovedBody332_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody332_233 : StackLang.HolProg 64 :=
.seq RemovedBody332_231 RemovedBody332_232

def RemovedBody332_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody332_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody332_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody332_237 : StackLang.HolProg 64 :=
.seq RemovedBody332_235 RemovedBody332_236

def RemovedBody332_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody332_237 RemovedBody332_238

def RemovedBody332_240 : StackLang.HolProg 64 :=
.seq RemovedBody332_234 RemovedBody332_239

def RemovedBody332_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody332_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody332_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 9

def RemovedBody332_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody332_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody332_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody332_250 : StackLang.HolProg 64 :=
.seq RemovedBody332_248 RemovedBody332_249

def RemovedBody332_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody332_252 : StackLang.HolProg 64 :=
.seq RemovedBody332_250 RemovedBody332_251

def RemovedBody332_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_254 : StackLang.HolProg 64 :=
.seq RemovedBody332_252 RemovedBody332_253

def RemovedBody332_255 : StackLang.HolProg 64 :=
.seq RemovedBody332_247 RemovedBody332_254

def RemovedBody332_256 : StackLang.HolProg 64 :=
.seq RemovedBody332_246 RemovedBody332_255

def RemovedBody332_257 : StackLang.HolProg 64 :=
.seq RemovedBody332_245 RemovedBody332_256

def RemovedBody332_258 : StackLang.HolProg 64 :=
.seq RemovedBody332_244 RemovedBody332_257

def RemovedBody332_259 : StackLang.HolProg 64 :=
.seq RemovedBody332_243 RemovedBody332_258

def RemovedBody332_260 : StackLang.HolProg 64 :=
.seq RemovedBody332_242 RemovedBody332_259

def RemovedBody332_261 : StackLang.HolProg 64 :=
.seq RemovedBody332_241 RemovedBody332_260

def RemovedBody332_262 : StackLang.HolProg 64 :=
.seq RemovedBody332_240 RemovedBody332_261

def RemovedBody332_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody332_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody332_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody332_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody332_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody332_275 : StackLang.HolProg 64 :=
.seq RemovedBody332_273 RemovedBody332_274

def RemovedBody332_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody332_277 : StackLang.HolProg 64 :=
.seq RemovedBody332_275 RemovedBody332_276

def RemovedBody332_278 : StackLang.HolProg 64 :=
.seq RemovedBody332_272 RemovedBody332_277

def RemovedBody332_279 : StackLang.HolProg 64 :=
.seq RemovedBody332_271 RemovedBody332_278

def RemovedBody332_280 : StackLang.HolProg 64 :=
.seq RemovedBody332_270 RemovedBody332_279

def RemovedBody332_281 : StackLang.HolProg 64 :=
.seq RemovedBody332_269 RemovedBody332_280

def RemovedBody332_282 : StackLang.HolProg 64 :=
.seq RemovedBody332_268 RemovedBody332_281

def RemovedBody332_283 : StackLang.HolProg 64 :=
.seq RemovedBody332_267 RemovedBody332_282

def RemovedBody332_284 : StackLang.HolProg 64 :=
.seq RemovedBody332_266 RemovedBody332_283

def RemovedBody332_285 : StackLang.HolProg 64 :=
.seq RemovedBody332_265 RemovedBody332_284

def RemovedBody332_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody332_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody332_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody332_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody332_292 : StackLang.HolProg 64 :=
.seq RemovedBody332_290 RemovedBody332_291

def RemovedBody332_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody332_294 : StackLang.HolProg 64 :=
.seq RemovedBody332_292 RemovedBody332_293

def RemovedBody332_295 : StackLang.HolProg 64 :=
.seq RemovedBody332_289 RemovedBody332_294

def RemovedBody332_296 : StackLang.HolProg 64 :=
.seq RemovedBody332_288 RemovedBody332_295

def RemovedBody332_297 : StackLang.HolProg 64 :=
.seq RemovedBody332_287 RemovedBody332_296

def RemovedBody332_298 : StackLang.HolProg 64 :=
.seq RemovedBody332_286 RemovedBody332_297

def RemovedBody332_299 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody332_300 : StackLang.HolProg 64 :=
.seq RemovedBody332_298 RemovedBody332_299

def RemovedBody332_301 : StackLang.HolProg 64 :=
.call (some (RemovedBody332_285, 0, 332, 8)) (Sum.inl 320) (some (RemovedBody332_300, 332, 9))

def RemovedBody332_302 : StackLang.HolProg 64 :=
.seq RemovedBody332_264 RemovedBody332_301

def RemovedBody332_303 : StackLang.HolProg 64 :=
.seq RemovedBody332_263 RemovedBody332_302

def RemovedBody332_304 : StackLang.HolProg 64 :=
.seq RemovedBody332_262 RemovedBody332_303

def RemovedBody332_305 : StackLang.HolProg 64 :=
.seq RemovedBody332_233 RemovedBody332_304

def RemovedBody332_306 : StackLang.HolProg 64 :=
.seq RemovedBody332_230 RemovedBody332_305

def RemovedBody332_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody332_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody332_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody332_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody332_313 : StackLang.HolProg 64 :=
.seq RemovedBody332_311 RemovedBody332_312

def RemovedBody332_314 : StackLang.HolProg 64 :=
.seq RemovedBody332_310 RemovedBody332_313

def RemovedBody332_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody332_316 : StackLang.HolProg 64 :=
.seq RemovedBody332_314 RemovedBody332_315

def RemovedBody332_317 : StackLang.HolProg 64 :=
.seq RemovedBody332_309 RemovedBody332_316

def RemovedBody332_318 : StackLang.HolProg 64 :=
.seq RemovedBody332_308 RemovedBody332_317

def RemovedBody332_319 : StackLang.HolProg 64 :=
.seq RemovedBody332_307 RemovedBody332_318

def RemovedBody332_320 : StackLang.HolProg 64 :=
.seq RemovedBody332_306 RemovedBody332_319

def RemovedBody332_321 : StackLang.HolProg 64 :=
.seq RemovedBody332_229 RemovedBody332_320

def RemovedBody332_322 : StackLang.HolProg 64 :=
.seq RemovedBody332_228 RemovedBody332_321

def RemovedBody332_323 : StackLang.HolProg 64 :=
.seq RemovedBody332_227 RemovedBody332_322

def RemovedBody332_324 : StackLang.HolProg 64 :=
.seq RemovedBody332_224 RemovedBody332_323

def RemovedBody332_325 : StackLang.HolProg 64 :=
.seq RemovedBody332_223 RemovedBody332_324

def RemovedBody332_326 : StackLang.HolProg 64 :=
.seq RemovedBody332_222 RemovedBody332_325

def RemovedBody332_327 : StackLang.HolProg 64 :=
.seq RemovedBody332_221 RemovedBody332_326

def RemovedBody332_328 : StackLang.HolProg 64 :=
.seq RemovedBody332_220 RemovedBody332_327

def RemovedBody332_329 : StackLang.HolProg 64 :=
.seq RemovedBody332_219 RemovedBody332_328

def RemovedBody332_330 : StackLang.HolProg 64 :=
.seq RemovedBody332_218 RemovedBody332_329

def RemovedBody332_331 : StackLang.HolProg 64 :=
.seq RemovedBody332_217 RemovedBody332_330

def RemovedBody332_332 : StackLang.HolProg 64 :=
.seq RemovedBody332_216 RemovedBody332_331

def RemovedBody332_333 : StackLang.HolProg 64 :=
.seq RemovedBody332_215 RemovedBody332_332

def RemovedBody332_334 : StackLang.HolProg 64 :=
.seq RemovedBody332_214 RemovedBody332_333

def RemovedBody332_335 : StackLang.HolProg 64 :=
.seq RemovedBody332_213 RemovedBody332_334

def RemovedBody332_336 : StackLang.HolProg 64 :=
.seq RemovedBody332_150 RemovedBody332_335

def RemovedBody332_337 : StackLang.HolProg 64 :=
.seq RemovedBody332_135 RemovedBody332_336

def RemovedBody332_338 : StackLang.HolProg 64 :=
.seq RemovedBody332_134 RemovedBody332_337

def RemovedBody332_339 : StackLang.HolProg 64 :=
.seq RemovedBody332_133 RemovedBody332_338

def RemovedBody332_340 : StackLang.HolProg 64 :=
.seq RemovedBody332_132 RemovedBody332_339

def RemovedBody332_341 : StackLang.HolProg 64 :=
.seq RemovedBody332_131 RemovedBody332_340

def RemovedBody332_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody332_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody332_344 : StackLang.HolProg 64 :=
.seq RemovedBody332_342 RemovedBody332_343

def RemovedBody332_345 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody332_341 RemovedBody332_344

def RemovedBody332_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody332_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody332_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody332_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody332_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody332_352 : StackLang.HolProg 64 :=
.seq RemovedBody332_350 RemovedBody332_351

def RemovedBody332_353 : StackLang.HolProg 64 :=
.seq RemovedBody332_349 RemovedBody332_352

def RemovedBody332_354 : StackLang.HolProg 64 :=
.seq RemovedBody332_348 RemovedBody332_353

def RemovedBody332_355 : StackLang.HolProg 64 :=
.seq RemovedBody332_347 RemovedBody332_354

def RemovedBody332_356 : StackLang.HolProg 64 :=
.seq RemovedBody332_346 RemovedBody332_355

def RemovedBody332_357 : StackLang.HolProg 64 :=
.seq RemovedBody332_345 RemovedBody332_356

def RemovedBody332_358 : StackLang.HolProg 64 :=
.seq RemovedBody332_130 RemovedBody332_357

def RemovedBody332_359 : StackLang.HolProg 64 :=
.loop RemovedBody332_358

def RemovedBody332_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody332_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody332_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody332_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_365 : StackLang.HolProg 64 :=
.seq RemovedBody332_363 RemovedBody332_364

def RemovedBody332_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody332_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody332_368 : StackLang.HolProg 64 :=
.seq RemovedBody332_366 RemovedBody332_367

def RemovedBody332_369 : StackLang.HolProg 64 :=
.seq RemovedBody332_365 RemovedBody332_368

def RemovedBody332_370 : StackLang.HolProg 64 :=
.seq RemovedBody332_362 RemovedBody332_369

def RemovedBody332_371 : StackLang.HolProg 64 :=
.seq RemovedBody332_361 RemovedBody332_370

def RemovedBody332_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 944#64)

def RemovedBody332_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody332_375 : StackLang.HolProg 64 :=
.seq RemovedBody332_373 RemovedBody332_374

def RemovedBody332_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody332_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody332_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody332_379 : StackLang.HolProg 64 :=
.seq RemovedBody332_377 RemovedBody332_378

def RemovedBody332_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_381 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody332_379 RemovedBody332_380

def RemovedBody332_382 : StackLang.HolProg 64 :=
.seq RemovedBody332_376 RemovedBody332_381

def RemovedBody332_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody332_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody332_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 11

def RemovedBody332_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody332_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody332_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody332_392 : StackLang.HolProg 64 :=
.seq RemovedBody332_390 RemovedBody332_391

def RemovedBody332_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody332_394 : StackLang.HolProg 64 :=
.seq RemovedBody332_392 RemovedBody332_393

def RemovedBody332_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_396 : StackLang.HolProg 64 :=
.seq RemovedBody332_394 RemovedBody332_395

def RemovedBody332_397 : StackLang.HolProg 64 :=
.seq RemovedBody332_389 RemovedBody332_396

def RemovedBody332_398 : StackLang.HolProg 64 :=
.seq RemovedBody332_388 RemovedBody332_397

def RemovedBody332_399 : StackLang.HolProg 64 :=
.seq RemovedBody332_387 RemovedBody332_398

def RemovedBody332_400 : StackLang.HolProg 64 :=
.seq RemovedBody332_386 RemovedBody332_399

def RemovedBody332_401 : StackLang.HolProg 64 :=
.seq RemovedBody332_385 RemovedBody332_400

def RemovedBody332_402 : StackLang.HolProg 64 :=
.seq RemovedBody332_384 RemovedBody332_401

def RemovedBody332_403 : StackLang.HolProg 64 :=
.seq RemovedBody332_383 RemovedBody332_402

def RemovedBody332_404 : StackLang.HolProg 64 :=
.seq RemovedBody332_382 RemovedBody332_403

def RemovedBody332_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody332_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody332_412 : StackLang.HolProg 64 :=
.seq RemovedBody332_410 RemovedBody332_411

def RemovedBody332_413 : StackLang.HolProg 64 :=
.seq RemovedBody332_409 RemovedBody332_412

def RemovedBody332_414 : StackLang.HolProg 64 :=
.seq RemovedBody332_408 RemovedBody332_413

def RemovedBody332_415 : StackLang.HolProg 64 :=
.seq RemovedBody332_407 RemovedBody332_414

def RemovedBody332_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody332_417 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody332_418 : StackLang.HolProg 64 :=
.seq RemovedBody332_416 RemovedBody332_417

def RemovedBody332_419 : StackLang.HolProg 64 :=
.call (some (RemovedBody332_415, 0, 332, 10)) (Sum.inl 331) (some (RemovedBody332_418, 332, 11))

def RemovedBody332_420 : StackLang.HolProg 64 :=
.seq RemovedBody332_406 RemovedBody332_419

def RemovedBody332_421 : StackLang.HolProg 64 :=
.seq RemovedBody332_405 RemovedBody332_420

def RemovedBody332_422 : StackLang.HolProg 64 :=
.seq RemovedBody332_404 RemovedBody332_421

def RemovedBody332_423 : StackLang.HolProg 64 :=
.seq RemovedBody332_375 RemovedBody332_422

def RemovedBody332_424 : StackLang.HolProg 64 :=
.seq RemovedBody332_372 RemovedBody332_423

def RemovedBody332_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody332_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody332_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 945#64)

def RemovedBody332_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody332_430 : StackLang.HolProg 64 :=
.seq RemovedBody332_428 RemovedBody332_429

def RemovedBody332_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody332_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody332_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody332_434 : StackLang.HolProg 64 :=
.seq RemovedBody332_432 RemovedBody332_433

def RemovedBody332_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_436 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody332_434 RemovedBody332_435

def RemovedBody332_437 : StackLang.HolProg 64 :=
.seq RemovedBody332_431 RemovedBody332_436

def RemovedBody332_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody332_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody332_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 13

def RemovedBody332_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody332_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody332_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody332_447 : StackLang.HolProg 64 :=
.seq RemovedBody332_445 RemovedBody332_446

def RemovedBody332_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody332_449 : StackLang.HolProg 64 :=
.seq RemovedBody332_447 RemovedBody332_448

def RemovedBody332_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_451 : StackLang.HolProg 64 :=
.seq RemovedBody332_449 RemovedBody332_450

def RemovedBody332_452 : StackLang.HolProg 64 :=
.seq RemovedBody332_444 RemovedBody332_451

def RemovedBody332_453 : StackLang.HolProg 64 :=
.seq RemovedBody332_443 RemovedBody332_452

def RemovedBody332_454 : StackLang.HolProg 64 :=
.seq RemovedBody332_442 RemovedBody332_453

def RemovedBody332_455 : StackLang.HolProg 64 :=
.seq RemovedBody332_441 RemovedBody332_454

def RemovedBody332_456 : StackLang.HolProg 64 :=
.seq RemovedBody332_440 RemovedBody332_455

def RemovedBody332_457 : StackLang.HolProg 64 :=
.seq RemovedBody332_439 RemovedBody332_456

def RemovedBody332_458 : StackLang.HolProg 64 :=
.seq RemovedBody332_438 RemovedBody332_457

def RemovedBody332_459 : StackLang.HolProg 64 :=
.seq RemovedBody332_437 RemovedBody332_458

def RemovedBody332_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody332_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody332_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody332_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_467 : StackLang.HolProg 64 :=
.seq RemovedBody332_465 RemovedBody332_466

def RemovedBody332_468 : StackLang.HolProg 64 :=
.seq RemovedBody332_464 RemovedBody332_467

def RemovedBody332_469 : StackLang.HolProg 64 :=
.seq RemovedBody332_463 RemovedBody332_468

def RemovedBody332_470 : StackLang.HolProg 64 :=
.seq RemovedBody332_462 RemovedBody332_469

def RemovedBody332_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody332_472 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody332_473 : StackLang.HolProg 64 :=
.seq RemovedBody332_471 RemovedBody332_472

def RemovedBody332_474 : StackLang.HolProg 64 :=
.call (some (RemovedBody332_470, 0, 332, 12)) (Sum.inl 70) (some (RemovedBody332_473, 332, 13))

def RemovedBody332_475 : StackLang.HolProg 64 :=
.seq RemovedBody332_461 RemovedBody332_474

def RemovedBody332_476 : StackLang.HolProg 64 :=
.seq RemovedBody332_460 RemovedBody332_475

def RemovedBody332_477 : StackLang.HolProg 64 :=
.seq RemovedBody332_459 RemovedBody332_476

def RemovedBody332_478 : StackLang.HolProg 64 :=
.seq RemovedBody332_430 RemovedBody332_477

def RemovedBody332_479 : StackLang.HolProg 64 :=
.seq RemovedBody332_427 RemovedBody332_478

def RemovedBody332_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody332_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody332_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody332_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody332_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody332_485 : StackLang.HolProg 64 :=
.seq RemovedBody332_483 RemovedBody332_484

def RemovedBody332_486 : StackLang.HolProg 64 :=
.seq RemovedBody332_482 RemovedBody332_485

def RemovedBody332_487 : StackLang.HolProg 64 :=
.seq RemovedBody332_481 RemovedBody332_486

def RemovedBody332_488 : StackLang.HolProg 64 :=
.seq RemovedBody332_480 RemovedBody332_487

def RemovedBody332_489 : StackLang.HolProg 64 :=
.seq RemovedBody332_479 RemovedBody332_488

def RemovedBody332_490 : StackLang.HolProg 64 :=
.seq RemovedBody332_426 RemovedBody332_489

def RemovedBody332_491 : StackLang.HolProg 64 :=
.seq RemovedBody332_425 RemovedBody332_490

def RemovedBody332_492 : StackLang.HolProg 64 :=
.seq RemovedBody332_424 RemovedBody332_491

def RemovedBody332_493 : StackLang.HolProg 64 :=
.seq RemovedBody332_371 RemovedBody332_492

def RemovedBody332_494 : StackLang.HolProg 64 :=
.seq RemovedBody332_360 RemovedBody332_493

def RemovedBody332_495 : StackLang.HolProg 64 :=
.seq RemovedBody332_359 RemovedBody332_494

def RemovedBody332_496 : StackLang.HolProg 64 :=
.seq RemovedBody332_129 RemovedBody332_495

def RemovedBody332_497 : StackLang.HolProg 64 :=
.seq RemovedBody332_128 RemovedBody332_496

def RemovedBody332_498 : StackLang.HolProg 64 :=
.seq RemovedBody332_127 RemovedBody332_497

def RemovedBody332_499 : StackLang.HolProg 64 :=
.seq RemovedBody332_126 RemovedBody332_498

def RemovedBody332_500 : StackLang.HolProg 64 :=
.seq RemovedBody332_125 RemovedBody332_499

def RemovedBody332_501 : StackLang.HolProg 64 :=
.seq RemovedBody332_70 RemovedBody332_500

def RemovedBody332_502 : StackLang.HolProg 64 :=
.seq RemovedBody332_69 RemovedBody332_501

def RemovedBody332_503 : StackLang.HolProg 64 :=
.seq RemovedBody332_68 RemovedBody332_502

def RemovedBody332_504 : StackLang.HolProg 64 :=
.seq RemovedBody332_67 RemovedBody332_503

def RemovedBody332_505 : StackLang.HolProg 64 :=
.seq RemovedBody332_66 RemovedBody332_504

def RemovedBody332_506 : StackLang.HolProg 64 :=
.seq RemovedBody332_13 RemovedBody332_505

def RemovedBody332_507 : StackLang.HolProg 64 :=
.seq RemovedBody332_6 RemovedBody332_506

def Removed332 : Nat × StackLang.HolProg 64 := (332, RemovedBody332_507)
theorem Removed332_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc332 = Removed332 := by
  kernel_rfl
#print axioms Removed332_eq
end InitECandidate.Proofs.BackendStages
