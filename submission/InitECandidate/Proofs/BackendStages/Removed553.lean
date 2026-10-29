import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc553
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody553_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody553_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody553_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody553_3 : StackLang.HolProg 64 :=
.seq RemovedBody553_1 RemovedBody553_2

def RemovedBody553_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody553_3 RemovedBody553_4

def RemovedBody553_6 : StackLang.HolProg 64 :=
.seq RemovedBody553_0 RemovedBody553_5

def RemovedBody553_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody553_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody553_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1875#64)

def RemovedBody553_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody553_13 : StackLang.HolProg 64 :=
.seq RemovedBody553_11 RemovedBody553_12

def RemovedBody553_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody553_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody553_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody553_17 : StackLang.HolProg 64 :=
.seq RemovedBody553_15 RemovedBody553_16

def RemovedBody553_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody553_17 RemovedBody553_18

def RemovedBody553_20 : StackLang.HolProg 64 :=
.seq RemovedBody553_14 RemovedBody553_19

def RemovedBody553_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody553_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody553_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 553 3

def RemovedBody553_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody553_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody553_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody553_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody553_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody553_30 : StackLang.HolProg 64 :=
.seq RemovedBody553_28 RemovedBody553_29

def RemovedBody553_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody553_32 : StackLang.HolProg 64 :=
.seq RemovedBody553_30 RemovedBody553_31

def RemovedBody553_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody553_34 : StackLang.HolProg 64 :=
.seq RemovedBody553_32 RemovedBody553_33

def RemovedBody553_35 : StackLang.HolProg 64 :=
.seq RemovedBody553_27 RemovedBody553_34

def RemovedBody553_36 : StackLang.HolProg 64 :=
.seq RemovedBody553_26 RemovedBody553_35

def RemovedBody553_37 : StackLang.HolProg 64 :=
.seq RemovedBody553_25 RemovedBody553_36

def RemovedBody553_38 : StackLang.HolProg 64 :=
.seq RemovedBody553_24 RemovedBody553_37

def RemovedBody553_39 : StackLang.HolProg 64 :=
.seq RemovedBody553_23 RemovedBody553_38

def RemovedBody553_40 : StackLang.HolProg 64 :=
.seq RemovedBody553_22 RemovedBody553_39

def RemovedBody553_41 : StackLang.HolProg 64 :=
.seq RemovedBody553_21 RemovedBody553_40

def RemovedBody553_42 : StackLang.HolProg 64 :=
.seq RemovedBody553_20 RemovedBody553_41

def RemovedBody553_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody553_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody553_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody553_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_50 : StackLang.HolProg 64 :=
.seq RemovedBody553_48 RemovedBody553_49

def RemovedBody553_51 : StackLang.HolProg 64 :=
.seq RemovedBody553_47 RemovedBody553_50

def RemovedBody553_52 : StackLang.HolProg 64 :=
.seq RemovedBody553_46 RemovedBody553_51

def RemovedBody553_53 : StackLang.HolProg 64 :=
.seq RemovedBody553_45 RemovedBody553_52

def RemovedBody553_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody553_56 : StackLang.HolProg 64 :=
.seq RemovedBody553_54 RemovedBody553_55

def RemovedBody553_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody553_53, 0, 553, 2)) (Sum.inl 470) (some (RemovedBody553_56, 553, 3))

def RemovedBody553_58 : StackLang.HolProg 64 :=
.seq RemovedBody553_44 RemovedBody553_57

def RemovedBody553_59 : StackLang.HolProg 64 :=
.seq RemovedBody553_43 RemovedBody553_58

def RemovedBody553_60 : StackLang.HolProg 64 :=
.seq RemovedBody553_42 RemovedBody553_59

def RemovedBody553_61 : StackLang.HolProg 64 :=
.seq RemovedBody553_13 RemovedBody553_60

def RemovedBody553_62 : StackLang.HolProg 64 :=
.seq RemovedBody553_10 RemovedBody553_61

def RemovedBody553_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody553_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody553_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody553_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody553_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody553_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def RemovedBody553_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody553_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1876#64)

def RemovedBody553_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody553_74 : StackLang.HolProg 64 :=
.seq RemovedBody553_72 RemovedBody553_73

def RemovedBody553_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody553_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody553_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody553_78 : StackLang.HolProg 64 :=
.seq RemovedBody553_76 RemovedBody553_77

def RemovedBody553_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody553_78 RemovedBody553_79

def RemovedBody553_81 : StackLang.HolProg 64 :=
.seq RemovedBody553_75 RemovedBody553_80

def RemovedBody553_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody553_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody553_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 553 5

def RemovedBody553_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody553_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody553_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody553_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody553_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody553_91 : StackLang.HolProg 64 :=
.seq RemovedBody553_89 RemovedBody553_90

def RemovedBody553_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody553_93 : StackLang.HolProg 64 :=
.seq RemovedBody553_91 RemovedBody553_92

def RemovedBody553_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody553_95 : StackLang.HolProg 64 :=
.seq RemovedBody553_93 RemovedBody553_94

def RemovedBody553_96 : StackLang.HolProg 64 :=
.seq RemovedBody553_88 RemovedBody553_95

def RemovedBody553_97 : StackLang.HolProg 64 :=
.seq RemovedBody553_87 RemovedBody553_96

def RemovedBody553_98 : StackLang.HolProg 64 :=
.seq RemovedBody553_86 RemovedBody553_97

def RemovedBody553_99 : StackLang.HolProg 64 :=
.seq RemovedBody553_85 RemovedBody553_98

def RemovedBody553_100 : StackLang.HolProg 64 :=
.seq RemovedBody553_84 RemovedBody553_99

def RemovedBody553_101 : StackLang.HolProg 64 :=
.seq RemovedBody553_83 RemovedBody553_100

def RemovedBody553_102 : StackLang.HolProg 64 :=
.seq RemovedBody553_82 RemovedBody553_101

def RemovedBody553_103 : StackLang.HolProg 64 :=
.seq RemovedBody553_81 RemovedBody553_102

def RemovedBody553_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody553_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody553_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody553_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody553_111 : StackLang.HolProg 64 :=
.seq RemovedBody553_109 RemovedBody553_110

def RemovedBody553_112 : StackLang.HolProg 64 :=
.seq RemovedBody553_108 RemovedBody553_111

def RemovedBody553_113 : StackLang.HolProg 64 :=
.seq RemovedBody553_107 RemovedBody553_112

def RemovedBody553_114 : StackLang.HolProg 64 :=
.seq RemovedBody553_106 RemovedBody553_113

def RemovedBody553_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody553_117 : StackLang.HolProg 64 :=
.seq RemovedBody553_115 RemovedBody553_116

def RemovedBody553_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody553_114, 0, 553, 4)) (Sum.inl 467) (some (RemovedBody553_117, 553, 5))

def RemovedBody553_119 : StackLang.HolProg 64 :=
.seq RemovedBody553_105 RemovedBody553_118

def RemovedBody553_120 : StackLang.HolProg 64 :=
.seq RemovedBody553_104 RemovedBody553_119

def RemovedBody553_121 : StackLang.HolProg 64 :=
.seq RemovedBody553_103 RemovedBody553_120

def RemovedBody553_122 : StackLang.HolProg 64 :=
.seq RemovedBody553_74 RemovedBody553_121

def RemovedBody553_123 : StackLang.HolProg 64 :=
.seq RemovedBody553_71 RemovedBody553_122

def RemovedBody553_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody553_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody553_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1877#64)

def RemovedBody553_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody553_129 : StackLang.HolProg 64 :=
.seq RemovedBody553_127 RemovedBody553_128

def RemovedBody553_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody553_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody553_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody553_133 : StackLang.HolProg 64 :=
.seq RemovedBody553_131 RemovedBody553_132

def RemovedBody553_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody553_133 RemovedBody553_134

def RemovedBody553_136 : StackLang.HolProg 64 :=
.seq RemovedBody553_130 RemovedBody553_135

def RemovedBody553_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody553_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody553_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 553 7

def RemovedBody553_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody553_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody553_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody553_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody553_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody553_146 : StackLang.HolProg 64 :=
.seq RemovedBody553_144 RemovedBody553_145

def RemovedBody553_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody553_148 : StackLang.HolProg 64 :=
.seq RemovedBody553_146 RemovedBody553_147

def RemovedBody553_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody553_150 : StackLang.HolProg 64 :=
.seq RemovedBody553_148 RemovedBody553_149

def RemovedBody553_151 : StackLang.HolProg 64 :=
.seq RemovedBody553_143 RemovedBody553_150

def RemovedBody553_152 : StackLang.HolProg 64 :=
.seq RemovedBody553_142 RemovedBody553_151

def RemovedBody553_153 : StackLang.HolProg 64 :=
.seq RemovedBody553_141 RemovedBody553_152

def RemovedBody553_154 : StackLang.HolProg 64 :=
.seq RemovedBody553_140 RemovedBody553_153

def RemovedBody553_155 : StackLang.HolProg 64 :=
.seq RemovedBody553_139 RemovedBody553_154

def RemovedBody553_156 : StackLang.HolProg 64 :=
.seq RemovedBody553_138 RemovedBody553_155

def RemovedBody553_157 : StackLang.HolProg 64 :=
.seq RemovedBody553_137 RemovedBody553_156

def RemovedBody553_158 : StackLang.HolProg 64 :=
.seq RemovedBody553_136 RemovedBody553_157

def RemovedBody553_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody553_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody553_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody553_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_166 : StackLang.HolProg 64 :=
.seq RemovedBody553_164 RemovedBody553_165

def RemovedBody553_167 : StackLang.HolProg 64 :=
.seq RemovedBody553_163 RemovedBody553_166

def RemovedBody553_168 : StackLang.HolProg 64 :=
.seq RemovedBody553_162 RemovedBody553_167

def RemovedBody553_169 : StackLang.HolProg 64 :=
.seq RemovedBody553_161 RemovedBody553_168

def RemovedBody553_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody553_172 : StackLang.HolProg 64 :=
.seq RemovedBody553_170 RemovedBody553_171

def RemovedBody553_173 : StackLang.HolProg 64 :=
.call (some (RemovedBody553_169, 0, 553, 6)) (Sum.inl 476) (some (RemovedBody553_172, 553, 7))

def RemovedBody553_174 : StackLang.HolProg 64 :=
.seq RemovedBody553_160 RemovedBody553_173

def RemovedBody553_175 : StackLang.HolProg 64 :=
.seq RemovedBody553_159 RemovedBody553_174

def RemovedBody553_176 : StackLang.HolProg 64 :=
.seq RemovedBody553_158 RemovedBody553_175

def RemovedBody553_177 : StackLang.HolProg 64 :=
.seq RemovedBody553_129 RemovedBody553_176

def RemovedBody553_178 : StackLang.HolProg 64 :=
.seq RemovedBody553_126 RemovedBody553_177

def RemovedBody553_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody553_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody553_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1878#64)

def RemovedBody553_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody553_185 : StackLang.HolProg 64 :=
.seq RemovedBody553_183 RemovedBody553_184

def RemovedBody553_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody553_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody553_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody553_189 : StackLang.HolProg 64 :=
.seq RemovedBody553_187 RemovedBody553_188

def RemovedBody553_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_191 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody553_189 RemovedBody553_190

def RemovedBody553_192 : StackLang.HolProg 64 :=
.seq RemovedBody553_186 RemovedBody553_191

def RemovedBody553_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody553_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody553_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 553 9

def RemovedBody553_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody553_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody553_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody553_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody553_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody553_202 : StackLang.HolProg 64 :=
.seq RemovedBody553_200 RemovedBody553_201

def RemovedBody553_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody553_204 : StackLang.HolProg 64 :=
.seq RemovedBody553_202 RemovedBody553_203

def RemovedBody553_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody553_206 : StackLang.HolProg 64 :=
.seq RemovedBody553_204 RemovedBody553_205

def RemovedBody553_207 : StackLang.HolProg 64 :=
.seq RemovedBody553_199 RemovedBody553_206

def RemovedBody553_208 : StackLang.HolProg 64 :=
.seq RemovedBody553_198 RemovedBody553_207

def RemovedBody553_209 : StackLang.HolProg 64 :=
.seq RemovedBody553_197 RemovedBody553_208

def RemovedBody553_210 : StackLang.HolProg 64 :=
.seq RemovedBody553_196 RemovedBody553_209

def RemovedBody553_211 : StackLang.HolProg 64 :=
.seq RemovedBody553_195 RemovedBody553_210

def RemovedBody553_212 : StackLang.HolProg 64 :=
.seq RemovedBody553_194 RemovedBody553_211

def RemovedBody553_213 : StackLang.HolProg 64 :=
.seq RemovedBody553_193 RemovedBody553_212

def RemovedBody553_214 : StackLang.HolProg 64 :=
.seq RemovedBody553_192 RemovedBody553_213

def RemovedBody553_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody553_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody553_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody553_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody553_222 : StackLang.HolProg 64 :=
.seq RemovedBody553_220 RemovedBody553_221

def RemovedBody553_223 : StackLang.HolProg 64 :=
.seq RemovedBody553_219 RemovedBody553_222

def RemovedBody553_224 : StackLang.HolProg 64 :=
.seq RemovedBody553_218 RemovedBody553_223

def RemovedBody553_225 : StackLang.HolProg 64 :=
.seq RemovedBody553_217 RemovedBody553_224

def RemovedBody553_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody553_227 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody553_228 : StackLang.HolProg 64 :=
.seq RemovedBody553_226 RemovedBody553_227

def RemovedBody553_229 : StackLang.HolProg 64 :=
.call (some (RemovedBody553_225, 0, 553, 8)) (Sum.inl 490) (some (RemovedBody553_228, 553, 9))

def RemovedBody553_230 : StackLang.HolProg 64 :=
.seq RemovedBody553_216 RemovedBody553_229

def RemovedBody553_231 : StackLang.HolProg 64 :=
.seq RemovedBody553_215 RemovedBody553_230

def RemovedBody553_232 : StackLang.HolProg 64 :=
.seq RemovedBody553_214 RemovedBody553_231

def RemovedBody553_233 : StackLang.HolProg 64 :=
.seq RemovedBody553_185 RemovedBody553_232

def RemovedBody553_234 : StackLang.HolProg 64 :=
.seq RemovedBody553_182 RemovedBody553_233

def RemovedBody553_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody553_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody553_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody553_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody553_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody553_240 : StackLang.HolProg 64 :=
.seq RemovedBody553_238 RemovedBody553_239

def RemovedBody553_241 : StackLang.HolProg 64 :=
.seq RemovedBody553_237 RemovedBody553_240

def RemovedBody553_242 : StackLang.HolProg 64 :=
.seq RemovedBody553_236 RemovedBody553_241

def RemovedBody553_243 : StackLang.HolProg 64 :=
.seq RemovedBody553_235 RemovedBody553_242

def RemovedBody553_244 : StackLang.HolProg 64 :=
.seq RemovedBody553_234 RemovedBody553_243

def RemovedBody553_245 : StackLang.HolProg 64 :=
.seq RemovedBody553_181 RemovedBody553_244

def RemovedBody553_246 : StackLang.HolProg 64 :=
.seq RemovedBody553_180 RemovedBody553_245

def RemovedBody553_247 : StackLang.HolProg 64 :=
.seq RemovedBody553_179 RemovedBody553_246

def RemovedBody553_248 : StackLang.HolProg 64 :=
.seq RemovedBody553_178 RemovedBody553_247

def RemovedBody553_249 : StackLang.HolProg 64 :=
.seq RemovedBody553_125 RemovedBody553_248

def RemovedBody553_250 : StackLang.HolProg 64 :=
.seq RemovedBody553_124 RemovedBody553_249

def RemovedBody553_251 : StackLang.HolProg 64 :=
.seq RemovedBody553_123 RemovedBody553_250

def RemovedBody553_252 : StackLang.HolProg 64 :=
.seq RemovedBody553_70 RemovedBody553_251

def RemovedBody553_253 : StackLang.HolProg 64 :=
.seq RemovedBody553_69 RemovedBody553_252

def RemovedBody553_254 : StackLang.HolProg 64 :=
.seq RemovedBody553_68 RemovedBody553_253

def RemovedBody553_255 : StackLang.HolProg 64 :=
.seq RemovedBody553_67 RemovedBody553_254

def RemovedBody553_256 : StackLang.HolProg 64 :=
.seq RemovedBody553_66 RemovedBody553_255

def RemovedBody553_257 : StackLang.HolProg 64 :=
.seq RemovedBody553_65 RemovedBody553_256

def RemovedBody553_258 : StackLang.HolProg 64 :=
.seq RemovedBody553_64 RemovedBody553_257

def RemovedBody553_259 : StackLang.HolProg 64 :=
.seq RemovedBody553_63 RemovedBody553_258

def RemovedBody553_260 : StackLang.HolProg 64 :=
.seq RemovedBody553_62 RemovedBody553_259

def RemovedBody553_261 : StackLang.HolProg 64 :=
.seq RemovedBody553_9 RemovedBody553_260

def RemovedBody553_262 : StackLang.HolProg 64 :=
.seq RemovedBody553_8 RemovedBody553_261

def RemovedBody553_263 : StackLang.HolProg 64 :=
.seq RemovedBody553_7 RemovedBody553_262

def RemovedBody553_264 : StackLang.HolProg 64 :=
.seq RemovedBody553_6 RemovedBody553_263

def Removed553 : Nat × StackLang.HolProg 64 := (553, RemovedBody553_264)
theorem Removed553_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc553 = Removed553 := by
  kernel_rfl
#print axioms Removed553_eq
end InitECandidate.Proofs.BackendStages
