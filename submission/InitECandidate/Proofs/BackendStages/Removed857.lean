import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc857
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody857_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody857_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody857_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody857_3 : StackLang.HolProg 64 :=
.seq RemovedBody857_1 RemovedBody857_2

def RemovedBody857_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody857_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody857_3 RemovedBody857_4

def RemovedBody857_6 : StackLang.HolProg 64 :=
.seq RemovedBody857_0 RemovedBody857_5

def RemovedBody857_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody857_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody857_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody857_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody857_11 : StackLang.HolProg 64 :=
.seq RemovedBody857_9 RemovedBody857_10

def RemovedBody857_12 : StackLang.HolProg 64 :=
.seq RemovedBody857_8 RemovedBody857_11

def RemovedBody857_13 : StackLang.HolProg 64 :=
.seq RemovedBody857_7 RemovedBody857_12

def RemovedBody857_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody857_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody857_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody857_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody857_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody857_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4360#64)

def RemovedBody857_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody857_21 : StackLang.HolProg 64 :=
.seq RemovedBody857_19 RemovedBody857_20

def RemovedBody857_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody857_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody857_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody857_25 : StackLang.HolProg 64 :=
.seq RemovedBody857_23 RemovedBody857_24

def RemovedBody857_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody857_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody857_25 RemovedBody857_26

def RemovedBody857_28 : StackLang.HolProg 64 :=
.seq RemovedBody857_22 RemovedBody857_27

def RemovedBody857_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody857_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody857_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 857 3

def RemovedBody857_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody857_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody857_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody857_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody857_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody857_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody857_38 : StackLang.HolProg 64 :=
.seq RemovedBody857_36 RemovedBody857_37

def RemovedBody857_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody857_40 : StackLang.HolProg 64 :=
.seq RemovedBody857_38 RemovedBody857_39

def RemovedBody857_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody857_42 : StackLang.HolProg 64 :=
.seq RemovedBody857_40 RemovedBody857_41

def RemovedBody857_43 : StackLang.HolProg 64 :=
.seq RemovedBody857_35 RemovedBody857_42

def RemovedBody857_44 : StackLang.HolProg 64 :=
.seq RemovedBody857_34 RemovedBody857_43

def RemovedBody857_45 : StackLang.HolProg 64 :=
.seq RemovedBody857_33 RemovedBody857_44

def RemovedBody857_46 : StackLang.HolProg 64 :=
.seq RemovedBody857_32 RemovedBody857_45

def RemovedBody857_47 : StackLang.HolProg 64 :=
.seq RemovedBody857_31 RemovedBody857_46

def RemovedBody857_48 : StackLang.HolProg 64 :=
.seq RemovedBody857_30 RemovedBody857_47

def RemovedBody857_49 : StackLang.HolProg 64 :=
.seq RemovedBody857_29 RemovedBody857_48

def RemovedBody857_50 : StackLang.HolProg 64 :=
.seq RemovedBody857_28 RemovedBody857_49

def RemovedBody857_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody857_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody857_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody857_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody857_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody857_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody857_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody857_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody857_59 : StackLang.HolProg 64 :=
.seq RemovedBody857_57 RemovedBody857_58

def RemovedBody857_60 : StackLang.HolProg 64 :=
.seq RemovedBody857_56 RemovedBody857_59

def RemovedBody857_61 : StackLang.HolProg 64 :=
.seq RemovedBody857_55 RemovedBody857_60

def RemovedBody857_62 : StackLang.HolProg 64 :=
.seq RemovedBody857_54 RemovedBody857_61

def RemovedBody857_63 : StackLang.HolProg 64 :=
.seq RemovedBody857_53 RemovedBody857_62

def RemovedBody857_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody857_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody857_66 : StackLang.HolProg 64 :=
.seq RemovedBody857_64 RemovedBody857_65

def RemovedBody857_67 : StackLang.HolProg 64 :=
.call (some (RemovedBody857_63, 0, 857, 2)) (Sum.inl 121) (some (RemovedBody857_66, 857, 3))

def RemovedBody857_68 : StackLang.HolProg 64 :=
.seq RemovedBody857_52 RemovedBody857_67

def RemovedBody857_69 : StackLang.HolProg 64 :=
.seq RemovedBody857_51 RemovedBody857_68

def RemovedBody857_70 : StackLang.HolProg 64 :=
.seq RemovedBody857_50 RemovedBody857_69

def RemovedBody857_71 : StackLang.HolProg 64 :=
.seq RemovedBody857_21 RemovedBody857_70

def RemovedBody857_72 : StackLang.HolProg 64 :=
.seq RemovedBody857_18 RemovedBody857_71

def RemovedBody857_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody857_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody857_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody857_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody857_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody857_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody857_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody857_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody857_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody857_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody857_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody857_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody857_85 : StackLang.HolProg 64 :=
.seq RemovedBody857_83 RemovedBody857_84

def RemovedBody857_86 : StackLang.HolProg 64 :=
.seq RemovedBody857_82 RemovedBody857_85

def RemovedBody857_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody857_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody857_89 : StackLang.HolProg 64 :=
.seq RemovedBody857_87 RemovedBody857_88

def RemovedBody857_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody857_86 RemovedBody857_89

def RemovedBody857_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody857_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody857_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody857_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody857_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody857_96 : StackLang.HolProg 64 :=
.seq RemovedBody857_94 RemovedBody857_95

def RemovedBody857_97 : StackLang.HolProg 64 :=
.seq RemovedBody857_93 RemovedBody857_96

def RemovedBody857_98 : StackLang.HolProg 64 :=
.seq RemovedBody857_92 RemovedBody857_97

def RemovedBody857_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody857_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def RemovedBody857_101 : StackLang.HolProg 64 :=
.seq RemovedBody857_99 RemovedBody857_100

def RemovedBody857_102 : StackLang.HolProg 64 :=
.seq RemovedBody857_98 RemovedBody857_101

def RemovedBody857_103 : StackLang.HolProg 64 :=
.seq RemovedBody857_91 RemovedBody857_102

def RemovedBody857_104 : StackLang.HolProg 64 :=
.seq RemovedBody857_90 RemovedBody857_103

def RemovedBody857_105 : StackLang.HolProg 64 :=
.seq RemovedBody857_81 RemovedBody857_104

def RemovedBody857_106 : StackLang.HolProg 64 :=
.seq RemovedBody857_80 RemovedBody857_105

def RemovedBody857_107 : StackLang.HolProg 64 :=
.seq RemovedBody857_79 RemovedBody857_106

def RemovedBody857_108 : StackLang.HolProg 64 :=
.seq RemovedBody857_78 RemovedBody857_107

def RemovedBody857_109 : StackLang.HolProg 64 :=
.seq RemovedBody857_77 RemovedBody857_108

def RemovedBody857_110 : StackLang.HolProg 64 :=
.seq RemovedBody857_76 RemovedBody857_109

def RemovedBody857_111 : StackLang.HolProg 64 :=
.seq RemovedBody857_75 RemovedBody857_110

def RemovedBody857_112 : StackLang.HolProg 64 :=
.seq RemovedBody857_74 RemovedBody857_111

def RemovedBody857_113 : StackLang.HolProg 64 :=
.seq RemovedBody857_73 RemovedBody857_112

def RemovedBody857_114 : StackLang.HolProg 64 :=
.seq RemovedBody857_72 RemovedBody857_113

def RemovedBody857_115 : StackLang.HolProg 64 :=
.seq RemovedBody857_17 RemovedBody857_114

def RemovedBody857_116 : StackLang.HolProg 64 :=
.seq RemovedBody857_16 RemovedBody857_115

def RemovedBody857_117 : StackLang.HolProg 64 :=
.seq RemovedBody857_15 RemovedBody857_116

def RemovedBody857_118 : StackLang.HolProg 64 :=
.seq RemovedBody857_14 RemovedBody857_117

def RemovedBody857_119 : StackLang.HolProg 64 :=
.seq RemovedBody857_13 RemovedBody857_118

def RemovedBody857_120 : StackLang.HolProg 64 :=
.seq RemovedBody857_6 RemovedBody857_119

def Removed857 : Nat × StackLang.HolProg 64 := (857, RemovedBody857_120)
theorem Removed857_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc857 = Removed857 := by
  kernel_rfl
#print axioms Removed857_eq
end InitECandidate.Proofs.BackendStages
