import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc146
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody146_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody146_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody146_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody146_3 : StackLang.HolProg 64 :=
.seq RemovedBody146_1 RemovedBody146_2

def RemovedBody146_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody146_3 RemovedBody146_4

def RemovedBody146_6 : StackLang.HolProg 64 :=
.seq RemovedBody146_0 RemovedBody146_5

def RemovedBody146_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody146_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody146_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody146_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_12 : StackLang.HolProg 64 :=
.seq RemovedBody146_10 RemovedBody146_11

def RemovedBody146_13 : StackLang.HolProg 64 :=
.seq RemovedBody146_9 RemovedBody146_12

def RemovedBody146_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody146_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_17 : StackLang.HolProg 64 :=
.seq RemovedBody146_15 RemovedBody146_16

def RemovedBody146_18 : StackLang.HolProg 64 :=
.seq RemovedBody146_14 RemovedBody146_17

def RemovedBody146_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody146_13 RemovedBody146_18

def RemovedBody146_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody146_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody146_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody146_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody146_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_27 : StackLang.HolProg 64 :=
.seq RemovedBody146_25 RemovedBody146_26

def RemovedBody146_28 : StackLang.HolProg 64 :=
.seq RemovedBody146_24 RemovedBody146_27

def RemovedBody146_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody146_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_32 : StackLang.HolProg 64 :=
.seq RemovedBody146_30 RemovedBody146_31

def RemovedBody146_33 : StackLang.HolProg 64 :=
.seq RemovedBody146_29 RemovedBody146_32

def RemovedBody146_34 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody146_28 RemovedBody146_33

def RemovedBody146_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody146_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody146_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody146_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody146_42 : StackLang.HolProg 64 :=
.seq RemovedBody146_40 RemovedBody146_41

def RemovedBody146_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 112#64)

def RemovedBody146_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody146_46 : StackLang.HolProg 64 :=
.seq RemovedBody146_44 RemovedBody146_45

def RemovedBody146_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody146_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody146_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody146_50 : StackLang.HolProg 64 :=
.seq RemovedBody146_48 RemovedBody146_49

def RemovedBody146_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_52 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody146_50 RemovedBody146_51

def RemovedBody146_53 : StackLang.HolProg 64 :=
.seq RemovedBody146_47 RemovedBody146_52

def RemovedBody146_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody146_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody146_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 3

def RemovedBody146_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody146_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody146_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody146_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody146_63 : StackLang.HolProg 64 :=
.seq RemovedBody146_61 RemovedBody146_62

def RemovedBody146_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody146_65 : StackLang.HolProg 64 :=
.seq RemovedBody146_63 RemovedBody146_64

def RemovedBody146_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody146_67 : StackLang.HolProg 64 :=
.seq RemovedBody146_65 RemovedBody146_66

def RemovedBody146_68 : StackLang.HolProg 64 :=
.seq RemovedBody146_60 RemovedBody146_67

def RemovedBody146_69 : StackLang.HolProg 64 :=
.seq RemovedBody146_59 RemovedBody146_68

def RemovedBody146_70 : StackLang.HolProg 64 :=
.seq RemovedBody146_58 RemovedBody146_69

def RemovedBody146_71 : StackLang.HolProg 64 :=
.seq RemovedBody146_57 RemovedBody146_70

def RemovedBody146_72 : StackLang.HolProg 64 :=
.seq RemovedBody146_56 RemovedBody146_71

def RemovedBody146_73 : StackLang.HolProg 64 :=
.seq RemovedBody146_55 RemovedBody146_72

def RemovedBody146_74 : StackLang.HolProg 64 :=
.seq RemovedBody146_54 RemovedBody146_73

def RemovedBody146_75 : StackLang.HolProg 64 :=
.seq RemovedBody146_53 RemovedBody146_74

def RemovedBody146_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody146_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody146_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody146_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody146_84 : StackLang.HolProg 64 :=
.seq RemovedBody146_82 RemovedBody146_83

def RemovedBody146_85 : StackLang.HolProg 64 :=
.seq RemovedBody146_81 RemovedBody146_84

def RemovedBody146_86 : StackLang.HolProg 64 :=
.seq RemovedBody146_80 RemovedBody146_85

def RemovedBody146_87 : StackLang.HolProg 64 :=
.seq RemovedBody146_79 RemovedBody146_86

def RemovedBody146_88 : StackLang.HolProg 64 :=
.seq RemovedBody146_78 RemovedBody146_87

def RemovedBody146_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody146_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody146_91 : StackLang.HolProg 64 :=
.seq RemovedBody146_89 RemovedBody146_90

def RemovedBody146_92 : StackLang.HolProg 64 :=
.call (some (RemovedBody146_88, 0, 146, 2)) (Sum.inl 84) (some (RemovedBody146_91, 146, 3))

def RemovedBody146_93 : StackLang.HolProg 64 :=
.seq RemovedBody146_77 RemovedBody146_92

def RemovedBody146_94 : StackLang.HolProg 64 :=
.seq RemovedBody146_76 RemovedBody146_93

def RemovedBody146_95 : StackLang.HolProg 64 :=
.seq RemovedBody146_75 RemovedBody146_94

def RemovedBody146_96 : StackLang.HolProg 64 :=
.seq RemovedBody146_46 RemovedBody146_95

def RemovedBody146_97 : StackLang.HolProg 64 :=
.seq RemovedBody146_43 RemovedBody146_96

def RemovedBody146_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody146_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody146_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_103 : StackLang.HolProg 64 :=
.seq RemovedBody146_101 RemovedBody146_102

def RemovedBody146_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 113#64)

def RemovedBody146_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody146_107 : StackLang.HolProg 64 :=
.seq RemovedBody146_105 RemovedBody146_106

def RemovedBody146_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody146_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody146_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody146_111 : StackLang.HolProg 64 :=
.seq RemovedBody146_109 RemovedBody146_110

def RemovedBody146_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_113 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody146_111 RemovedBody146_112

def RemovedBody146_114 : StackLang.HolProg 64 :=
.seq RemovedBody146_108 RemovedBody146_113

def RemovedBody146_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody146_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody146_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 5

def RemovedBody146_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody146_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody146_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody146_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody146_124 : StackLang.HolProg 64 :=
.seq RemovedBody146_122 RemovedBody146_123

def RemovedBody146_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody146_126 : StackLang.HolProg 64 :=
.seq RemovedBody146_124 RemovedBody146_125

def RemovedBody146_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody146_128 : StackLang.HolProg 64 :=
.seq RemovedBody146_126 RemovedBody146_127

def RemovedBody146_129 : StackLang.HolProg 64 :=
.seq RemovedBody146_121 RemovedBody146_128

def RemovedBody146_130 : StackLang.HolProg 64 :=
.seq RemovedBody146_120 RemovedBody146_129

def RemovedBody146_131 : StackLang.HolProg 64 :=
.seq RemovedBody146_119 RemovedBody146_130

def RemovedBody146_132 : StackLang.HolProg 64 :=
.seq RemovedBody146_118 RemovedBody146_131

def RemovedBody146_133 : StackLang.HolProg 64 :=
.seq RemovedBody146_117 RemovedBody146_132

def RemovedBody146_134 : StackLang.HolProg 64 :=
.seq RemovedBody146_116 RemovedBody146_133

def RemovedBody146_135 : StackLang.HolProg 64 :=
.seq RemovedBody146_115 RemovedBody146_134

def RemovedBody146_136 : StackLang.HolProg 64 :=
.seq RemovedBody146_114 RemovedBody146_135

def RemovedBody146_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody146_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody146_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody146_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_145 : StackLang.HolProg 64 :=
.seq RemovedBody146_143 RemovedBody146_144

def RemovedBody146_146 : StackLang.HolProg 64 :=
.seq RemovedBody146_142 RemovedBody146_145

def RemovedBody146_147 : StackLang.HolProg 64 :=
.seq RemovedBody146_141 RemovedBody146_146

def RemovedBody146_148 : StackLang.HolProg 64 :=
.seq RemovedBody146_140 RemovedBody146_147

def RemovedBody146_149 : StackLang.HolProg 64 :=
.seq RemovedBody146_139 RemovedBody146_148

def RemovedBody146_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody146_152 : StackLang.HolProg 64 :=
.seq RemovedBody146_150 RemovedBody146_151

def RemovedBody146_153 : StackLang.HolProg 64 :=
.call (some (RemovedBody146_149, 0, 146, 4)) (Sum.inl 84) (some (RemovedBody146_152, 146, 5))

def RemovedBody146_154 : StackLang.HolProg 64 :=
.seq RemovedBody146_138 RemovedBody146_153

def RemovedBody146_155 : StackLang.HolProg 64 :=
.seq RemovedBody146_137 RemovedBody146_154

def RemovedBody146_156 : StackLang.HolProg 64 :=
.seq RemovedBody146_136 RemovedBody146_155

def RemovedBody146_157 : StackLang.HolProg 64 :=
.seq RemovedBody146_107 RemovedBody146_156

def RemovedBody146_158 : StackLang.HolProg 64 :=
.seq RemovedBody146_104 RemovedBody146_157

def RemovedBody146_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody146_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody146_164 : StackLang.HolProg 64 :=
.seq RemovedBody146_162 RemovedBody146_163

def RemovedBody146_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 114#64)

def RemovedBody146_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody146_168 : StackLang.HolProg 64 :=
.seq RemovedBody146_166 RemovedBody146_167

def RemovedBody146_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody146_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody146_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody146_172 : StackLang.HolProg 64 :=
.seq RemovedBody146_170 RemovedBody146_171

def RemovedBody146_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody146_172 RemovedBody146_173

def RemovedBody146_175 : StackLang.HolProg 64 :=
.seq RemovedBody146_169 RemovedBody146_174

def RemovedBody146_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody146_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody146_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 7

def RemovedBody146_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody146_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody146_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody146_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody146_185 : StackLang.HolProg 64 :=
.seq RemovedBody146_183 RemovedBody146_184

def RemovedBody146_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody146_187 : StackLang.HolProg 64 :=
.seq RemovedBody146_185 RemovedBody146_186

def RemovedBody146_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody146_189 : StackLang.HolProg 64 :=
.seq RemovedBody146_187 RemovedBody146_188

def RemovedBody146_190 : StackLang.HolProg 64 :=
.seq RemovedBody146_182 RemovedBody146_189

def RemovedBody146_191 : StackLang.HolProg 64 :=
.seq RemovedBody146_181 RemovedBody146_190

def RemovedBody146_192 : StackLang.HolProg 64 :=
.seq RemovedBody146_180 RemovedBody146_191

def RemovedBody146_193 : StackLang.HolProg 64 :=
.seq RemovedBody146_179 RemovedBody146_192

def RemovedBody146_194 : StackLang.HolProg 64 :=
.seq RemovedBody146_178 RemovedBody146_193

def RemovedBody146_195 : StackLang.HolProg 64 :=
.seq RemovedBody146_177 RemovedBody146_194

def RemovedBody146_196 : StackLang.HolProg 64 :=
.seq RemovedBody146_176 RemovedBody146_195

def RemovedBody146_197 : StackLang.HolProg 64 :=
.seq RemovedBody146_175 RemovedBody146_196

def RemovedBody146_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody146_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody146_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody146_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody146_206 : StackLang.HolProg 64 :=
.seq RemovedBody146_204 RemovedBody146_205

def RemovedBody146_207 : StackLang.HolProg 64 :=
.seq RemovedBody146_203 RemovedBody146_206

def RemovedBody146_208 : StackLang.HolProg 64 :=
.seq RemovedBody146_202 RemovedBody146_207

def RemovedBody146_209 : StackLang.HolProg 64 :=
.seq RemovedBody146_201 RemovedBody146_208

def RemovedBody146_210 : StackLang.HolProg 64 :=
.seq RemovedBody146_200 RemovedBody146_209

def RemovedBody146_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody146_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody146_213 : StackLang.HolProg 64 :=
.seq RemovedBody146_211 RemovedBody146_212

def RemovedBody146_214 : StackLang.HolProg 64 :=
.call (some (RemovedBody146_210, 0, 146, 6)) (Sum.inl 84) (some (RemovedBody146_213, 146, 7))

def RemovedBody146_215 : StackLang.HolProg 64 :=
.seq RemovedBody146_199 RemovedBody146_214

def RemovedBody146_216 : StackLang.HolProg 64 :=
.seq RemovedBody146_198 RemovedBody146_215

def RemovedBody146_217 : StackLang.HolProg 64 :=
.seq RemovedBody146_197 RemovedBody146_216

def RemovedBody146_218 : StackLang.HolProg 64 :=
.seq RemovedBody146_168 RemovedBody146_217

def RemovedBody146_219 : StackLang.HolProg 64 :=
.seq RemovedBody146_165 RemovedBody146_218

def RemovedBody146_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody146_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody146_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 115#64)

def RemovedBody146_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody146_227 : StackLang.HolProg 64 :=
.seq RemovedBody146_225 RemovedBody146_226

def RemovedBody146_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody146_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody146_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody146_231 : StackLang.HolProg 64 :=
.seq RemovedBody146_229 RemovedBody146_230

def RemovedBody146_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_233 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody146_231 RemovedBody146_232

def RemovedBody146_234 : StackLang.HolProg 64 :=
.seq RemovedBody146_228 RemovedBody146_233

def RemovedBody146_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody146_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody146_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 9

def RemovedBody146_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody146_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody146_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody146_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody146_244 : StackLang.HolProg 64 :=
.seq RemovedBody146_242 RemovedBody146_243

def RemovedBody146_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody146_246 : StackLang.HolProg 64 :=
.seq RemovedBody146_244 RemovedBody146_245

def RemovedBody146_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody146_248 : StackLang.HolProg 64 :=
.seq RemovedBody146_246 RemovedBody146_247

def RemovedBody146_249 : StackLang.HolProg 64 :=
.seq RemovedBody146_241 RemovedBody146_248

def RemovedBody146_250 : StackLang.HolProg 64 :=
.seq RemovedBody146_240 RemovedBody146_249

def RemovedBody146_251 : StackLang.HolProg 64 :=
.seq RemovedBody146_239 RemovedBody146_250

def RemovedBody146_252 : StackLang.HolProg 64 :=
.seq RemovedBody146_238 RemovedBody146_251

def RemovedBody146_253 : StackLang.HolProg 64 :=
.seq RemovedBody146_237 RemovedBody146_252

def RemovedBody146_254 : StackLang.HolProg 64 :=
.seq RemovedBody146_236 RemovedBody146_253

def RemovedBody146_255 : StackLang.HolProg 64 :=
.seq RemovedBody146_235 RemovedBody146_254

def RemovedBody146_256 : StackLang.HolProg 64 :=
.seq RemovedBody146_234 RemovedBody146_255

def RemovedBody146_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody146_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody146_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody146_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody146_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody146_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody146_268 : StackLang.HolProg 64 :=
.seq RemovedBody146_266 RemovedBody146_267

def RemovedBody146_269 : StackLang.HolProg 64 :=
.seq RemovedBody146_265 RemovedBody146_268

def RemovedBody146_270 : StackLang.HolProg 64 :=
.seq RemovedBody146_264 RemovedBody146_269

def RemovedBody146_271 : StackLang.HolProg 64 :=
.seq RemovedBody146_263 RemovedBody146_270

def RemovedBody146_272 : StackLang.HolProg 64 :=
.seq RemovedBody146_262 RemovedBody146_271

def RemovedBody146_273 : StackLang.HolProg 64 :=
.seq RemovedBody146_261 RemovedBody146_272

def RemovedBody146_274 : StackLang.HolProg 64 :=
.seq RemovedBody146_260 RemovedBody146_273

def RemovedBody146_275 : StackLang.HolProg 64 :=
.seq RemovedBody146_259 RemovedBody146_274

def RemovedBody146_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody146_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody146_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody146_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody146_280 : StackLang.HolProg 64 :=
.seq RemovedBody146_278 RemovedBody146_279

def RemovedBody146_281 : StackLang.HolProg 64 :=
.seq RemovedBody146_277 RemovedBody146_280

def RemovedBody146_282 : StackLang.HolProg 64 :=
.seq RemovedBody146_276 RemovedBody146_281

def RemovedBody146_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody146_284 : StackLang.HolProg 64 :=
.seq RemovedBody146_282 RemovedBody146_283

def RemovedBody146_285 : StackLang.HolProg 64 :=
.call (some (RemovedBody146_275, 0, 146, 8)) (Sum.inl 84) (some (RemovedBody146_284, 146, 9))

def RemovedBody146_286 : StackLang.HolProg 64 :=
.seq RemovedBody146_258 RemovedBody146_285

def RemovedBody146_287 : StackLang.HolProg 64 :=
.seq RemovedBody146_257 RemovedBody146_286

def RemovedBody146_288 : StackLang.HolProg 64 :=
.seq RemovedBody146_256 RemovedBody146_287

def RemovedBody146_289 : StackLang.HolProg 64 :=
.seq RemovedBody146_227 RemovedBody146_288

def RemovedBody146_290 : StackLang.HolProg 64 :=
.seq RemovedBody146_224 RemovedBody146_289

def RemovedBody146_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody146_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody146_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody146_295 : StackLang.HolProg 64 :=
.seq RemovedBody146_293 RemovedBody146_294

def RemovedBody146_296 : StackLang.HolProg 64 :=
.seq RemovedBody146_292 RemovedBody146_295

def RemovedBody146_297 : StackLang.HolProg 64 :=
.seq RemovedBody146_291 RemovedBody146_296

def RemovedBody146_298 : StackLang.HolProg 64 :=
.seq RemovedBody146_290 RemovedBody146_297

def RemovedBody146_299 : StackLang.HolProg 64 :=
.seq RemovedBody146_223 RemovedBody146_298

def RemovedBody146_300 : StackLang.HolProg 64 :=
.seq RemovedBody146_222 RemovedBody146_299

def RemovedBody146_301 : StackLang.HolProg 64 :=
.seq RemovedBody146_221 RemovedBody146_300

def RemovedBody146_302 : StackLang.HolProg 64 :=
.seq RemovedBody146_220 RemovedBody146_301

def RemovedBody146_303 : StackLang.HolProg 64 :=
.seq RemovedBody146_219 RemovedBody146_302

def RemovedBody146_304 : StackLang.HolProg 64 :=
.seq RemovedBody146_164 RemovedBody146_303

def RemovedBody146_305 : StackLang.HolProg 64 :=
.seq RemovedBody146_161 RemovedBody146_304

def RemovedBody146_306 : StackLang.HolProg 64 :=
.seq RemovedBody146_160 RemovedBody146_305

def RemovedBody146_307 : StackLang.HolProg 64 :=
.seq RemovedBody146_159 RemovedBody146_306

def RemovedBody146_308 : StackLang.HolProg 64 :=
.seq RemovedBody146_158 RemovedBody146_307

def RemovedBody146_309 : StackLang.HolProg 64 :=
.seq RemovedBody146_103 RemovedBody146_308

def RemovedBody146_310 : StackLang.HolProg 64 :=
.seq RemovedBody146_100 RemovedBody146_309

def RemovedBody146_311 : StackLang.HolProg 64 :=
.seq RemovedBody146_99 RemovedBody146_310

def RemovedBody146_312 : StackLang.HolProg 64 :=
.seq RemovedBody146_98 RemovedBody146_311

def RemovedBody146_313 : StackLang.HolProg 64 :=
.seq RemovedBody146_97 RemovedBody146_312

def RemovedBody146_314 : StackLang.HolProg 64 :=
.seq RemovedBody146_42 RemovedBody146_313

def RemovedBody146_315 : StackLang.HolProg 64 :=
.seq RemovedBody146_39 RemovedBody146_314

def RemovedBody146_316 : StackLang.HolProg 64 :=
.seq RemovedBody146_38 RemovedBody146_315

def RemovedBody146_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_318 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody146_316 RemovedBody146_317

def RemovedBody146_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody146_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody146_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody146_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def RemovedBody146_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody146_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody146_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody146_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody146_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody146_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody146_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody146_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody146_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody146_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def RemovedBody146_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody146_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_349 : StackLang.HolProg 64 :=
.seq RemovedBody146_347 RemovedBody146_348

def RemovedBody146_350 : StackLang.HolProg 64 :=
.seq RemovedBody146_346 RemovedBody146_349

def RemovedBody146_351 : StackLang.HolProg 64 :=
.seq RemovedBody146_345 RemovedBody146_350

def RemovedBody146_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_354 : StackLang.HolProg 64 :=
.seq RemovedBody146_352 RemovedBody146_353

def RemovedBody146_355 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) RemovedBody146_351 RemovedBody146_354

def RemovedBody146_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def RemovedBody146_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody146_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_363 : StackLang.HolProg 64 :=
.seq RemovedBody146_361 RemovedBody146_362

def RemovedBody146_364 : StackLang.HolProg 64 :=
.seq RemovedBody146_360 RemovedBody146_363

def RemovedBody146_365 : StackLang.HolProg 64 :=
.seq RemovedBody146_359 RemovedBody146_364

def RemovedBody146_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_368 : StackLang.HolProg 64 :=
.seq RemovedBody146_366 RemovedBody146_367

def RemovedBody146_369 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) RemovedBody146_365 RemovedBody146_368

def RemovedBody146_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 2#64)

def RemovedBody146_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody146_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_377 : StackLang.HolProg 64 :=
.seq RemovedBody146_375 RemovedBody146_376

def RemovedBody146_378 : StackLang.HolProg 64 :=
.seq RemovedBody146_374 RemovedBody146_377

def RemovedBody146_379 : StackLang.HolProg 64 :=
.seq RemovedBody146_373 RemovedBody146_378

def RemovedBody146_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_382 : StackLang.HolProg 64 :=
.seq RemovedBody146_380 RemovedBody146_381

def RemovedBody146_383 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) RemovedBody146_379 RemovedBody146_382

def RemovedBody146_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 3#64)

def RemovedBody146_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody146_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_391 : StackLang.HolProg 64 :=
.seq RemovedBody146_389 RemovedBody146_390

def RemovedBody146_392 : StackLang.HolProg 64 :=
.seq RemovedBody146_388 RemovedBody146_391

def RemovedBody146_393 : StackLang.HolProg 64 :=
.seq RemovedBody146_387 RemovedBody146_392

def RemovedBody146_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_396 : StackLang.HolProg 64 :=
.seq RemovedBody146_394 RemovedBody146_395

def RemovedBody146_397 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) RemovedBody146_393 RemovedBody146_396

def RemovedBody146_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody146_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody146_403 : StackLang.HolProg 64 :=
.seq RemovedBody146_401 RemovedBody146_402

def RemovedBody146_404 : StackLang.HolProg 64 :=
.seq RemovedBody146_400 RemovedBody146_403

def RemovedBody146_405 : StackLang.HolProg 64 :=
.seq RemovedBody146_399 RemovedBody146_404

def RemovedBody146_406 : StackLang.HolProg 64 :=
.seq RemovedBody146_398 RemovedBody146_405

def RemovedBody146_407 : StackLang.HolProg 64 :=
.seq RemovedBody146_397 RemovedBody146_406

def RemovedBody146_408 : StackLang.HolProg 64 :=
.seq RemovedBody146_386 RemovedBody146_407

def RemovedBody146_409 : StackLang.HolProg 64 :=
.seq RemovedBody146_385 RemovedBody146_408

def RemovedBody146_410 : StackLang.HolProg 64 :=
.seq RemovedBody146_384 RemovedBody146_409

def RemovedBody146_411 : StackLang.HolProg 64 :=
.seq RemovedBody146_383 RemovedBody146_410

def RemovedBody146_412 : StackLang.HolProg 64 :=
.seq RemovedBody146_372 RemovedBody146_411

def RemovedBody146_413 : StackLang.HolProg 64 :=
.seq RemovedBody146_371 RemovedBody146_412

def RemovedBody146_414 : StackLang.HolProg 64 :=
.seq RemovedBody146_370 RemovedBody146_413

def RemovedBody146_415 : StackLang.HolProg 64 :=
.seq RemovedBody146_369 RemovedBody146_414

def RemovedBody146_416 : StackLang.HolProg 64 :=
.seq RemovedBody146_358 RemovedBody146_415

def RemovedBody146_417 : StackLang.HolProg 64 :=
.seq RemovedBody146_357 RemovedBody146_416

def RemovedBody146_418 : StackLang.HolProg 64 :=
.seq RemovedBody146_356 RemovedBody146_417

def RemovedBody146_419 : StackLang.HolProg 64 :=
.seq RemovedBody146_355 RemovedBody146_418

def RemovedBody146_420 : StackLang.HolProg 64 :=
.seq RemovedBody146_344 RemovedBody146_419

def RemovedBody146_421 : StackLang.HolProg 64 :=
.seq RemovedBody146_343 RemovedBody146_420

def RemovedBody146_422 : StackLang.HolProg 64 :=
.seq RemovedBody146_342 RemovedBody146_421

def RemovedBody146_423 : StackLang.HolProg 64 :=
.seq RemovedBody146_341 RemovedBody146_422

def RemovedBody146_424 : StackLang.HolProg 64 :=
.seq RemovedBody146_340 RemovedBody146_423

def RemovedBody146_425 : StackLang.HolProg 64 :=
.seq RemovedBody146_339 RemovedBody146_424

def RemovedBody146_426 : StackLang.HolProg 64 :=
.seq RemovedBody146_338 RemovedBody146_425

def RemovedBody146_427 : StackLang.HolProg 64 :=
.seq RemovedBody146_337 RemovedBody146_426

def RemovedBody146_428 : StackLang.HolProg 64 :=
.seq RemovedBody146_336 RemovedBody146_427

def RemovedBody146_429 : StackLang.HolProg 64 :=
.seq RemovedBody146_335 RemovedBody146_428

def RemovedBody146_430 : StackLang.HolProg 64 :=
.seq RemovedBody146_334 RemovedBody146_429

def RemovedBody146_431 : StackLang.HolProg 64 :=
.seq RemovedBody146_333 RemovedBody146_430

def RemovedBody146_432 : StackLang.HolProg 64 :=
.seq RemovedBody146_332 RemovedBody146_431

def RemovedBody146_433 : StackLang.HolProg 64 :=
.seq RemovedBody146_331 RemovedBody146_432

def RemovedBody146_434 : StackLang.HolProg 64 :=
.seq RemovedBody146_330 RemovedBody146_433

def RemovedBody146_435 : StackLang.HolProg 64 :=
.seq RemovedBody146_329 RemovedBody146_434

def RemovedBody146_436 : StackLang.HolProg 64 :=
.seq RemovedBody146_328 RemovedBody146_435

def RemovedBody146_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody146_439 : StackLang.HolProg 64 :=
.seq RemovedBody146_437 RemovedBody146_438

def RemovedBody146_440 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody146_436 RemovedBody146_439

def RemovedBody146_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody146_443 : StackLang.HolProg 64 :=
.seq RemovedBody146_441 RemovedBody146_442

def RemovedBody146_444 : StackLang.HolProg 64 :=
.seq RemovedBody146_440 RemovedBody146_443

def RemovedBody146_445 : StackLang.HolProg 64 :=
.seq RemovedBody146_327 RemovedBody146_444

def RemovedBody146_446 : StackLang.HolProg 64 :=
.loop RemovedBody146_445

def RemovedBody146_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody146_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody146_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody146_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody146_451 : StackLang.HolProg 64 :=
.seq RemovedBody146_449 RemovedBody146_450

def RemovedBody146_452 : StackLang.HolProg 64 :=
.seq RemovedBody146_448 RemovedBody146_451

def RemovedBody146_453 : StackLang.HolProg 64 :=
.seq RemovedBody146_447 RemovedBody146_452

def RemovedBody146_454 : StackLang.HolProg 64 :=
.seq RemovedBody146_446 RemovedBody146_453

def RemovedBody146_455 : StackLang.HolProg 64 :=
.seq RemovedBody146_326 RemovedBody146_454

def RemovedBody146_456 : StackLang.HolProg 64 :=
.seq RemovedBody146_325 RemovedBody146_455

def RemovedBody146_457 : StackLang.HolProg 64 :=
.seq RemovedBody146_324 RemovedBody146_456

def RemovedBody146_458 : StackLang.HolProg 64 :=
.seq RemovedBody146_323 RemovedBody146_457

def RemovedBody146_459 : StackLang.HolProg 64 :=
.seq RemovedBody146_322 RemovedBody146_458

def RemovedBody146_460 : StackLang.HolProg 64 :=
.seq RemovedBody146_321 RemovedBody146_459

def RemovedBody146_461 : StackLang.HolProg 64 :=
.seq RemovedBody146_320 RemovedBody146_460

def RemovedBody146_462 : StackLang.HolProg 64 :=
.seq RemovedBody146_319 RemovedBody146_461

def RemovedBody146_463 : StackLang.HolProg 64 :=
.seq RemovedBody146_318 RemovedBody146_462

def RemovedBody146_464 : StackLang.HolProg 64 :=
.seq RemovedBody146_37 RemovedBody146_463

def RemovedBody146_465 : StackLang.HolProg 64 :=
.seq RemovedBody146_36 RemovedBody146_464

def RemovedBody146_466 : StackLang.HolProg 64 :=
.seq RemovedBody146_35 RemovedBody146_465

def RemovedBody146_467 : StackLang.HolProg 64 :=
.seq RemovedBody146_34 RemovedBody146_466

def RemovedBody146_468 : StackLang.HolProg 64 :=
.seq RemovedBody146_23 RemovedBody146_467

def RemovedBody146_469 : StackLang.HolProg 64 :=
.seq RemovedBody146_22 RemovedBody146_468

def RemovedBody146_470 : StackLang.HolProg 64 :=
.seq RemovedBody146_21 RemovedBody146_469

def RemovedBody146_471 : StackLang.HolProg 64 :=
.seq RemovedBody146_20 RemovedBody146_470

def RemovedBody146_472 : StackLang.HolProg 64 :=
.seq RemovedBody146_19 RemovedBody146_471

def RemovedBody146_473 : StackLang.HolProg 64 :=
.seq RemovedBody146_8 RemovedBody146_472

def RemovedBody146_474 : StackLang.HolProg 64 :=
.seq RemovedBody146_7 RemovedBody146_473

def RemovedBody146_475 : StackLang.HolProg 64 :=
.seq RemovedBody146_6 RemovedBody146_474

def Removed146 : Nat × StackLang.HolProg 64 := (146, RemovedBody146_475)
theorem Removed146_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc146 = Removed146 := by
  kernel_rfl
#print axioms Removed146_eq
end InitECandidate.Proofs.BackendStages
