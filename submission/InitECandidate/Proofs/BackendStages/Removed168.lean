import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc168
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody168_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody168_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody168_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody168_3 : StackLang.HolProg 64 :=
.seq RemovedBody168_1 RemovedBody168_2

def RemovedBody168_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody168_3 RemovedBody168_4

def RemovedBody168_6 : StackLang.HolProg 64 :=
.seq RemovedBody168_0 RemovedBody168_5

def RemovedBody168_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody168_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody168_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody168_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody168_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody168_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody168_16 : StackLang.HolProg 64 :=
.seq RemovedBody168_14 RemovedBody168_15

def RemovedBody168_17 : StackLang.HolProg 64 :=
.seq RemovedBody168_13 RemovedBody168_16

def RemovedBody168_18 : StackLang.HolProg 64 :=
.seq RemovedBody168_12 RemovedBody168_17

def RemovedBody168_19 : StackLang.HolProg 64 :=
.seq RemovedBody168_11 RemovedBody168_18

def RemovedBody168_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody168_19 RemovedBody168_20

def RemovedBody168_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 183#64)

def RemovedBody168_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody168_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551488#64)))

def RemovedBody168_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody168_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody168_33 : StackLang.HolProg 64 :=
.seq RemovedBody168_31 RemovedBody168_32

def RemovedBody168_34 : StackLang.HolProg 64 :=
.seq RemovedBody168_30 RemovedBody168_33

def RemovedBody168_35 : StackLang.HolProg 64 :=
.seq RemovedBody168_29 RemovedBody168_34

def RemovedBody168_36 : StackLang.HolProg 64 :=
.seq RemovedBody168_28 RemovedBody168_35

def RemovedBody168_37 : StackLang.HolProg 64 :=
.seq RemovedBody168_27 RemovedBody168_36

def RemovedBody168_38 : StackLang.HolProg 64 :=
.seq RemovedBody168_26 RemovedBody168_37

def RemovedBody168_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody168_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody168_38 RemovedBody168_39

def RemovedBody168_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 191#64)

def RemovedBody168_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551433#64)))

def RemovedBody168_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody168_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody168_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody168_52 : StackLang.HolProg 64 :=
.seq RemovedBody168_50 RemovedBody168_51

def RemovedBody168_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 185#64)

def RemovedBody168_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody168_56 : StackLang.HolProg 64 :=
.seq RemovedBody168_54 RemovedBody168_55

def RemovedBody168_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody168_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody168_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody168_60 : StackLang.HolProg 64 :=
.seq RemovedBody168_58 RemovedBody168_59

def RemovedBody168_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_62 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody168_60 RemovedBody168_61

def RemovedBody168_63 : StackLang.HolProg 64 :=
.seq RemovedBody168_57 RemovedBody168_62

def RemovedBody168_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody168_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody168_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 168 3

def RemovedBody168_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody168_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody168_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody168_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody168_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody168_73 : StackLang.HolProg 64 :=
.seq RemovedBody168_71 RemovedBody168_72

def RemovedBody168_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody168_75 : StackLang.HolProg 64 :=
.seq RemovedBody168_73 RemovedBody168_74

def RemovedBody168_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody168_77 : StackLang.HolProg 64 :=
.seq RemovedBody168_75 RemovedBody168_76

def RemovedBody168_78 : StackLang.HolProg 64 :=
.seq RemovedBody168_70 RemovedBody168_77

def RemovedBody168_79 : StackLang.HolProg 64 :=
.seq RemovedBody168_69 RemovedBody168_78

def RemovedBody168_80 : StackLang.HolProg 64 :=
.seq RemovedBody168_68 RemovedBody168_79

def RemovedBody168_81 : StackLang.HolProg 64 :=
.seq RemovedBody168_67 RemovedBody168_80

def RemovedBody168_82 : StackLang.HolProg 64 :=
.seq RemovedBody168_66 RemovedBody168_81

def RemovedBody168_83 : StackLang.HolProg 64 :=
.seq RemovedBody168_65 RemovedBody168_82

def RemovedBody168_84 : StackLang.HolProg 64 :=
.seq RemovedBody168_64 RemovedBody168_83

def RemovedBody168_85 : StackLang.HolProg 64 :=
.seq RemovedBody168_63 RemovedBody168_84

def RemovedBody168_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody168_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody168_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody168_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody168_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody168_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody168_95 : StackLang.HolProg 64 :=
.seq RemovedBody168_93 RemovedBody168_94

def RemovedBody168_96 : StackLang.HolProg 64 :=
.seq RemovedBody168_92 RemovedBody168_95

def RemovedBody168_97 : StackLang.HolProg 64 :=
.seq RemovedBody168_91 RemovedBody168_96

def RemovedBody168_98 : StackLang.HolProg 64 :=
.seq RemovedBody168_90 RemovedBody168_97

def RemovedBody168_99 : StackLang.HolProg 64 :=
.seq RemovedBody168_89 RemovedBody168_98

def RemovedBody168_100 : StackLang.HolProg 64 :=
.seq RemovedBody168_88 RemovedBody168_99

def RemovedBody168_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody168_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody168_103 : StackLang.HolProg 64 :=
.seq RemovedBody168_101 RemovedBody168_102

def RemovedBody168_104 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody168_105 : StackLang.HolProg 64 :=
.seq RemovedBody168_103 RemovedBody168_104

def RemovedBody168_106 : StackLang.HolProg 64 :=
.call (some (RemovedBody168_100, 0, 168, 2)) (Sum.inl 160) (some (RemovedBody168_105, 168, 3))

def RemovedBody168_107 : StackLang.HolProg 64 :=
.seq RemovedBody168_87 RemovedBody168_106

def RemovedBody168_108 : StackLang.HolProg 64 :=
.seq RemovedBody168_86 RemovedBody168_107

def RemovedBody168_109 : StackLang.HolProg 64 :=
.seq RemovedBody168_85 RemovedBody168_108

def RemovedBody168_110 : StackLang.HolProg 64 :=
.seq RemovedBody168_56 RemovedBody168_109

def RemovedBody168_111 : StackLang.HolProg 64 :=
.seq RemovedBody168_53 RemovedBody168_110

def RemovedBody168_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody168_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody168_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody168_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def RemovedBody168_119 : StackLang.HolProg 64 :=
.seq RemovedBody168_117 RemovedBody168_118

def RemovedBody168_120 : StackLang.HolProg 64 :=
.seq RemovedBody168_116 RemovedBody168_119

def RemovedBody168_121 : StackLang.HolProg 64 :=
.seq RemovedBody168_115 RemovedBody168_120

def RemovedBody168_122 : StackLang.HolProg 64 :=
.seq RemovedBody168_114 RemovedBody168_121

def RemovedBody168_123 : StackLang.HolProg 64 :=
.seq RemovedBody168_113 RemovedBody168_122

def RemovedBody168_124 : StackLang.HolProg 64 :=
.seq RemovedBody168_112 RemovedBody168_123

def RemovedBody168_125 : StackLang.HolProg 64 :=
.seq RemovedBody168_111 RemovedBody168_124

def RemovedBody168_126 : StackLang.HolProg 64 :=
.seq RemovedBody168_52 RemovedBody168_125

def RemovedBody168_127 : StackLang.HolProg 64 :=
.seq RemovedBody168_49 RemovedBody168_126

def RemovedBody168_128 : StackLang.HolProg 64 :=
.seq RemovedBody168_48 RemovedBody168_127

def RemovedBody168_129 : StackLang.HolProg 64 :=
.seq RemovedBody168_47 RemovedBody168_128

def RemovedBody168_130 : StackLang.HolProg 64 :=
.seq RemovedBody168_46 RemovedBody168_129

def RemovedBody168_131 : StackLang.HolProg 64 :=
.seq RemovedBody168_45 RemovedBody168_130

def RemovedBody168_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody168_131 RemovedBody168_132

def RemovedBody168_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 247#64)

def RemovedBody168_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody168_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551424#64)))

def RemovedBody168_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody168_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody168_145 : StackLang.HolProg 64 :=
.seq RemovedBody168_143 RemovedBody168_144

def RemovedBody168_146 : StackLang.HolProg 64 :=
.seq RemovedBody168_142 RemovedBody168_145

def RemovedBody168_147 : StackLang.HolProg 64 :=
.seq RemovedBody168_141 RemovedBody168_146

def RemovedBody168_148 : StackLang.HolProg 64 :=
.seq RemovedBody168_140 RemovedBody168_147

def RemovedBody168_149 : StackLang.HolProg 64 :=
.seq RemovedBody168_139 RemovedBody168_148

def RemovedBody168_150 : StackLang.HolProg 64 :=
.seq RemovedBody168_138 RemovedBody168_149

def RemovedBody168_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody168_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody168_150 RemovedBody168_151

def RemovedBody168_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551369#64)))

def RemovedBody168_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody168_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody168_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody168_161 : StackLang.HolProg 64 :=
.seq RemovedBody168_159 RemovedBody168_160

def RemovedBody168_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 186#64)

def RemovedBody168_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody168_165 : StackLang.HolProg 64 :=
.seq RemovedBody168_163 RemovedBody168_164

def RemovedBody168_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody168_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody168_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody168_169 : StackLang.HolProg 64 :=
.seq RemovedBody168_167 RemovedBody168_168

def RemovedBody168_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody168_169 RemovedBody168_170

def RemovedBody168_172 : StackLang.HolProg 64 :=
.seq RemovedBody168_166 RemovedBody168_171

def RemovedBody168_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody168_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody168_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 168 5

def RemovedBody168_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody168_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody168_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody168_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody168_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody168_182 : StackLang.HolProg 64 :=
.seq RemovedBody168_180 RemovedBody168_181

def RemovedBody168_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody168_184 : StackLang.HolProg 64 :=
.seq RemovedBody168_182 RemovedBody168_183

def RemovedBody168_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody168_186 : StackLang.HolProg 64 :=
.seq RemovedBody168_184 RemovedBody168_185

def RemovedBody168_187 : StackLang.HolProg 64 :=
.seq RemovedBody168_179 RemovedBody168_186

def RemovedBody168_188 : StackLang.HolProg 64 :=
.seq RemovedBody168_178 RemovedBody168_187

def RemovedBody168_189 : StackLang.HolProg 64 :=
.seq RemovedBody168_177 RemovedBody168_188

def RemovedBody168_190 : StackLang.HolProg 64 :=
.seq RemovedBody168_176 RemovedBody168_189

def RemovedBody168_191 : StackLang.HolProg 64 :=
.seq RemovedBody168_175 RemovedBody168_190

def RemovedBody168_192 : StackLang.HolProg 64 :=
.seq RemovedBody168_174 RemovedBody168_191

def RemovedBody168_193 : StackLang.HolProg 64 :=
.seq RemovedBody168_173 RemovedBody168_192

def RemovedBody168_194 : StackLang.HolProg 64 :=
.seq RemovedBody168_172 RemovedBody168_193

def RemovedBody168_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody168_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody168_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody168_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody168_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody168_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody168_204 : StackLang.HolProg 64 :=
.seq RemovedBody168_202 RemovedBody168_203

def RemovedBody168_205 : StackLang.HolProg 64 :=
.seq RemovedBody168_201 RemovedBody168_204

def RemovedBody168_206 : StackLang.HolProg 64 :=
.seq RemovedBody168_200 RemovedBody168_205

def RemovedBody168_207 : StackLang.HolProg 64 :=
.seq RemovedBody168_199 RemovedBody168_206

def RemovedBody168_208 : StackLang.HolProg 64 :=
.seq RemovedBody168_198 RemovedBody168_207

def RemovedBody168_209 : StackLang.HolProg 64 :=
.seq RemovedBody168_197 RemovedBody168_208

def RemovedBody168_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody168_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody168_212 : StackLang.HolProg 64 :=
.seq RemovedBody168_210 RemovedBody168_211

def RemovedBody168_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody168_214 : StackLang.HolProg 64 :=
.seq RemovedBody168_212 RemovedBody168_213

def RemovedBody168_215 : StackLang.HolProg 64 :=
.call (some (RemovedBody168_209, 0, 168, 4)) (Sum.inl 160) (some (RemovedBody168_214, 168, 5))

def RemovedBody168_216 : StackLang.HolProg 64 :=
.seq RemovedBody168_196 RemovedBody168_215

def RemovedBody168_217 : StackLang.HolProg 64 :=
.seq RemovedBody168_195 RemovedBody168_216

def RemovedBody168_218 : StackLang.HolProg 64 :=
.seq RemovedBody168_194 RemovedBody168_217

def RemovedBody168_219 : StackLang.HolProg 64 :=
.seq RemovedBody168_165 RemovedBody168_218

def RemovedBody168_220 : StackLang.HolProg 64 :=
.seq RemovedBody168_162 RemovedBody168_219

def RemovedBody168_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody168_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody168_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody168_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody168_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody168_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody168_228 : StackLang.HolProg 64 :=
.seq RemovedBody168_226 RemovedBody168_227

def RemovedBody168_229 : StackLang.HolProg 64 :=
.seq RemovedBody168_225 RemovedBody168_228

def RemovedBody168_230 : StackLang.HolProg 64 :=
.seq RemovedBody168_224 RemovedBody168_229

def RemovedBody168_231 : StackLang.HolProg 64 :=
.seq RemovedBody168_223 RemovedBody168_230

def RemovedBody168_232 : StackLang.HolProg 64 :=
.seq RemovedBody168_222 RemovedBody168_231

def RemovedBody168_233 : StackLang.HolProg 64 :=
.seq RemovedBody168_221 RemovedBody168_232

def RemovedBody168_234 : StackLang.HolProg 64 :=
.seq RemovedBody168_220 RemovedBody168_233

def RemovedBody168_235 : StackLang.HolProg 64 :=
.seq RemovedBody168_161 RemovedBody168_234

def RemovedBody168_236 : StackLang.HolProg 64 :=
.seq RemovedBody168_158 RemovedBody168_235

def RemovedBody168_237 : StackLang.HolProg 64 :=
.seq RemovedBody168_157 RemovedBody168_236

def RemovedBody168_238 : StackLang.HolProg 64 :=
.seq RemovedBody168_156 RemovedBody168_237

def RemovedBody168_239 : StackLang.HolProg 64 :=
.seq RemovedBody168_155 RemovedBody168_238

def RemovedBody168_240 : StackLang.HolProg 64 :=
.seq RemovedBody168_154 RemovedBody168_239

def RemovedBody168_241 : StackLang.HolProg 64 :=
.seq RemovedBody168_153 RemovedBody168_240

def RemovedBody168_242 : StackLang.HolProg 64 :=
.seq RemovedBody168_152 RemovedBody168_241

def RemovedBody168_243 : StackLang.HolProg 64 :=
.seq RemovedBody168_137 RemovedBody168_242

def RemovedBody168_244 : StackLang.HolProg 64 :=
.seq RemovedBody168_136 RemovedBody168_243

def RemovedBody168_245 : StackLang.HolProg 64 :=
.seq RemovedBody168_135 RemovedBody168_244

def RemovedBody168_246 : StackLang.HolProg 64 :=
.seq RemovedBody168_134 RemovedBody168_245

def RemovedBody168_247 : StackLang.HolProg 64 :=
.seq RemovedBody168_133 RemovedBody168_246

def RemovedBody168_248 : StackLang.HolProg 64 :=
.seq RemovedBody168_44 RemovedBody168_247

def RemovedBody168_249 : StackLang.HolProg 64 :=
.seq RemovedBody168_43 RemovedBody168_248

def RemovedBody168_250 : StackLang.HolProg 64 :=
.seq RemovedBody168_42 RemovedBody168_249

def RemovedBody168_251 : StackLang.HolProg 64 :=
.seq RemovedBody168_41 RemovedBody168_250

def RemovedBody168_252 : StackLang.HolProg 64 :=
.seq RemovedBody168_40 RemovedBody168_251

def RemovedBody168_253 : StackLang.HolProg 64 :=
.seq RemovedBody168_25 RemovedBody168_252

def RemovedBody168_254 : StackLang.HolProg 64 :=
.seq RemovedBody168_24 RemovedBody168_253

def RemovedBody168_255 : StackLang.HolProg 64 :=
.seq RemovedBody168_23 RemovedBody168_254

def RemovedBody168_256 : StackLang.HolProg 64 :=
.seq RemovedBody168_22 RemovedBody168_255

def RemovedBody168_257 : StackLang.HolProg 64 :=
.seq RemovedBody168_21 RemovedBody168_256

def RemovedBody168_258 : StackLang.HolProg 64 :=
.seq RemovedBody168_10 RemovedBody168_257

def RemovedBody168_259 : StackLang.HolProg 64 :=
.seq RemovedBody168_9 RemovedBody168_258

def RemovedBody168_260 : StackLang.HolProg 64 :=
.seq RemovedBody168_8 RemovedBody168_259

def RemovedBody168_261 : StackLang.HolProg 64 :=
.seq RemovedBody168_7 RemovedBody168_260

def RemovedBody168_262 : StackLang.HolProg 64 :=
.seq RemovedBody168_6 RemovedBody168_261

def Removed168 : Nat × StackLang.HolProg 64 := (168, RemovedBody168_262)
theorem Removed168_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc168 = Removed168 := by
  kernel_rfl
#print axioms Removed168_eq
end InitECandidate.Proofs.BackendStages
