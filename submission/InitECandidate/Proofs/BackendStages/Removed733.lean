import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc733
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody733_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody733_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody733_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody733_3 : StackLang.HolProg 64 :=
.seq RemovedBody733_1 RemovedBody733_2

def RemovedBody733_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody733_3 RemovedBody733_4

def RemovedBody733_6 : StackLang.HolProg 64 :=
.seq RemovedBody733_0 RemovedBody733_5

def RemovedBody733_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody733_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody733_9 : StackLang.HolProg 64 :=
.seq RemovedBody733_7 RemovedBody733_8

def RemovedBody733_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 14 0#64))

def RemovedBody733_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 14 8#64))

def RemovedBody733_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 14 16#64))

def RemovedBody733_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 14 24#64))

def RemovedBody733_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 14 32#64))

def RemovedBody733_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 14 40#64))

def RemovedBody733_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def RemovedBody733_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def RemovedBody733_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 16#64))

def RemovedBody733_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def RemovedBody733_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 32#64))

def RemovedBody733_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 40#64))

def RemovedBody733_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody733_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody733_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody733_36 : StackLang.HolProg 64 :=
.seq RemovedBody733_34 RemovedBody733_35

def RemovedBody733_37 : StackLang.HolProg 64 :=
.seq RemovedBody733_33 RemovedBody733_36

def RemovedBody733_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3263#64)

def RemovedBody733_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody733_41 : StackLang.HolProg 64 :=
.seq RemovedBody733_39 RemovedBody733_40

def RemovedBody733_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody733_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody733_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody733_45 : StackLang.HolProg 64 :=
.seq RemovedBody733_43 RemovedBody733_44

def RemovedBody733_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_47 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody733_45 RemovedBody733_46

def RemovedBody733_48 : StackLang.HolProg 64 :=
.seq RemovedBody733_42 RemovedBody733_47

def RemovedBody733_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody733_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody733_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 733 3

def RemovedBody733_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody733_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody733_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody733_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody733_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody733_58 : StackLang.HolProg 64 :=
.seq RemovedBody733_56 RemovedBody733_57

def RemovedBody733_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody733_60 : StackLang.HolProg 64 :=
.seq RemovedBody733_58 RemovedBody733_59

def RemovedBody733_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody733_62 : StackLang.HolProg 64 :=
.seq RemovedBody733_60 RemovedBody733_61

def RemovedBody733_63 : StackLang.HolProg 64 :=
.seq RemovedBody733_55 RemovedBody733_62

def RemovedBody733_64 : StackLang.HolProg 64 :=
.seq RemovedBody733_54 RemovedBody733_63

def RemovedBody733_65 : StackLang.HolProg 64 :=
.seq RemovedBody733_53 RemovedBody733_64

def RemovedBody733_66 : StackLang.HolProg 64 :=
.seq RemovedBody733_52 RemovedBody733_65

def RemovedBody733_67 : StackLang.HolProg 64 :=
.seq RemovedBody733_51 RemovedBody733_66

def RemovedBody733_68 : StackLang.HolProg 64 :=
.seq RemovedBody733_50 RemovedBody733_67

def RemovedBody733_69 : StackLang.HolProg 64 :=
.seq RemovedBody733_49 RemovedBody733_68

def RemovedBody733_70 : StackLang.HolProg 64 :=
.seq RemovedBody733_48 RemovedBody733_69

def RemovedBody733_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody733_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody733_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody733_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody733_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody733_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody733_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody733_81 : StackLang.HolProg 64 :=
.seq RemovedBody733_79 RemovedBody733_80

def RemovedBody733_82 : StackLang.HolProg 64 :=
.seq RemovedBody733_78 RemovedBody733_81

def RemovedBody733_83 : StackLang.HolProg 64 :=
.seq RemovedBody733_77 RemovedBody733_82

def RemovedBody733_84 : StackLang.HolProg 64 :=
.seq RemovedBody733_76 RemovedBody733_83

def RemovedBody733_85 : StackLang.HolProg 64 :=
.seq RemovedBody733_75 RemovedBody733_84

def RemovedBody733_86 : StackLang.HolProg 64 :=
.seq RemovedBody733_74 RemovedBody733_85

def RemovedBody733_87 : StackLang.HolProg 64 :=
.seq RemovedBody733_73 RemovedBody733_86

def RemovedBody733_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody733_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody733_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody733_91 : StackLang.HolProg 64 :=
.seq RemovedBody733_89 RemovedBody733_90

def RemovedBody733_92 : StackLang.HolProg 64 :=
.seq RemovedBody733_88 RemovedBody733_91

def RemovedBody733_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody733_94 : StackLang.HolProg 64 :=
.seq RemovedBody733_92 RemovedBody733_93

def RemovedBody733_95 : StackLang.HolProg 64 :=
.call (some (RemovedBody733_87, 0, 733, 2)) (Sum.inl 706) (some (RemovedBody733_94, 733, 3))

def RemovedBody733_96 : StackLang.HolProg 64 :=
.seq RemovedBody733_72 RemovedBody733_95

def RemovedBody733_97 : StackLang.HolProg 64 :=
.seq RemovedBody733_71 RemovedBody733_96

def RemovedBody733_98 : StackLang.HolProg 64 :=
.seq RemovedBody733_70 RemovedBody733_97

def RemovedBody733_99 : StackLang.HolProg 64 :=
.seq RemovedBody733_41 RemovedBody733_98

def RemovedBody733_100 : StackLang.HolProg 64 :=
.seq RemovedBody733_38 RemovedBody733_99

def RemovedBody733_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody733_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody733_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody733_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody733_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody733_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody733_109 : StackLang.HolProg 64 :=
.seq RemovedBody733_107 RemovedBody733_108

def RemovedBody733_110 : StackLang.HolProg 64 :=
.seq RemovedBody733_106 RemovedBody733_109

def RemovedBody733_111 : StackLang.HolProg 64 :=
.seq RemovedBody733_105 RemovedBody733_110

def RemovedBody733_112 : StackLang.HolProg 64 :=
.seq RemovedBody733_104 RemovedBody733_111

def RemovedBody733_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody733_112 RemovedBody733_113

def RemovedBody733_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody733_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody733_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 48#64))

def RemovedBody733_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 56#64))

def RemovedBody733_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 64#64))

def RemovedBody733_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 72#64))

def RemovedBody733_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 80#64))

def RemovedBody733_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 88#64))

def RemovedBody733_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 48#64))

def RemovedBody733_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 56#64))

def RemovedBody733_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 64#64))

def RemovedBody733_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 72#64))

def RemovedBody733_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 80#64))

def RemovedBody733_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 88#64))

def RemovedBody733_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody733_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody733_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 706

def RemovedBody733_145 : StackLang.HolProg 64 :=
.seq RemovedBody733_143 RemovedBody733_144

def RemovedBody733_146 : StackLang.HolProg 64 :=
.seq RemovedBody733_142 RemovedBody733_145

def RemovedBody733_147 : StackLang.HolProg 64 :=
.seq RemovedBody733_141 RemovedBody733_146

def RemovedBody733_148 : StackLang.HolProg 64 :=
.seq RemovedBody733_140 RemovedBody733_147

def RemovedBody733_149 : StackLang.HolProg 64 :=
.seq RemovedBody733_139 RemovedBody733_148

def RemovedBody733_150 : StackLang.HolProg 64 :=
.seq RemovedBody733_138 RemovedBody733_149

def RemovedBody733_151 : StackLang.HolProg 64 :=
.seq RemovedBody733_137 RemovedBody733_150

def RemovedBody733_152 : StackLang.HolProg 64 :=
.seq RemovedBody733_136 RemovedBody733_151

def RemovedBody733_153 : StackLang.HolProg 64 :=
.seq RemovedBody733_135 RemovedBody733_152

def RemovedBody733_154 : StackLang.HolProg 64 :=
.seq RemovedBody733_134 RemovedBody733_153

def RemovedBody733_155 : StackLang.HolProg 64 :=
.seq RemovedBody733_133 RemovedBody733_154

def RemovedBody733_156 : StackLang.HolProg 64 :=
.seq RemovedBody733_132 RemovedBody733_155

def RemovedBody733_157 : StackLang.HolProg 64 :=
.seq RemovedBody733_131 RemovedBody733_156

def RemovedBody733_158 : StackLang.HolProg 64 :=
.seq RemovedBody733_130 RemovedBody733_157

def RemovedBody733_159 : StackLang.HolProg 64 :=
.seq RemovedBody733_129 RemovedBody733_158

def RemovedBody733_160 : StackLang.HolProg 64 :=
.seq RemovedBody733_128 RemovedBody733_159

def RemovedBody733_161 : StackLang.HolProg 64 :=
.seq RemovedBody733_127 RemovedBody733_160

def RemovedBody733_162 : StackLang.HolProg 64 :=
.seq RemovedBody733_126 RemovedBody733_161

def RemovedBody733_163 : StackLang.HolProg 64 :=
.seq RemovedBody733_125 RemovedBody733_162

def RemovedBody733_164 : StackLang.HolProg 64 :=
.seq RemovedBody733_124 RemovedBody733_163

def RemovedBody733_165 : StackLang.HolProg 64 :=
.seq RemovedBody733_123 RemovedBody733_164

def RemovedBody733_166 : StackLang.HolProg 64 :=
.seq RemovedBody733_122 RemovedBody733_165

def RemovedBody733_167 : StackLang.HolProg 64 :=
.seq RemovedBody733_121 RemovedBody733_166

def RemovedBody733_168 : StackLang.HolProg 64 :=
.seq RemovedBody733_120 RemovedBody733_167

def RemovedBody733_169 : StackLang.HolProg 64 :=
.seq RemovedBody733_119 RemovedBody733_168

def RemovedBody733_170 : StackLang.HolProg 64 :=
.seq RemovedBody733_118 RemovedBody733_169

def RemovedBody733_171 : StackLang.HolProg 64 :=
.seq RemovedBody733_117 RemovedBody733_170

def RemovedBody733_172 : StackLang.HolProg 64 :=
.seq RemovedBody733_116 RemovedBody733_171

def RemovedBody733_173 : StackLang.HolProg 64 :=
.seq RemovedBody733_115 RemovedBody733_172

def RemovedBody733_174 : StackLang.HolProg 64 :=
.seq RemovedBody733_114 RemovedBody733_173

def RemovedBody733_175 : StackLang.HolProg 64 :=
.seq RemovedBody733_103 RemovedBody733_174

def RemovedBody733_176 : StackLang.HolProg 64 :=
.seq RemovedBody733_102 RemovedBody733_175

def RemovedBody733_177 : StackLang.HolProg 64 :=
.seq RemovedBody733_101 RemovedBody733_176

def RemovedBody733_178 : StackLang.HolProg 64 :=
.seq RemovedBody733_100 RemovedBody733_177

def RemovedBody733_179 : StackLang.HolProg 64 :=
.seq RemovedBody733_37 RemovedBody733_178

def RemovedBody733_180 : StackLang.HolProg 64 :=
.seq RemovedBody733_32 RemovedBody733_179

def RemovedBody733_181 : StackLang.HolProg 64 :=
.seq RemovedBody733_31 RemovedBody733_180

def RemovedBody733_182 : StackLang.HolProg 64 :=
.seq RemovedBody733_30 RemovedBody733_181

def RemovedBody733_183 : StackLang.HolProg 64 :=
.seq RemovedBody733_29 RemovedBody733_182

def RemovedBody733_184 : StackLang.HolProg 64 :=
.seq RemovedBody733_28 RemovedBody733_183

def RemovedBody733_185 : StackLang.HolProg 64 :=
.seq RemovedBody733_27 RemovedBody733_184

def RemovedBody733_186 : StackLang.HolProg 64 :=
.seq RemovedBody733_26 RemovedBody733_185

def RemovedBody733_187 : StackLang.HolProg 64 :=
.seq RemovedBody733_25 RemovedBody733_186

def RemovedBody733_188 : StackLang.HolProg 64 :=
.seq RemovedBody733_24 RemovedBody733_187

def RemovedBody733_189 : StackLang.HolProg 64 :=
.seq RemovedBody733_23 RemovedBody733_188

def RemovedBody733_190 : StackLang.HolProg 64 :=
.seq RemovedBody733_22 RemovedBody733_189

def RemovedBody733_191 : StackLang.HolProg 64 :=
.seq RemovedBody733_21 RemovedBody733_190

def RemovedBody733_192 : StackLang.HolProg 64 :=
.seq RemovedBody733_20 RemovedBody733_191

def RemovedBody733_193 : StackLang.HolProg 64 :=
.seq RemovedBody733_19 RemovedBody733_192

def RemovedBody733_194 : StackLang.HolProg 64 :=
.seq RemovedBody733_18 RemovedBody733_193

def RemovedBody733_195 : StackLang.HolProg 64 :=
.seq RemovedBody733_17 RemovedBody733_194

def RemovedBody733_196 : StackLang.HolProg 64 :=
.seq RemovedBody733_16 RemovedBody733_195

def RemovedBody733_197 : StackLang.HolProg 64 :=
.seq RemovedBody733_15 RemovedBody733_196

def RemovedBody733_198 : StackLang.HolProg 64 :=
.seq RemovedBody733_14 RemovedBody733_197

def RemovedBody733_199 : StackLang.HolProg 64 :=
.seq RemovedBody733_13 RemovedBody733_198

def RemovedBody733_200 : StackLang.HolProg 64 :=
.seq RemovedBody733_12 RemovedBody733_199

def RemovedBody733_201 : StackLang.HolProg 64 :=
.seq RemovedBody733_11 RemovedBody733_200

def RemovedBody733_202 : StackLang.HolProg 64 :=
.seq RemovedBody733_10 RemovedBody733_201

def RemovedBody733_203 : StackLang.HolProg 64 :=
.seq RemovedBody733_9 RemovedBody733_202

def RemovedBody733_204 : StackLang.HolProg 64 :=
.seq RemovedBody733_6 RemovedBody733_203

def Removed733 : Nat × StackLang.HolProg 64 := (733, RemovedBody733_204)
theorem Removed733_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc733 = Removed733 := by
  kernel_rfl
#print axioms Removed733_eq
end InitECandidate.Proofs.BackendStages
