import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc247
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody247_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody247_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody247_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody247_3 : StackLang.HolProg 64 :=
.seq RemovedBody247_1 RemovedBody247_2

def RemovedBody247_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody247_3 RemovedBody247_4

def RemovedBody247_6 : StackLang.HolProg 64 :=
.seq RemovedBody247_0 RemovedBody247_5

def RemovedBody247_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody247_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody247_9 : StackLang.HolProg 64 :=
.seq RemovedBody247_7 RemovedBody247_8

def RemovedBody247_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 483#64)

def RemovedBody247_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody247_13 : StackLang.HolProg 64 :=
.seq RemovedBody247_11 RemovedBody247_12

def RemovedBody247_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody247_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody247_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody247_17 : StackLang.HolProg 64 :=
.seq RemovedBody247_15 RemovedBody247_16

def RemovedBody247_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody247_17 RemovedBody247_18

def RemovedBody247_20 : StackLang.HolProg 64 :=
.seq RemovedBody247_14 RemovedBody247_19

def RemovedBody247_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody247_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody247_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 3

def RemovedBody247_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody247_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody247_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody247_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody247_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody247_30 : StackLang.HolProg 64 :=
.seq RemovedBody247_28 RemovedBody247_29

def RemovedBody247_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody247_32 : StackLang.HolProg 64 :=
.seq RemovedBody247_30 RemovedBody247_31

def RemovedBody247_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody247_34 : StackLang.HolProg 64 :=
.seq RemovedBody247_32 RemovedBody247_33

def RemovedBody247_35 : StackLang.HolProg 64 :=
.seq RemovedBody247_27 RemovedBody247_34

def RemovedBody247_36 : StackLang.HolProg 64 :=
.seq RemovedBody247_26 RemovedBody247_35

def RemovedBody247_37 : StackLang.HolProg 64 :=
.seq RemovedBody247_25 RemovedBody247_36

def RemovedBody247_38 : StackLang.HolProg 64 :=
.seq RemovedBody247_24 RemovedBody247_37

def RemovedBody247_39 : StackLang.HolProg 64 :=
.seq RemovedBody247_23 RemovedBody247_38

def RemovedBody247_40 : StackLang.HolProg 64 :=
.seq RemovedBody247_22 RemovedBody247_39

def RemovedBody247_41 : StackLang.HolProg 64 :=
.seq RemovedBody247_21 RemovedBody247_40

def RemovedBody247_42 : StackLang.HolProg 64 :=
.seq RemovedBody247_20 RemovedBody247_41

def RemovedBody247_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody247_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody247_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody247_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody247_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody247_51 : StackLang.HolProg 64 :=
.seq RemovedBody247_49 RemovedBody247_50

def RemovedBody247_52 : StackLang.HolProg 64 :=
.seq RemovedBody247_48 RemovedBody247_51

def RemovedBody247_53 : StackLang.HolProg 64 :=
.seq RemovedBody247_47 RemovedBody247_52

def RemovedBody247_54 : StackLang.HolProg 64 :=
.seq RemovedBody247_46 RemovedBody247_53

def RemovedBody247_55 : StackLang.HolProg 64 :=
.seq RemovedBody247_45 RemovedBody247_54

def RemovedBody247_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody247_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody247_58 : StackLang.HolProg 64 :=
.seq RemovedBody247_56 RemovedBody247_57

def RemovedBody247_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody247_55, 0, 247, 2)) (Sum.inl 246) (some (RemovedBody247_58, 247, 3))

def RemovedBody247_60 : StackLang.HolProg 64 :=
.seq RemovedBody247_44 RemovedBody247_59

def RemovedBody247_61 : StackLang.HolProg 64 :=
.seq RemovedBody247_43 RemovedBody247_60

def RemovedBody247_62 : StackLang.HolProg 64 :=
.seq RemovedBody247_42 RemovedBody247_61

def RemovedBody247_63 : StackLang.HolProg 64 :=
.seq RemovedBody247_13 RemovedBody247_62

def RemovedBody247_64 : StackLang.HolProg 64 :=
.seq RemovedBody247_10 RemovedBody247_63

def RemovedBody247_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody247_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody247_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody247_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody247_70 : StackLang.HolProg 64 :=
.seq RemovedBody247_68 RemovedBody247_69

def RemovedBody247_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 484#64)

def RemovedBody247_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody247_74 : StackLang.HolProg 64 :=
.seq RemovedBody247_72 RemovedBody247_73

def RemovedBody247_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody247_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody247_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody247_78 : StackLang.HolProg 64 :=
.seq RemovedBody247_76 RemovedBody247_77

def RemovedBody247_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody247_78 RemovedBody247_79

def RemovedBody247_81 : StackLang.HolProg 64 :=
.seq RemovedBody247_75 RemovedBody247_80

def RemovedBody247_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody247_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody247_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 5

def RemovedBody247_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody247_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody247_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody247_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody247_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody247_91 : StackLang.HolProg 64 :=
.seq RemovedBody247_89 RemovedBody247_90

def RemovedBody247_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody247_93 : StackLang.HolProg 64 :=
.seq RemovedBody247_91 RemovedBody247_92

def RemovedBody247_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody247_95 : StackLang.HolProg 64 :=
.seq RemovedBody247_93 RemovedBody247_94

def RemovedBody247_96 : StackLang.HolProg 64 :=
.seq RemovedBody247_88 RemovedBody247_95

def RemovedBody247_97 : StackLang.HolProg 64 :=
.seq RemovedBody247_87 RemovedBody247_96

def RemovedBody247_98 : StackLang.HolProg 64 :=
.seq RemovedBody247_86 RemovedBody247_97

def RemovedBody247_99 : StackLang.HolProg 64 :=
.seq RemovedBody247_85 RemovedBody247_98

def RemovedBody247_100 : StackLang.HolProg 64 :=
.seq RemovedBody247_84 RemovedBody247_99

def RemovedBody247_101 : StackLang.HolProg 64 :=
.seq RemovedBody247_83 RemovedBody247_100

def RemovedBody247_102 : StackLang.HolProg 64 :=
.seq RemovedBody247_82 RemovedBody247_101

def RemovedBody247_103 : StackLang.HolProg 64 :=
.seq RemovedBody247_81 RemovedBody247_102

def RemovedBody247_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody247_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody247_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody247_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody247_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody247_112 : StackLang.HolProg 64 :=
.seq RemovedBody247_110 RemovedBody247_111

def RemovedBody247_113 : StackLang.HolProg 64 :=
.seq RemovedBody247_109 RemovedBody247_112

def RemovedBody247_114 : StackLang.HolProg 64 :=
.seq RemovedBody247_108 RemovedBody247_113

def RemovedBody247_115 : StackLang.HolProg 64 :=
.seq RemovedBody247_107 RemovedBody247_114

def RemovedBody247_116 : StackLang.HolProg 64 :=
.seq RemovedBody247_106 RemovedBody247_115

def RemovedBody247_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody247_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody247_119 : StackLang.HolProg 64 :=
.seq RemovedBody247_117 RemovedBody247_118

def RemovedBody247_120 : StackLang.HolProg 64 :=
.call (some (RemovedBody247_116, 0, 247, 4)) (Sum.inl 246) (some (RemovedBody247_119, 247, 5))

def RemovedBody247_121 : StackLang.HolProg 64 :=
.seq RemovedBody247_105 RemovedBody247_120

def RemovedBody247_122 : StackLang.HolProg 64 :=
.seq RemovedBody247_104 RemovedBody247_121

def RemovedBody247_123 : StackLang.HolProg 64 :=
.seq RemovedBody247_103 RemovedBody247_122

def RemovedBody247_124 : StackLang.HolProg 64 :=
.seq RemovedBody247_74 RemovedBody247_123

def RemovedBody247_125 : StackLang.HolProg 64 :=
.seq RemovedBody247_71 RemovedBody247_124

def RemovedBody247_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody247_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody247_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody247_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody247_131 : StackLang.HolProg 64 :=
.seq RemovedBody247_129 RemovedBody247_130

def RemovedBody247_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 485#64)

def RemovedBody247_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody247_135 : StackLang.HolProg 64 :=
.seq RemovedBody247_133 RemovedBody247_134

def RemovedBody247_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody247_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody247_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody247_139 : StackLang.HolProg 64 :=
.seq RemovedBody247_137 RemovedBody247_138

def RemovedBody247_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_141 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody247_139 RemovedBody247_140

def RemovedBody247_142 : StackLang.HolProg 64 :=
.seq RemovedBody247_136 RemovedBody247_141

def RemovedBody247_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody247_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody247_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 7

def RemovedBody247_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody247_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody247_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody247_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody247_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody247_152 : StackLang.HolProg 64 :=
.seq RemovedBody247_150 RemovedBody247_151

def RemovedBody247_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody247_154 : StackLang.HolProg 64 :=
.seq RemovedBody247_152 RemovedBody247_153

def RemovedBody247_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody247_156 : StackLang.HolProg 64 :=
.seq RemovedBody247_154 RemovedBody247_155

def RemovedBody247_157 : StackLang.HolProg 64 :=
.seq RemovedBody247_149 RemovedBody247_156

def RemovedBody247_158 : StackLang.HolProg 64 :=
.seq RemovedBody247_148 RemovedBody247_157

def RemovedBody247_159 : StackLang.HolProg 64 :=
.seq RemovedBody247_147 RemovedBody247_158

def RemovedBody247_160 : StackLang.HolProg 64 :=
.seq RemovedBody247_146 RemovedBody247_159

def RemovedBody247_161 : StackLang.HolProg 64 :=
.seq RemovedBody247_145 RemovedBody247_160

def RemovedBody247_162 : StackLang.HolProg 64 :=
.seq RemovedBody247_144 RemovedBody247_161

def RemovedBody247_163 : StackLang.HolProg 64 :=
.seq RemovedBody247_143 RemovedBody247_162

def RemovedBody247_164 : StackLang.HolProg 64 :=
.seq RemovedBody247_142 RemovedBody247_163

def RemovedBody247_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody247_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody247_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody247_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody247_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody247_173 : StackLang.HolProg 64 :=
.seq RemovedBody247_171 RemovedBody247_172

def RemovedBody247_174 : StackLang.HolProg 64 :=
.seq RemovedBody247_170 RemovedBody247_173

def RemovedBody247_175 : StackLang.HolProg 64 :=
.seq RemovedBody247_169 RemovedBody247_174

def RemovedBody247_176 : StackLang.HolProg 64 :=
.seq RemovedBody247_168 RemovedBody247_175

def RemovedBody247_177 : StackLang.HolProg 64 :=
.seq RemovedBody247_167 RemovedBody247_176

def RemovedBody247_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody247_179 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody247_180 : StackLang.HolProg 64 :=
.seq RemovedBody247_178 RemovedBody247_179

def RemovedBody247_181 : StackLang.HolProg 64 :=
.call (some (RemovedBody247_177, 0, 247, 6)) (Sum.inl 246) (some (RemovedBody247_180, 247, 7))

def RemovedBody247_182 : StackLang.HolProg 64 :=
.seq RemovedBody247_166 RemovedBody247_181

def RemovedBody247_183 : StackLang.HolProg 64 :=
.seq RemovedBody247_165 RemovedBody247_182

def RemovedBody247_184 : StackLang.HolProg 64 :=
.seq RemovedBody247_164 RemovedBody247_183

def RemovedBody247_185 : StackLang.HolProg 64 :=
.seq RemovedBody247_135 RemovedBody247_184

def RemovedBody247_186 : StackLang.HolProg 64 :=
.seq RemovedBody247_132 RemovedBody247_185

def RemovedBody247_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody247_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody247_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody247_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 486#64)

def RemovedBody247_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody247_194 : StackLang.HolProg 64 :=
.seq RemovedBody247_192 RemovedBody247_193

def RemovedBody247_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody247_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody247_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody247_198 : StackLang.HolProg 64 :=
.seq RemovedBody247_196 RemovedBody247_197

def RemovedBody247_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody247_198 RemovedBody247_199

def RemovedBody247_201 : StackLang.HolProg 64 :=
.seq RemovedBody247_195 RemovedBody247_200

def RemovedBody247_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody247_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody247_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 9

def RemovedBody247_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody247_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody247_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody247_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody247_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody247_211 : StackLang.HolProg 64 :=
.seq RemovedBody247_209 RemovedBody247_210

def RemovedBody247_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody247_213 : StackLang.HolProg 64 :=
.seq RemovedBody247_211 RemovedBody247_212

def RemovedBody247_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody247_215 : StackLang.HolProg 64 :=
.seq RemovedBody247_213 RemovedBody247_214

def RemovedBody247_216 : StackLang.HolProg 64 :=
.seq RemovedBody247_208 RemovedBody247_215

def RemovedBody247_217 : StackLang.HolProg 64 :=
.seq RemovedBody247_207 RemovedBody247_216

def RemovedBody247_218 : StackLang.HolProg 64 :=
.seq RemovedBody247_206 RemovedBody247_217

def RemovedBody247_219 : StackLang.HolProg 64 :=
.seq RemovedBody247_205 RemovedBody247_218

def RemovedBody247_220 : StackLang.HolProg 64 :=
.seq RemovedBody247_204 RemovedBody247_219

def RemovedBody247_221 : StackLang.HolProg 64 :=
.seq RemovedBody247_203 RemovedBody247_220

def RemovedBody247_222 : StackLang.HolProg 64 :=
.seq RemovedBody247_202 RemovedBody247_221

def RemovedBody247_223 : StackLang.HolProg 64 :=
.seq RemovedBody247_201 RemovedBody247_222

def RemovedBody247_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody247_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody247_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody247_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody247_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody247_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody247_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody247_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody247_235 : StackLang.HolProg 64 :=
.seq RemovedBody247_233 RemovedBody247_234

def RemovedBody247_236 : StackLang.HolProg 64 :=
.seq RemovedBody247_232 RemovedBody247_235

def RemovedBody247_237 : StackLang.HolProg 64 :=
.seq RemovedBody247_231 RemovedBody247_236

def RemovedBody247_238 : StackLang.HolProg 64 :=
.seq RemovedBody247_230 RemovedBody247_237

def RemovedBody247_239 : StackLang.HolProg 64 :=
.seq RemovedBody247_229 RemovedBody247_238

def RemovedBody247_240 : StackLang.HolProg 64 :=
.seq RemovedBody247_228 RemovedBody247_239

def RemovedBody247_241 : StackLang.HolProg 64 :=
.seq RemovedBody247_227 RemovedBody247_240

def RemovedBody247_242 : StackLang.HolProg 64 :=
.seq RemovedBody247_226 RemovedBody247_241

def RemovedBody247_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody247_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody247_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody247_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody247_247 : StackLang.HolProg 64 :=
.seq RemovedBody247_245 RemovedBody247_246

def RemovedBody247_248 : StackLang.HolProg 64 :=
.seq RemovedBody247_244 RemovedBody247_247

def RemovedBody247_249 : StackLang.HolProg 64 :=
.seq RemovedBody247_243 RemovedBody247_248

def RemovedBody247_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody247_251 : StackLang.HolProg 64 :=
.seq RemovedBody247_249 RemovedBody247_250

def RemovedBody247_252 : StackLang.HolProg 64 :=
.call (some (RemovedBody247_242, 0, 247, 8)) (Sum.inl 246) (some (RemovedBody247_251, 247, 9))

def RemovedBody247_253 : StackLang.HolProg 64 :=
.seq RemovedBody247_225 RemovedBody247_252

def RemovedBody247_254 : StackLang.HolProg 64 :=
.seq RemovedBody247_224 RemovedBody247_253

def RemovedBody247_255 : StackLang.HolProg 64 :=
.seq RemovedBody247_223 RemovedBody247_254

def RemovedBody247_256 : StackLang.HolProg 64 :=
.seq RemovedBody247_194 RemovedBody247_255

def RemovedBody247_257 : StackLang.HolProg 64 :=
.seq RemovedBody247_191 RemovedBody247_256

def RemovedBody247_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody247_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody247_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody247_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody247_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody247_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody247_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody247_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody247_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody247_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody247_272 : StackLang.HolProg 64 :=
.seq RemovedBody247_270 RemovedBody247_271

def RemovedBody247_273 : StackLang.HolProg 64 :=
.seq RemovedBody247_269 RemovedBody247_272

def RemovedBody247_274 : StackLang.HolProg 64 :=
.seq RemovedBody247_268 RemovedBody247_273

def RemovedBody247_275 : StackLang.HolProg 64 :=
.seq RemovedBody247_267 RemovedBody247_274

def RemovedBody247_276 : StackLang.HolProg 64 :=
.seq RemovedBody247_266 RemovedBody247_275

def RemovedBody247_277 : StackLang.HolProg 64 :=
.seq RemovedBody247_265 RemovedBody247_276

def RemovedBody247_278 : StackLang.HolProg 64 :=
.seq RemovedBody247_264 RemovedBody247_277

def RemovedBody247_279 : StackLang.HolProg 64 :=
.seq RemovedBody247_263 RemovedBody247_278

def RemovedBody247_280 : StackLang.HolProg 64 :=
.seq RemovedBody247_262 RemovedBody247_279

def RemovedBody247_281 : StackLang.HolProg 64 :=
.seq RemovedBody247_261 RemovedBody247_280

def RemovedBody247_282 : StackLang.HolProg 64 :=
.seq RemovedBody247_260 RemovedBody247_281

def RemovedBody247_283 : StackLang.HolProg 64 :=
.seq RemovedBody247_259 RemovedBody247_282

def RemovedBody247_284 : StackLang.HolProg 64 :=
.seq RemovedBody247_258 RemovedBody247_283

def RemovedBody247_285 : StackLang.HolProg 64 :=
.seq RemovedBody247_257 RemovedBody247_284

def RemovedBody247_286 : StackLang.HolProg 64 :=
.seq RemovedBody247_190 RemovedBody247_285

def RemovedBody247_287 : StackLang.HolProg 64 :=
.seq RemovedBody247_189 RemovedBody247_286

def RemovedBody247_288 : StackLang.HolProg 64 :=
.seq RemovedBody247_188 RemovedBody247_287

def RemovedBody247_289 : StackLang.HolProg 64 :=
.seq RemovedBody247_187 RemovedBody247_288

def RemovedBody247_290 : StackLang.HolProg 64 :=
.seq RemovedBody247_186 RemovedBody247_289

def RemovedBody247_291 : StackLang.HolProg 64 :=
.seq RemovedBody247_131 RemovedBody247_290

def RemovedBody247_292 : StackLang.HolProg 64 :=
.seq RemovedBody247_128 RemovedBody247_291

def RemovedBody247_293 : StackLang.HolProg 64 :=
.seq RemovedBody247_127 RemovedBody247_292

def RemovedBody247_294 : StackLang.HolProg 64 :=
.seq RemovedBody247_126 RemovedBody247_293

def RemovedBody247_295 : StackLang.HolProg 64 :=
.seq RemovedBody247_125 RemovedBody247_294

def RemovedBody247_296 : StackLang.HolProg 64 :=
.seq RemovedBody247_70 RemovedBody247_295

def RemovedBody247_297 : StackLang.HolProg 64 :=
.seq RemovedBody247_67 RemovedBody247_296

def RemovedBody247_298 : StackLang.HolProg 64 :=
.seq RemovedBody247_66 RemovedBody247_297

def RemovedBody247_299 : StackLang.HolProg 64 :=
.seq RemovedBody247_65 RemovedBody247_298

def RemovedBody247_300 : StackLang.HolProg 64 :=
.seq RemovedBody247_64 RemovedBody247_299

def RemovedBody247_301 : StackLang.HolProg 64 :=
.seq RemovedBody247_9 RemovedBody247_300

def RemovedBody247_302 : StackLang.HolProg 64 :=
.seq RemovedBody247_6 RemovedBody247_301

def Removed247 : Nat × StackLang.HolProg 64 := (247, RemovedBody247_302)
theorem Removed247_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc247 = Removed247 := by
  kernel_rfl
#print axioms Removed247_eq
end InitECandidate.Proofs.BackendStages
