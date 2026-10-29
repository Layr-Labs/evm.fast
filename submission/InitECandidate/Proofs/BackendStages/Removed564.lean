import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc564
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody564_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody564_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody564_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody564_3 : StackLang.HolProg 64 :=
.seq RemovedBody564_1 RemovedBody564_2

def RemovedBody564_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody564_3 RemovedBody564_4

def RemovedBody564_6 : StackLang.HolProg 64 :=
.seq RemovedBody564_0 RemovedBody564_5

def RemovedBody564_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody564_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody564_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1929#64)

def RemovedBody564_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody564_13 : StackLang.HolProg 64 :=
.seq RemovedBody564_11 RemovedBody564_12

def RemovedBody564_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody564_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody564_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody564_17 : StackLang.HolProg 64 :=
.seq RemovedBody564_15 RemovedBody564_16

def RemovedBody564_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody564_17 RemovedBody564_18

def RemovedBody564_20 : StackLang.HolProg 64 :=
.seq RemovedBody564_14 RemovedBody564_19

def RemovedBody564_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody564_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody564_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 564 3

def RemovedBody564_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody564_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody564_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody564_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody564_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody564_30 : StackLang.HolProg 64 :=
.seq RemovedBody564_28 RemovedBody564_29

def RemovedBody564_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody564_32 : StackLang.HolProg 64 :=
.seq RemovedBody564_30 RemovedBody564_31

def RemovedBody564_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody564_34 : StackLang.HolProg 64 :=
.seq RemovedBody564_32 RemovedBody564_33

def RemovedBody564_35 : StackLang.HolProg 64 :=
.seq RemovedBody564_27 RemovedBody564_34

def RemovedBody564_36 : StackLang.HolProg 64 :=
.seq RemovedBody564_26 RemovedBody564_35

def RemovedBody564_37 : StackLang.HolProg 64 :=
.seq RemovedBody564_25 RemovedBody564_36

def RemovedBody564_38 : StackLang.HolProg 64 :=
.seq RemovedBody564_24 RemovedBody564_37

def RemovedBody564_39 : StackLang.HolProg 64 :=
.seq RemovedBody564_23 RemovedBody564_38

def RemovedBody564_40 : StackLang.HolProg 64 :=
.seq RemovedBody564_22 RemovedBody564_39

def RemovedBody564_41 : StackLang.HolProg 64 :=
.seq RemovedBody564_21 RemovedBody564_40

def RemovedBody564_42 : StackLang.HolProg 64 :=
.seq RemovedBody564_20 RemovedBody564_41

def RemovedBody564_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody564_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody564_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody564_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_50 : StackLang.HolProg 64 :=
.seq RemovedBody564_48 RemovedBody564_49

def RemovedBody564_51 : StackLang.HolProg 64 :=
.seq RemovedBody564_47 RemovedBody564_50

def RemovedBody564_52 : StackLang.HolProg 64 :=
.seq RemovedBody564_46 RemovedBody564_51

def RemovedBody564_53 : StackLang.HolProg 64 :=
.seq RemovedBody564_45 RemovedBody564_52

def RemovedBody564_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody564_56 : StackLang.HolProg 64 :=
.seq RemovedBody564_54 RemovedBody564_55

def RemovedBody564_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody564_53, 0, 564, 2)) (Sum.inl 470) (some (RemovedBody564_56, 564, 3))

def RemovedBody564_58 : StackLang.HolProg 64 :=
.seq RemovedBody564_44 RemovedBody564_57

def RemovedBody564_59 : StackLang.HolProg 64 :=
.seq RemovedBody564_43 RemovedBody564_58

def RemovedBody564_60 : StackLang.HolProg 64 :=
.seq RemovedBody564_42 RemovedBody564_59

def RemovedBody564_61 : StackLang.HolProg 64 :=
.seq RemovedBody564_13 RemovedBody564_60

def RemovedBody564_62 : StackLang.HolProg 64 :=
.seq RemovedBody564_10 RemovedBody564_61

def RemovedBody564_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody564_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody564_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody564_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody564_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody564_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def RemovedBody564_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody564_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def RemovedBody564_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def RemovedBody564_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def RemovedBody564_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 72#64))

def RemovedBody564_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1930#64)

def RemovedBody564_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody564_82 : StackLang.HolProg 64 :=
.seq RemovedBody564_80 RemovedBody564_81

def RemovedBody564_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody564_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody564_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody564_86 : StackLang.HolProg 64 :=
.seq RemovedBody564_84 RemovedBody564_85

def RemovedBody564_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody564_86 RemovedBody564_87

def RemovedBody564_89 : StackLang.HolProg 64 :=
.seq RemovedBody564_83 RemovedBody564_88

def RemovedBody564_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody564_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody564_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 564 5

def RemovedBody564_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody564_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody564_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody564_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody564_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody564_99 : StackLang.HolProg 64 :=
.seq RemovedBody564_97 RemovedBody564_98

def RemovedBody564_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody564_101 : StackLang.HolProg 64 :=
.seq RemovedBody564_99 RemovedBody564_100

def RemovedBody564_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody564_103 : StackLang.HolProg 64 :=
.seq RemovedBody564_101 RemovedBody564_102

def RemovedBody564_104 : StackLang.HolProg 64 :=
.seq RemovedBody564_96 RemovedBody564_103

def RemovedBody564_105 : StackLang.HolProg 64 :=
.seq RemovedBody564_95 RemovedBody564_104

def RemovedBody564_106 : StackLang.HolProg 64 :=
.seq RemovedBody564_94 RemovedBody564_105

def RemovedBody564_107 : StackLang.HolProg 64 :=
.seq RemovedBody564_93 RemovedBody564_106

def RemovedBody564_108 : StackLang.HolProg 64 :=
.seq RemovedBody564_92 RemovedBody564_107

def RemovedBody564_109 : StackLang.HolProg 64 :=
.seq RemovedBody564_91 RemovedBody564_108

def RemovedBody564_110 : StackLang.HolProg 64 :=
.seq RemovedBody564_90 RemovedBody564_109

def RemovedBody564_111 : StackLang.HolProg 64 :=
.seq RemovedBody564_89 RemovedBody564_110

def RemovedBody564_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody564_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody564_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody564_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_119 : StackLang.HolProg 64 :=
.seq RemovedBody564_117 RemovedBody564_118

def RemovedBody564_120 : StackLang.HolProg 64 :=
.seq RemovedBody564_116 RemovedBody564_119

def RemovedBody564_121 : StackLang.HolProg 64 :=
.seq RemovedBody564_115 RemovedBody564_120

def RemovedBody564_122 : StackLang.HolProg 64 :=
.seq RemovedBody564_114 RemovedBody564_121

def RemovedBody564_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_124 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody564_125 : StackLang.HolProg 64 :=
.seq RemovedBody564_123 RemovedBody564_124

def RemovedBody564_126 : StackLang.HolProg 64 :=
.call (some (RemovedBody564_122, 0, 564, 4)) (Sum.inl 476) (some (RemovedBody564_125, 564, 5))

def RemovedBody564_127 : StackLang.HolProg 64 :=
.seq RemovedBody564_113 RemovedBody564_126

def RemovedBody564_128 : StackLang.HolProg 64 :=
.seq RemovedBody564_112 RemovedBody564_127

def RemovedBody564_129 : StackLang.HolProg 64 :=
.seq RemovedBody564_111 RemovedBody564_128

def RemovedBody564_130 : StackLang.HolProg 64 :=
.seq RemovedBody564_82 RemovedBody564_129

def RemovedBody564_131 : StackLang.HolProg 64 :=
.seq RemovedBody564_79 RemovedBody564_130

def RemovedBody564_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody564_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody564_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1931#64)

def RemovedBody564_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody564_138 : StackLang.HolProg 64 :=
.seq RemovedBody564_136 RemovedBody564_137

def RemovedBody564_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody564_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody564_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody564_142 : StackLang.HolProg 64 :=
.seq RemovedBody564_140 RemovedBody564_141

def RemovedBody564_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_144 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody564_142 RemovedBody564_143

def RemovedBody564_145 : StackLang.HolProg 64 :=
.seq RemovedBody564_139 RemovedBody564_144

def RemovedBody564_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody564_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody564_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 564 7

def RemovedBody564_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody564_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody564_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody564_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody564_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody564_155 : StackLang.HolProg 64 :=
.seq RemovedBody564_153 RemovedBody564_154

def RemovedBody564_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody564_157 : StackLang.HolProg 64 :=
.seq RemovedBody564_155 RemovedBody564_156

def RemovedBody564_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody564_159 : StackLang.HolProg 64 :=
.seq RemovedBody564_157 RemovedBody564_158

def RemovedBody564_160 : StackLang.HolProg 64 :=
.seq RemovedBody564_152 RemovedBody564_159

def RemovedBody564_161 : StackLang.HolProg 64 :=
.seq RemovedBody564_151 RemovedBody564_160

def RemovedBody564_162 : StackLang.HolProg 64 :=
.seq RemovedBody564_150 RemovedBody564_161

def RemovedBody564_163 : StackLang.HolProg 64 :=
.seq RemovedBody564_149 RemovedBody564_162

def RemovedBody564_164 : StackLang.HolProg 64 :=
.seq RemovedBody564_148 RemovedBody564_163

def RemovedBody564_165 : StackLang.HolProg 64 :=
.seq RemovedBody564_147 RemovedBody564_164

def RemovedBody564_166 : StackLang.HolProg 64 :=
.seq RemovedBody564_146 RemovedBody564_165

def RemovedBody564_167 : StackLang.HolProg 64 :=
.seq RemovedBody564_145 RemovedBody564_166

def RemovedBody564_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody564_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody564_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody564_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody564_175 : StackLang.HolProg 64 :=
.seq RemovedBody564_173 RemovedBody564_174

def RemovedBody564_176 : StackLang.HolProg 64 :=
.seq RemovedBody564_172 RemovedBody564_175

def RemovedBody564_177 : StackLang.HolProg 64 :=
.seq RemovedBody564_171 RemovedBody564_176

def RemovedBody564_178 : StackLang.HolProg 64 :=
.seq RemovedBody564_170 RemovedBody564_177

def RemovedBody564_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody564_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody564_181 : StackLang.HolProg 64 :=
.seq RemovedBody564_179 RemovedBody564_180

def RemovedBody564_182 : StackLang.HolProg 64 :=
.call (some (RemovedBody564_178, 0, 564, 6)) (Sum.inl 490) (some (RemovedBody564_181, 564, 7))

def RemovedBody564_183 : StackLang.HolProg 64 :=
.seq RemovedBody564_169 RemovedBody564_182

def RemovedBody564_184 : StackLang.HolProg 64 :=
.seq RemovedBody564_168 RemovedBody564_183

def RemovedBody564_185 : StackLang.HolProg 64 :=
.seq RemovedBody564_167 RemovedBody564_184

def RemovedBody564_186 : StackLang.HolProg 64 :=
.seq RemovedBody564_138 RemovedBody564_185

def RemovedBody564_187 : StackLang.HolProg 64 :=
.seq RemovedBody564_135 RemovedBody564_186

def RemovedBody564_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody564_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody564_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody564_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody564_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody564_193 : StackLang.HolProg 64 :=
.seq RemovedBody564_191 RemovedBody564_192

def RemovedBody564_194 : StackLang.HolProg 64 :=
.seq RemovedBody564_190 RemovedBody564_193

def RemovedBody564_195 : StackLang.HolProg 64 :=
.seq RemovedBody564_189 RemovedBody564_194

def RemovedBody564_196 : StackLang.HolProg 64 :=
.seq RemovedBody564_188 RemovedBody564_195

def RemovedBody564_197 : StackLang.HolProg 64 :=
.seq RemovedBody564_187 RemovedBody564_196

def RemovedBody564_198 : StackLang.HolProg 64 :=
.seq RemovedBody564_134 RemovedBody564_197

def RemovedBody564_199 : StackLang.HolProg 64 :=
.seq RemovedBody564_133 RemovedBody564_198

def RemovedBody564_200 : StackLang.HolProg 64 :=
.seq RemovedBody564_132 RemovedBody564_199

def RemovedBody564_201 : StackLang.HolProg 64 :=
.seq RemovedBody564_131 RemovedBody564_200

def RemovedBody564_202 : StackLang.HolProg 64 :=
.seq RemovedBody564_78 RemovedBody564_201

def RemovedBody564_203 : StackLang.HolProg 64 :=
.seq RemovedBody564_77 RemovedBody564_202

def RemovedBody564_204 : StackLang.HolProg 64 :=
.seq RemovedBody564_76 RemovedBody564_203

def RemovedBody564_205 : StackLang.HolProg 64 :=
.seq RemovedBody564_75 RemovedBody564_204

def RemovedBody564_206 : StackLang.HolProg 64 :=
.seq RemovedBody564_74 RemovedBody564_205

def RemovedBody564_207 : StackLang.HolProg 64 :=
.seq RemovedBody564_73 RemovedBody564_206

def RemovedBody564_208 : StackLang.HolProg 64 :=
.seq RemovedBody564_72 RemovedBody564_207

def RemovedBody564_209 : StackLang.HolProg 64 :=
.seq RemovedBody564_71 RemovedBody564_208

def RemovedBody564_210 : StackLang.HolProg 64 :=
.seq RemovedBody564_70 RemovedBody564_209

def RemovedBody564_211 : StackLang.HolProg 64 :=
.seq RemovedBody564_69 RemovedBody564_210

def RemovedBody564_212 : StackLang.HolProg 64 :=
.seq RemovedBody564_68 RemovedBody564_211

def RemovedBody564_213 : StackLang.HolProg 64 :=
.seq RemovedBody564_67 RemovedBody564_212

def RemovedBody564_214 : StackLang.HolProg 64 :=
.seq RemovedBody564_66 RemovedBody564_213

def RemovedBody564_215 : StackLang.HolProg 64 :=
.seq RemovedBody564_65 RemovedBody564_214

def RemovedBody564_216 : StackLang.HolProg 64 :=
.seq RemovedBody564_64 RemovedBody564_215

def RemovedBody564_217 : StackLang.HolProg 64 :=
.seq RemovedBody564_63 RemovedBody564_216

def RemovedBody564_218 : StackLang.HolProg 64 :=
.seq RemovedBody564_62 RemovedBody564_217

def RemovedBody564_219 : StackLang.HolProg 64 :=
.seq RemovedBody564_9 RemovedBody564_218

def RemovedBody564_220 : StackLang.HolProg 64 :=
.seq RemovedBody564_8 RemovedBody564_219

def RemovedBody564_221 : StackLang.HolProg 64 :=
.seq RemovedBody564_7 RemovedBody564_220

def RemovedBody564_222 : StackLang.HolProg 64 :=
.seq RemovedBody564_6 RemovedBody564_221

def Removed564 : Nat × StackLang.HolProg 64 := (564, RemovedBody564_222)
theorem Removed564_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc564 = Removed564 := by
  kernel_rfl
#print axioms Removed564_eq
end InitECandidate.Proofs.BackendStages
