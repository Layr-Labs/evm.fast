import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc416
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody416_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody416_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody416_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody416_3 : StackLang.HolProg 64 :=
.seq RemovedBody416_1 RemovedBody416_2

def RemovedBody416_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody416_3 RemovedBody416_4

def RemovedBody416_6 : StackLang.HolProg 64 :=
.seq RemovedBody416_0 RemovedBody416_5

def RemovedBody416_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody416_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody416_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody416_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody416_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody416_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody416_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody416_15 : StackLang.HolProg 64 :=
.seq RemovedBody416_13 RemovedBody416_14

def RemovedBody416_16 : StackLang.HolProg 64 :=
.seq RemovedBody416_12 RemovedBody416_15

def RemovedBody416_17 : StackLang.HolProg 64 :=
.seq RemovedBody416_11 RemovedBody416_16

def RemovedBody416_18 : StackLang.HolProg 64 :=
.seq RemovedBody416_10 RemovedBody416_17

def RemovedBody416_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody416_18 RemovedBody416_19

def RemovedBody416_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody416_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody416_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 48#64))

def RemovedBody416_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody416_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody416_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody416_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551480#64))

def RemovedBody416_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody416_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody416_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody416_32 : StackLang.HolProg 64 :=
.seq RemovedBody416_30 RemovedBody416_31

def RemovedBody416_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1241#64)

def RemovedBody416_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody416_36 : StackLang.HolProg 64 :=
.seq RemovedBody416_34 RemovedBody416_35

def RemovedBody416_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody416_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody416_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody416_40 : StackLang.HolProg 64 :=
.seq RemovedBody416_38 RemovedBody416_39

def RemovedBody416_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody416_40 RemovedBody416_41

def RemovedBody416_43 : StackLang.HolProg 64 :=
.seq RemovedBody416_37 RemovedBody416_42

def RemovedBody416_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody416_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody416_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 416 3

def RemovedBody416_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody416_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody416_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody416_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody416_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody416_53 : StackLang.HolProg 64 :=
.seq RemovedBody416_51 RemovedBody416_52

def RemovedBody416_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody416_55 : StackLang.HolProg 64 :=
.seq RemovedBody416_53 RemovedBody416_54

def RemovedBody416_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody416_57 : StackLang.HolProg 64 :=
.seq RemovedBody416_55 RemovedBody416_56

def RemovedBody416_58 : StackLang.HolProg 64 :=
.seq RemovedBody416_50 RemovedBody416_57

def RemovedBody416_59 : StackLang.HolProg 64 :=
.seq RemovedBody416_49 RemovedBody416_58

def RemovedBody416_60 : StackLang.HolProg 64 :=
.seq RemovedBody416_48 RemovedBody416_59

def RemovedBody416_61 : StackLang.HolProg 64 :=
.seq RemovedBody416_47 RemovedBody416_60

def RemovedBody416_62 : StackLang.HolProg 64 :=
.seq RemovedBody416_46 RemovedBody416_61

def RemovedBody416_63 : StackLang.HolProg 64 :=
.seq RemovedBody416_45 RemovedBody416_62

def RemovedBody416_64 : StackLang.HolProg 64 :=
.seq RemovedBody416_44 RemovedBody416_63

def RemovedBody416_65 : StackLang.HolProg 64 :=
.seq RemovedBody416_43 RemovedBody416_64

def RemovedBody416_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody416_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody416_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody416_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody416_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody416_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody416_75 : StackLang.HolProg 64 :=
.seq RemovedBody416_73 RemovedBody416_74

def RemovedBody416_76 : StackLang.HolProg 64 :=
.seq RemovedBody416_72 RemovedBody416_75

def RemovedBody416_77 : StackLang.HolProg 64 :=
.seq RemovedBody416_71 RemovedBody416_76

def RemovedBody416_78 : StackLang.HolProg 64 :=
.seq RemovedBody416_70 RemovedBody416_77

def RemovedBody416_79 : StackLang.HolProg 64 :=
.seq RemovedBody416_69 RemovedBody416_78

def RemovedBody416_80 : StackLang.HolProg 64 :=
.seq RemovedBody416_68 RemovedBody416_79

def RemovedBody416_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody416_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody416_83 : StackLang.HolProg 64 :=
.seq RemovedBody416_81 RemovedBody416_82

def RemovedBody416_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody416_85 : StackLang.HolProg 64 :=
.seq RemovedBody416_83 RemovedBody416_84

def RemovedBody416_86 : StackLang.HolProg 64 :=
.call (some (RemovedBody416_80, 0, 416, 2)) (Sum.inl 79) (some (RemovedBody416_85, 416, 3))

def RemovedBody416_87 : StackLang.HolProg 64 :=
.seq RemovedBody416_67 RemovedBody416_86

def RemovedBody416_88 : StackLang.HolProg 64 :=
.seq RemovedBody416_66 RemovedBody416_87

def RemovedBody416_89 : StackLang.HolProg 64 :=
.seq RemovedBody416_65 RemovedBody416_88

def RemovedBody416_90 : StackLang.HolProg 64 :=
.seq RemovedBody416_36 RemovedBody416_89

def RemovedBody416_91 : StackLang.HolProg 64 :=
.seq RemovedBody416_33 RemovedBody416_90

def RemovedBody416_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody416_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody416_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody416_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody416_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody416_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody416_100 : StackLang.HolProg 64 :=
.seq RemovedBody416_98 RemovedBody416_99

def RemovedBody416_101 : StackLang.HolProg 64 :=
.seq RemovedBody416_97 RemovedBody416_100

def RemovedBody416_102 : StackLang.HolProg 64 :=
.seq RemovedBody416_96 RemovedBody416_101

def RemovedBody416_103 : StackLang.HolProg 64 :=
.seq RemovedBody416_95 RemovedBody416_102

def RemovedBody416_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody416_103 RemovedBody416_104

def RemovedBody416_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody416_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody416_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody416_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody416_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody416_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody416_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody416_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1242#64)

def RemovedBody416_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody416_120 : StackLang.HolProg 64 :=
.seq RemovedBody416_118 RemovedBody416_119

def RemovedBody416_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody416_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody416_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody416_124 : StackLang.HolProg 64 :=
.seq RemovedBody416_122 RemovedBody416_123

def RemovedBody416_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_126 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody416_124 RemovedBody416_125

def RemovedBody416_127 : StackLang.HolProg 64 :=
.seq RemovedBody416_121 RemovedBody416_126

def RemovedBody416_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody416_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody416_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 416 5

def RemovedBody416_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody416_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody416_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody416_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody416_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody416_137 : StackLang.HolProg 64 :=
.seq RemovedBody416_135 RemovedBody416_136

def RemovedBody416_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody416_139 : StackLang.HolProg 64 :=
.seq RemovedBody416_137 RemovedBody416_138

def RemovedBody416_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody416_141 : StackLang.HolProg 64 :=
.seq RemovedBody416_139 RemovedBody416_140

def RemovedBody416_142 : StackLang.HolProg 64 :=
.seq RemovedBody416_134 RemovedBody416_141

def RemovedBody416_143 : StackLang.HolProg 64 :=
.seq RemovedBody416_133 RemovedBody416_142

def RemovedBody416_144 : StackLang.HolProg 64 :=
.seq RemovedBody416_132 RemovedBody416_143

def RemovedBody416_145 : StackLang.HolProg 64 :=
.seq RemovedBody416_131 RemovedBody416_144

def RemovedBody416_146 : StackLang.HolProg 64 :=
.seq RemovedBody416_130 RemovedBody416_145

def RemovedBody416_147 : StackLang.HolProg 64 :=
.seq RemovedBody416_129 RemovedBody416_146

def RemovedBody416_148 : StackLang.HolProg 64 :=
.seq RemovedBody416_128 RemovedBody416_147

def RemovedBody416_149 : StackLang.HolProg 64 :=
.seq RemovedBody416_127 RemovedBody416_148

def RemovedBody416_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody416_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody416_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody416_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody416_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody416_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody416_158 : StackLang.HolProg 64 :=
.seq RemovedBody416_156 RemovedBody416_157

def RemovedBody416_159 : StackLang.HolProg 64 :=
.seq RemovedBody416_155 RemovedBody416_158

def RemovedBody416_160 : StackLang.HolProg 64 :=
.seq RemovedBody416_154 RemovedBody416_159

def RemovedBody416_161 : StackLang.HolProg 64 :=
.seq RemovedBody416_153 RemovedBody416_160

def RemovedBody416_162 : StackLang.HolProg 64 :=
.seq RemovedBody416_152 RemovedBody416_161

def RemovedBody416_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody416_164 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody416_165 : StackLang.HolProg 64 :=
.seq RemovedBody416_163 RemovedBody416_164

def RemovedBody416_166 : StackLang.HolProg 64 :=
.call (some (RemovedBody416_162, 0, 416, 4)) (Sum.inl 102) (some (RemovedBody416_165, 416, 5))

def RemovedBody416_167 : StackLang.HolProg 64 :=
.seq RemovedBody416_151 RemovedBody416_166

def RemovedBody416_168 : StackLang.HolProg 64 :=
.seq RemovedBody416_150 RemovedBody416_167

def RemovedBody416_169 : StackLang.HolProg 64 :=
.seq RemovedBody416_149 RemovedBody416_168

def RemovedBody416_170 : StackLang.HolProg 64 :=
.seq RemovedBody416_120 RemovedBody416_169

def RemovedBody416_171 : StackLang.HolProg 64 :=
.seq RemovedBody416_117 RemovedBody416_170

def RemovedBody416_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody416_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody416_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody416_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody416_176 : StackLang.HolProg 64 :=
.seq RemovedBody416_174 RemovedBody416_175

def RemovedBody416_177 : StackLang.HolProg 64 :=
.seq RemovedBody416_173 RemovedBody416_176

def RemovedBody416_178 : StackLang.HolProg 64 :=
.seq RemovedBody416_172 RemovedBody416_177

def RemovedBody416_179 : StackLang.HolProg 64 :=
.seq RemovedBody416_171 RemovedBody416_178

def RemovedBody416_180 : StackLang.HolProg 64 :=
.seq RemovedBody416_116 RemovedBody416_179

def RemovedBody416_181 : StackLang.HolProg 64 :=
.seq RemovedBody416_115 RemovedBody416_180

def RemovedBody416_182 : StackLang.HolProg 64 :=
.seq RemovedBody416_114 RemovedBody416_181

def RemovedBody416_183 : StackLang.HolProg 64 :=
.seq RemovedBody416_113 RemovedBody416_182

def RemovedBody416_184 : StackLang.HolProg 64 :=
.seq RemovedBody416_112 RemovedBody416_183

def RemovedBody416_185 : StackLang.HolProg 64 :=
.seq RemovedBody416_111 RemovedBody416_184

def RemovedBody416_186 : StackLang.HolProg 64 :=
.seq RemovedBody416_110 RemovedBody416_185

def RemovedBody416_187 : StackLang.HolProg 64 :=
.seq RemovedBody416_109 RemovedBody416_186

def RemovedBody416_188 : StackLang.HolProg 64 :=
.seq RemovedBody416_108 RemovedBody416_187

def RemovedBody416_189 : StackLang.HolProg 64 :=
.seq RemovedBody416_107 RemovedBody416_188

def RemovedBody416_190 : StackLang.HolProg 64 :=
.seq RemovedBody416_106 RemovedBody416_189

def RemovedBody416_191 : StackLang.HolProg 64 :=
.seq RemovedBody416_105 RemovedBody416_190

def RemovedBody416_192 : StackLang.HolProg 64 :=
.seq RemovedBody416_94 RemovedBody416_191

def RemovedBody416_193 : StackLang.HolProg 64 :=
.seq RemovedBody416_93 RemovedBody416_192

def RemovedBody416_194 : StackLang.HolProg 64 :=
.seq RemovedBody416_92 RemovedBody416_193

def RemovedBody416_195 : StackLang.HolProg 64 :=
.seq RemovedBody416_91 RemovedBody416_194

def RemovedBody416_196 : StackLang.HolProg 64 :=
.seq RemovedBody416_32 RemovedBody416_195

def RemovedBody416_197 : StackLang.HolProg 64 :=
.seq RemovedBody416_29 RemovedBody416_196

def RemovedBody416_198 : StackLang.HolProg 64 :=
.seq RemovedBody416_28 RemovedBody416_197

def RemovedBody416_199 : StackLang.HolProg 64 :=
.seq RemovedBody416_27 RemovedBody416_198

def RemovedBody416_200 : StackLang.HolProg 64 :=
.seq RemovedBody416_26 RemovedBody416_199

def RemovedBody416_201 : StackLang.HolProg 64 :=
.seq RemovedBody416_25 RemovedBody416_200

def RemovedBody416_202 : StackLang.HolProg 64 :=
.seq RemovedBody416_24 RemovedBody416_201

def RemovedBody416_203 : StackLang.HolProg 64 :=
.seq RemovedBody416_23 RemovedBody416_202

def RemovedBody416_204 : StackLang.HolProg 64 :=
.seq RemovedBody416_22 RemovedBody416_203

def RemovedBody416_205 : StackLang.HolProg 64 :=
.seq RemovedBody416_21 RemovedBody416_204

def RemovedBody416_206 : StackLang.HolProg 64 :=
.seq RemovedBody416_20 RemovedBody416_205

def RemovedBody416_207 : StackLang.HolProg 64 :=
.seq RemovedBody416_9 RemovedBody416_206

def RemovedBody416_208 : StackLang.HolProg 64 :=
.seq RemovedBody416_8 RemovedBody416_207

def RemovedBody416_209 : StackLang.HolProg 64 :=
.seq RemovedBody416_7 RemovedBody416_208

def RemovedBody416_210 : StackLang.HolProg 64 :=
.seq RemovedBody416_6 RemovedBody416_209

def Removed416 : Nat × StackLang.HolProg 64 := (416, RemovedBody416_210)
theorem Removed416_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc416 = Removed416 := by
  kernel_rfl
#print axioms Removed416_eq
end InitECandidate.Proofs.BackendStages
