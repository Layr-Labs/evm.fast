import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc559
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody559_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody559_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody559_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody559_3 : StackLang.HolProg 64 :=
.seq RemovedBody559_1 RemovedBody559_2

def RemovedBody559_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody559_3 RemovedBody559_4

def RemovedBody559_6 : StackLang.HolProg 64 :=
.seq RemovedBody559_0 RemovedBody559_5

def RemovedBody559_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody559_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody559_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1908#64)

def RemovedBody559_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody559_13 : StackLang.HolProg 64 :=
.seq RemovedBody559_11 RemovedBody559_12

def RemovedBody559_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody559_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody559_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody559_17 : StackLang.HolProg 64 :=
.seq RemovedBody559_15 RemovedBody559_16

def RemovedBody559_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody559_17 RemovedBody559_18

def RemovedBody559_20 : StackLang.HolProg 64 :=
.seq RemovedBody559_14 RemovedBody559_19

def RemovedBody559_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody559_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody559_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 559 3

def RemovedBody559_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody559_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody559_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody559_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody559_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody559_30 : StackLang.HolProg 64 :=
.seq RemovedBody559_28 RemovedBody559_29

def RemovedBody559_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody559_32 : StackLang.HolProg 64 :=
.seq RemovedBody559_30 RemovedBody559_31

def RemovedBody559_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody559_34 : StackLang.HolProg 64 :=
.seq RemovedBody559_32 RemovedBody559_33

def RemovedBody559_35 : StackLang.HolProg 64 :=
.seq RemovedBody559_27 RemovedBody559_34

def RemovedBody559_36 : StackLang.HolProg 64 :=
.seq RemovedBody559_26 RemovedBody559_35

def RemovedBody559_37 : StackLang.HolProg 64 :=
.seq RemovedBody559_25 RemovedBody559_36

def RemovedBody559_38 : StackLang.HolProg 64 :=
.seq RemovedBody559_24 RemovedBody559_37

def RemovedBody559_39 : StackLang.HolProg 64 :=
.seq RemovedBody559_23 RemovedBody559_38

def RemovedBody559_40 : StackLang.HolProg 64 :=
.seq RemovedBody559_22 RemovedBody559_39

def RemovedBody559_41 : StackLang.HolProg 64 :=
.seq RemovedBody559_21 RemovedBody559_40

def RemovedBody559_42 : StackLang.HolProg 64 :=
.seq RemovedBody559_20 RemovedBody559_41

def RemovedBody559_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody559_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody559_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody559_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_50 : StackLang.HolProg 64 :=
.seq RemovedBody559_48 RemovedBody559_49

def RemovedBody559_51 : StackLang.HolProg 64 :=
.seq RemovedBody559_47 RemovedBody559_50

def RemovedBody559_52 : StackLang.HolProg 64 :=
.seq RemovedBody559_46 RemovedBody559_51

def RemovedBody559_53 : StackLang.HolProg 64 :=
.seq RemovedBody559_45 RemovedBody559_52

def RemovedBody559_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody559_56 : StackLang.HolProg 64 :=
.seq RemovedBody559_54 RemovedBody559_55

def RemovedBody559_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody559_53, 0, 559, 2)) (Sum.inl 470) (some (RemovedBody559_56, 559, 3))

def RemovedBody559_58 : StackLang.HolProg 64 :=
.seq RemovedBody559_44 RemovedBody559_57

def RemovedBody559_59 : StackLang.HolProg 64 :=
.seq RemovedBody559_43 RemovedBody559_58

def RemovedBody559_60 : StackLang.HolProg 64 :=
.seq RemovedBody559_42 RemovedBody559_59

def RemovedBody559_61 : StackLang.HolProg 64 :=
.seq RemovedBody559_13 RemovedBody559_60

def RemovedBody559_62 : StackLang.HolProg 64 :=
.seq RemovedBody559_10 RemovedBody559_61

def RemovedBody559_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody559_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody559_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody559_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody559_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody559_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def RemovedBody559_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def RemovedBody559_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1909#64)

def RemovedBody559_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody559_74 : StackLang.HolProg 64 :=
.seq RemovedBody559_72 RemovedBody559_73

def RemovedBody559_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody559_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody559_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody559_78 : StackLang.HolProg 64 :=
.seq RemovedBody559_76 RemovedBody559_77

def RemovedBody559_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody559_78 RemovedBody559_79

def RemovedBody559_81 : StackLang.HolProg 64 :=
.seq RemovedBody559_75 RemovedBody559_80

def RemovedBody559_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody559_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody559_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 559 5

def RemovedBody559_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody559_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody559_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody559_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody559_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody559_91 : StackLang.HolProg 64 :=
.seq RemovedBody559_89 RemovedBody559_90

def RemovedBody559_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody559_93 : StackLang.HolProg 64 :=
.seq RemovedBody559_91 RemovedBody559_92

def RemovedBody559_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody559_95 : StackLang.HolProg 64 :=
.seq RemovedBody559_93 RemovedBody559_94

def RemovedBody559_96 : StackLang.HolProg 64 :=
.seq RemovedBody559_88 RemovedBody559_95

def RemovedBody559_97 : StackLang.HolProg 64 :=
.seq RemovedBody559_87 RemovedBody559_96

def RemovedBody559_98 : StackLang.HolProg 64 :=
.seq RemovedBody559_86 RemovedBody559_97

def RemovedBody559_99 : StackLang.HolProg 64 :=
.seq RemovedBody559_85 RemovedBody559_98

def RemovedBody559_100 : StackLang.HolProg 64 :=
.seq RemovedBody559_84 RemovedBody559_99

def RemovedBody559_101 : StackLang.HolProg 64 :=
.seq RemovedBody559_83 RemovedBody559_100

def RemovedBody559_102 : StackLang.HolProg 64 :=
.seq RemovedBody559_82 RemovedBody559_101

def RemovedBody559_103 : StackLang.HolProg 64 :=
.seq RemovedBody559_81 RemovedBody559_102

def RemovedBody559_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody559_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody559_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody559_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_111 : StackLang.HolProg 64 :=
.seq RemovedBody559_109 RemovedBody559_110

def RemovedBody559_112 : StackLang.HolProg 64 :=
.seq RemovedBody559_108 RemovedBody559_111

def RemovedBody559_113 : StackLang.HolProg 64 :=
.seq RemovedBody559_107 RemovedBody559_112

def RemovedBody559_114 : StackLang.HolProg 64 :=
.seq RemovedBody559_106 RemovedBody559_113

def RemovedBody559_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody559_117 : StackLang.HolProg 64 :=
.seq RemovedBody559_115 RemovedBody559_116

def RemovedBody559_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody559_114, 0, 559, 4)) (Sum.inl 477) (some (RemovedBody559_117, 559, 5))

def RemovedBody559_119 : StackLang.HolProg 64 :=
.seq RemovedBody559_105 RemovedBody559_118

def RemovedBody559_120 : StackLang.HolProg 64 :=
.seq RemovedBody559_104 RemovedBody559_119

def RemovedBody559_121 : StackLang.HolProg 64 :=
.seq RemovedBody559_103 RemovedBody559_120

def RemovedBody559_122 : StackLang.HolProg 64 :=
.seq RemovedBody559_74 RemovedBody559_121

def RemovedBody559_123 : StackLang.HolProg 64 :=
.seq RemovedBody559_71 RemovedBody559_122

def RemovedBody559_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody559_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody559_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1910#64)

def RemovedBody559_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody559_130 : StackLang.HolProg 64 :=
.seq RemovedBody559_128 RemovedBody559_129

def RemovedBody559_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody559_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody559_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody559_134 : StackLang.HolProg 64 :=
.seq RemovedBody559_132 RemovedBody559_133

def RemovedBody559_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody559_134 RemovedBody559_135

def RemovedBody559_137 : StackLang.HolProg 64 :=
.seq RemovedBody559_131 RemovedBody559_136

def RemovedBody559_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody559_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody559_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 559 7

def RemovedBody559_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody559_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody559_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody559_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody559_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody559_147 : StackLang.HolProg 64 :=
.seq RemovedBody559_145 RemovedBody559_146

def RemovedBody559_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody559_149 : StackLang.HolProg 64 :=
.seq RemovedBody559_147 RemovedBody559_148

def RemovedBody559_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody559_151 : StackLang.HolProg 64 :=
.seq RemovedBody559_149 RemovedBody559_150

def RemovedBody559_152 : StackLang.HolProg 64 :=
.seq RemovedBody559_144 RemovedBody559_151

def RemovedBody559_153 : StackLang.HolProg 64 :=
.seq RemovedBody559_143 RemovedBody559_152

def RemovedBody559_154 : StackLang.HolProg 64 :=
.seq RemovedBody559_142 RemovedBody559_153

def RemovedBody559_155 : StackLang.HolProg 64 :=
.seq RemovedBody559_141 RemovedBody559_154

def RemovedBody559_156 : StackLang.HolProg 64 :=
.seq RemovedBody559_140 RemovedBody559_155

def RemovedBody559_157 : StackLang.HolProg 64 :=
.seq RemovedBody559_139 RemovedBody559_156

def RemovedBody559_158 : StackLang.HolProg 64 :=
.seq RemovedBody559_138 RemovedBody559_157

def RemovedBody559_159 : StackLang.HolProg 64 :=
.seq RemovedBody559_137 RemovedBody559_158

def RemovedBody559_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody559_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody559_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody559_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody559_167 : StackLang.HolProg 64 :=
.seq RemovedBody559_165 RemovedBody559_166

def RemovedBody559_168 : StackLang.HolProg 64 :=
.seq RemovedBody559_164 RemovedBody559_167

def RemovedBody559_169 : StackLang.HolProg 64 :=
.seq RemovedBody559_163 RemovedBody559_168

def RemovedBody559_170 : StackLang.HolProg 64 :=
.seq RemovedBody559_162 RemovedBody559_169

def RemovedBody559_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody559_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody559_173 : StackLang.HolProg 64 :=
.seq RemovedBody559_171 RemovedBody559_172

def RemovedBody559_174 : StackLang.HolProg 64 :=
.call (some (RemovedBody559_170, 0, 559, 6)) (Sum.inl 490) (some (RemovedBody559_173, 559, 7))

def RemovedBody559_175 : StackLang.HolProg 64 :=
.seq RemovedBody559_161 RemovedBody559_174

def RemovedBody559_176 : StackLang.HolProg 64 :=
.seq RemovedBody559_160 RemovedBody559_175

def RemovedBody559_177 : StackLang.HolProg 64 :=
.seq RemovedBody559_159 RemovedBody559_176

def RemovedBody559_178 : StackLang.HolProg 64 :=
.seq RemovedBody559_130 RemovedBody559_177

def RemovedBody559_179 : StackLang.HolProg 64 :=
.seq RemovedBody559_127 RemovedBody559_178

def RemovedBody559_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody559_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody559_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody559_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody559_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody559_185 : StackLang.HolProg 64 :=
.seq RemovedBody559_183 RemovedBody559_184

def RemovedBody559_186 : StackLang.HolProg 64 :=
.seq RemovedBody559_182 RemovedBody559_185

def RemovedBody559_187 : StackLang.HolProg 64 :=
.seq RemovedBody559_181 RemovedBody559_186

def RemovedBody559_188 : StackLang.HolProg 64 :=
.seq RemovedBody559_180 RemovedBody559_187

def RemovedBody559_189 : StackLang.HolProg 64 :=
.seq RemovedBody559_179 RemovedBody559_188

def RemovedBody559_190 : StackLang.HolProg 64 :=
.seq RemovedBody559_126 RemovedBody559_189

def RemovedBody559_191 : StackLang.HolProg 64 :=
.seq RemovedBody559_125 RemovedBody559_190

def RemovedBody559_192 : StackLang.HolProg 64 :=
.seq RemovedBody559_124 RemovedBody559_191

def RemovedBody559_193 : StackLang.HolProg 64 :=
.seq RemovedBody559_123 RemovedBody559_192

def RemovedBody559_194 : StackLang.HolProg 64 :=
.seq RemovedBody559_70 RemovedBody559_193

def RemovedBody559_195 : StackLang.HolProg 64 :=
.seq RemovedBody559_69 RemovedBody559_194

def RemovedBody559_196 : StackLang.HolProg 64 :=
.seq RemovedBody559_68 RemovedBody559_195

def RemovedBody559_197 : StackLang.HolProg 64 :=
.seq RemovedBody559_67 RemovedBody559_196

def RemovedBody559_198 : StackLang.HolProg 64 :=
.seq RemovedBody559_66 RemovedBody559_197

def RemovedBody559_199 : StackLang.HolProg 64 :=
.seq RemovedBody559_65 RemovedBody559_198

def RemovedBody559_200 : StackLang.HolProg 64 :=
.seq RemovedBody559_64 RemovedBody559_199

def RemovedBody559_201 : StackLang.HolProg 64 :=
.seq RemovedBody559_63 RemovedBody559_200

def RemovedBody559_202 : StackLang.HolProg 64 :=
.seq RemovedBody559_62 RemovedBody559_201

def RemovedBody559_203 : StackLang.HolProg 64 :=
.seq RemovedBody559_9 RemovedBody559_202

def RemovedBody559_204 : StackLang.HolProg 64 :=
.seq RemovedBody559_8 RemovedBody559_203

def RemovedBody559_205 : StackLang.HolProg 64 :=
.seq RemovedBody559_7 RemovedBody559_204

def RemovedBody559_206 : StackLang.HolProg 64 :=
.seq RemovedBody559_6 RemovedBody559_205

def Removed559 : Nat × StackLang.HolProg 64 := (559, RemovedBody559_206)
theorem Removed559_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc559 = Removed559 := by
  kernel_rfl
#print axioms Removed559_eq
end InitECandidate.Proofs.BackendStages
