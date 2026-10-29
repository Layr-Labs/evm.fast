import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc167
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody167_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody167_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody167_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody167_3 : StackLang.HolProg 64 :=
.seq RemovedBody167_1 RemovedBody167_2

def RemovedBody167_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody167_3 RemovedBody167_4

def RemovedBody167_6 : StackLang.HolProg 64 :=
.seq RemovedBody167_0 RemovedBody167_5

def RemovedBody167_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody167_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody167_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody167_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody167_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody167_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody167_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody167_15 : StackLang.HolProg 64 :=
.seq RemovedBody167_13 RemovedBody167_14

def RemovedBody167_16 : StackLang.HolProg 64 :=
.seq RemovedBody167_12 RemovedBody167_15

def RemovedBody167_17 : StackLang.HolProg 64 :=
.seq RemovedBody167_11 RemovedBody167_16

def RemovedBody167_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody167_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody167_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody167_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody167_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody167_26 : StackLang.HolProg 64 :=
.seq RemovedBody167_24 RemovedBody167_25

def RemovedBody167_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody167_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody167_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody167_30 : StackLang.HolProg 64 :=
.seq RemovedBody167_28 RemovedBody167_29

def RemovedBody167_31 : StackLang.HolProg 64 :=
.seq RemovedBody167_27 RemovedBody167_30

def RemovedBody167_32 : StackLang.HolProg 64 :=
.seq RemovedBody167_26 RemovedBody167_31

def RemovedBody167_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 184#64)

def RemovedBody167_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody167_36 : StackLang.HolProg 64 :=
.seq RemovedBody167_34 RemovedBody167_35

def RemovedBody167_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody167_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody167_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody167_40 : StackLang.HolProg 64 :=
.seq RemovedBody167_38 RemovedBody167_39

def RemovedBody167_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody167_40 RemovedBody167_41

def RemovedBody167_43 : StackLang.HolProg 64 :=
.seq RemovedBody167_37 RemovedBody167_42

def RemovedBody167_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody167_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody167_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 167 3

def RemovedBody167_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody167_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody167_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody167_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody167_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody167_53 : StackLang.HolProg 64 :=
.seq RemovedBody167_51 RemovedBody167_52

def RemovedBody167_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody167_55 : StackLang.HolProg 64 :=
.seq RemovedBody167_53 RemovedBody167_54

def RemovedBody167_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody167_57 : StackLang.HolProg 64 :=
.seq RemovedBody167_55 RemovedBody167_56

def RemovedBody167_58 : StackLang.HolProg 64 :=
.seq RemovedBody167_50 RemovedBody167_57

def RemovedBody167_59 : StackLang.HolProg 64 :=
.seq RemovedBody167_49 RemovedBody167_58

def RemovedBody167_60 : StackLang.HolProg 64 :=
.seq RemovedBody167_48 RemovedBody167_59

def RemovedBody167_61 : StackLang.HolProg 64 :=
.seq RemovedBody167_47 RemovedBody167_60

def RemovedBody167_62 : StackLang.HolProg 64 :=
.seq RemovedBody167_46 RemovedBody167_61

def RemovedBody167_63 : StackLang.HolProg 64 :=
.seq RemovedBody167_45 RemovedBody167_62

def RemovedBody167_64 : StackLang.HolProg 64 :=
.seq RemovedBody167_44 RemovedBody167_63

def RemovedBody167_65 : StackLang.HolProg 64 :=
.seq RemovedBody167_43 RemovedBody167_64

def RemovedBody167_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody167_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody167_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody167_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody167_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody167_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody167_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody167_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody167_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody167_78 : StackLang.HolProg 64 :=
.seq RemovedBody167_76 RemovedBody167_77

def RemovedBody167_79 : StackLang.HolProg 64 :=
.seq RemovedBody167_75 RemovedBody167_78

def RemovedBody167_80 : StackLang.HolProg 64 :=
.seq RemovedBody167_74 RemovedBody167_79

def RemovedBody167_81 : StackLang.HolProg 64 :=
.seq RemovedBody167_73 RemovedBody167_80

def RemovedBody167_82 : StackLang.HolProg 64 :=
.seq RemovedBody167_72 RemovedBody167_81

def RemovedBody167_83 : StackLang.HolProg 64 :=
.seq RemovedBody167_71 RemovedBody167_82

def RemovedBody167_84 : StackLang.HolProg 64 :=
.seq RemovedBody167_70 RemovedBody167_83

def RemovedBody167_85 : StackLang.HolProg 64 :=
.seq RemovedBody167_69 RemovedBody167_84

def RemovedBody167_86 : StackLang.HolProg 64 :=
.seq RemovedBody167_68 RemovedBody167_85

def RemovedBody167_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody167_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody167_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody167_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody167_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody167_92 : StackLang.HolProg 64 :=
.seq RemovedBody167_90 RemovedBody167_91

def RemovedBody167_93 : StackLang.HolProg 64 :=
.seq RemovedBody167_89 RemovedBody167_92

def RemovedBody167_94 : StackLang.HolProg 64 :=
.seq RemovedBody167_88 RemovedBody167_93

def RemovedBody167_95 : StackLang.HolProg 64 :=
.seq RemovedBody167_87 RemovedBody167_94

def RemovedBody167_96 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody167_97 : StackLang.HolProg 64 :=
.seq RemovedBody167_95 RemovedBody167_96

def RemovedBody167_98 : StackLang.HolProg 64 :=
.call (some (RemovedBody167_86, 0, 167, 2)) (Sum.inl 166) (some (RemovedBody167_97, 167, 3))

def RemovedBody167_99 : StackLang.HolProg 64 :=
.seq RemovedBody167_67 RemovedBody167_98

def RemovedBody167_100 : StackLang.HolProg 64 :=
.seq RemovedBody167_66 RemovedBody167_99

def RemovedBody167_101 : StackLang.HolProg 64 :=
.seq RemovedBody167_65 RemovedBody167_100

def RemovedBody167_102 : StackLang.HolProg 64 :=
.seq RemovedBody167_36 RemovedBody167_101

def RemovedBody167_103 : StackLang.HolProg 64 :=
.seq RemovedBody167_33 RemovedBody167_102

def RemovedBody167_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody167_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody167_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody167_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody167_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody167_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody167_111 : StackLang.HolProg 64 :=
.seq RemovedBody167_109 RemovedBody167_110

def RemovedBody167_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody167_113 : StackLang.HolProg 64 :=
.seq RemovedBody167_111 RemovedBody167_112

def RemovedBody167_114 : StackLang.HolProg 64 :=
.seq RemovedBody167_108 RemovedBody167_113

def RemovedBody167_115 : StackLang.HolProg 64 :=
.seq RemovedBody167_107 RemovedBody167_114

def RemovedBody167_116 : StackLang.HolProg 64 :=
.seq RemovedBody167_106 RemovedBody167_115

def RemovedBody167_117 : StackLang.HolProg 64 :=
.seq RemovedBody167_105 RemovedBody167_116

def RemovedBody167_118 : StackLang.HolProg 64 :=
.seq RemovedBody167_104 RemovedBody167_117

def RemovedBody167_119 : StackLang.HolProg 64 :=
.seq RemovedBody167_103 RemovedBody167_118

def RemovedBody167_120 : StackLang.HolProg 64 :=
.seq RemovedBody167_32 RemovedBody167_119

def RemovedBody167_121 : StackLang.HolProg 64 :=
.seq RemovedBody167_23 RemovedBody167_120

def RemovedBody167_122 : StackLang.HolProg 64 :=
.seq RemovedBody167_22 RemovedBody167_121

def RemovedBody167_123 : StackLang.HolProg 64 :=
.seq RemovedBody167_21 RemovedBody167_122

def RemovedBody167_124 : StackLang.HolProg 64 :=
.seq RemovedBody167_20 RemovedBody167_123

def RemovedBody167_125 : StackLang.HolProg 64 :=
.seq RemovedBody167_19 RemovedBody167_124

def RemovedBody167_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody167_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody167_128 : StackLang.HolProg 64 :=
.seq RemovedBody167_126 RemovedBody167_127

def RemovedBody167_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody167_125 RemovedBody167_128

def RemovedBody167_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody167_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody167_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody167_133 : StackLang.HolProg 64 :=
.seq RemovedBody167_131 RemovedBody167_132

def RemovedBody167_134 : StackLang.HolProg 64 :=
.seq RemovedBody167_130 RemovedBody167_133

def RemovedBody167_135 : StackLang.HolProg 64 :=
.seq RemovedBody167_129 RemovedBody167_134

def RemovedBody167_136 : StackLang.HolProg 64 :=
.seq RemovedBody167_18 RemovedBody167_135

def RemovedBody167_137 : StackLang.HolProg 64 :=
.loop RemovedBody167_136

def RemovedBody167_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody167_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody167_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody167_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody167_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody167_143 : StackLang.HolProg 64 :=
.seq RemovedBody167_141 RemovedBody167_142

def RemovedBody167_144 : StackLang.HolProg 64 :=
.seq RemovedBody167_140 RemovedBody167_143

def RemovedBody167_145 : StackLang.HolProg 64 :=
.seq RemovedBody167_139 RemovedBody167_144

def RemovedBody167_146 : StackLang.HolProg 64 :=
.seq RemovedBody167_138 RemovedBody167_145

def RemovedBody167_147 : StackLang.HolProg 64 :=
.seq RemovedBody167_137 RemovedBody167_146

def RemovedBody167_148 : StackLang.HolProg 64 :=
.seq RemovedBody167_17 RemovedBody167_147

def RemovedBody167_149 : StackLang.HolProg 64 :=
.seq RemovedBody167_10 RemovedBody167_148

def RemovedBody167_150 : StackLang.HolProg 64 :=
.seq RemovedBody167_9 RemovedBody167_149

def RemovedBody167_151 : StackLang.HolProg 64 :=
.seq RemovedBody167_8 RemovedBody167_150

def RemovedBody167_152 : StackLang.HolProg 64 :=
.seq RemovedBody167_7 RemovedBody167_151

def RemovedBody167_153 : StackLang.HolProg 64 :=
.seq RemovedBody167_6 RemovedBody167_152

def Removed167 : Nat × StackLang.HolProg 64 := (167, RemovedBody167_153)
theorem Removed167_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc167 = Removed167 := by
  kernel_rfl
#print axioms Removed167_eq
end InitECandidate.Proofs.BackendStages
