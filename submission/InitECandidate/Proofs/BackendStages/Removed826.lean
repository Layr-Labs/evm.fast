import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc826
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody826_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody826_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody826_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody826_3 : StackLang.HolProg 64 :=
.seq RemovedBody826_1 RemovedBody826_2

def RemovedBody826_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody826_3 RemovedBody826_4

def RemovedBody826_6 : StackLang.HolProg 64 :=
.seq RemovedBody826_0 RemovedBody826_5

def RemovedBody826_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody826_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody826_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody826_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody826_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody826_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def RemovedBody826_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 64#64)

def RemovedBody826_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody826_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def RemovedBody826_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody826_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody826_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_23 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody826_24 : StackLang.HolProg 64 :=
.seq RemovedBody826_22 RemovedBody826_23

def RemovedBody826_25 : StackLang.HolProg 64 :=
.seq RemovedBody826_21 RemovedBody826_24

def RemovedBody826_26 : StackLang.HolProg 64 :=
.seq RemovedBody826_20 RemovedBody826_25

def RemovedBody826_27 : StackLang.HolProg 64 :=
.seq RemovedBody826_19 RemovedBody826_26

def RemovedBody826_28 : StackLang.HolProg 64 :=
.seq RemovedBody826_18 RemovedBody826_27

def RemovedBody826_29 : StackLang.HolProg 64 :=
.seq RemovedBody826_17 RemovedBody826_28

def RemovedBody826_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody826_29 RemovedBody826_30

def RemovedBody826_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody826_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody826_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5500#64)

def RemovedBody826_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody826_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody826_37 : StackLang.HolProg 64 :=
.seq RemovedBody826_35 RemovedBody826_36

def RemovedBody826_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4112#64)

def RemovedBody826_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody826_41 : StackLang.HolProg 64 :=
.seq RemovedBody826_39 RemovedBody826_40

def RemovedBody826_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody826_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody826_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody826_45 : StackLang.HolProg 64 :=
.seq RemovedBody826_43 RemovedBody826_44

def RemovedBody826_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_47 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody826_45 RemovedBody826_46

def RemovedBody826_48 : StackLang.HolProg 64 :=
.seq RemovedBody826_42 RemovedBody826_47

def RemovedBody826_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody826_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody826_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 826 3

def RemovedBody826_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody826_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody826_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody826_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody826_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody826_58 : StackLang.HolProg 64 :=
.seq RemovedBody826_56 RemovedBody826_57

def RemovedBody826_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody826_60 : StackLang.HolProg 64 :=
.seq RemovedBody826_58 RemovedBody826_59

def RemovedBody826_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody826_62 : StackLang.HolProg 64 :=
.seq RemovedBody826_60 RemovedBody826_61

def RemovedBody826_63 : StackLang.HolProg 64 :=
.seq RemovedBody826_55 RemovedBody826_62

def RemovedBody826_64 : StackLang.HolProg 64 :=
.seq RemovedBody826_54 RemovedBody826_63

def RemovedBody826_65 : StackLang.HolProg 64 :=
.seq RemovedBody826_53 RemovedBody826_64

def RemovedBody826_66 : StackLang.HolProg 64 :=
.seq RemovedBody826_52 RemovedBody826_65

def RemovedBody826_67 : StackLang.HolProg 64 :=
.seq RemovedBody826_51 RemovedBody826_66

def RemovedBody826_68 : StackLang.HolProg 64 :=
.seq RemovedBody826_50 RemovedBody826_67

def RemovedBody826_69 : StackLang.HolProg 64 :=
.seq RemovedBody826_49 RemovedBody826_68

def RemovedBody826_70 : StackLang.HolProg 64 :=
.seq RemovedBody826_48 RemovedBody826_69

def RemovedBody826_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody826_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody826_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody826_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_78 : StackLang.HolProg 64 :=
.seq RemovedBody826_76 RemovedBody826_77

def RemovedBody826_79 : StackLang.HolProg 64 :=
.seq RemovedBody826_75 RemovedBody826_78

def RemovedBody826_80 : StackLang.HolProg 64 :=
.seq RemovedBody826_74 RemovedBody826_79

def RemovedBody826_81 : StackLang.HolProg 64 :=
.seq RemovedBody826_73 RemovedBody826_80

def RemovedBody826_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody826_84 : StackLang.HolProg 64 :=
.seq RemovedBody826_82 RemovedBody826_83

def RemovedBody826_85 : StackLang.HolProg 64 :=
.call (some (RemovedBody826_81, 0, 826, 2)) (Sum.inl 470) (some (RemovedBody826_84, 826, 3))

def RemovedBody826_86 : StackLang.HolProg 64 :=
.seq RemovedBody826_72 RemovedBody826_85

def RemovedBody826_87 : StackLang.HolProg 64 :=
.seq RemovedBody826_71 RemovedBody826_86

def RemovedBody826_88 : StackLang.HolProg 64 :=
.seq RemovedBody826_70 RemovedBody826_87

def RemovedBody826_89 : StackLang.HolProg 64 :=
.seq RemovedBody826_41 RemovedBody826_88

def RemovedBody826_90 : StackLang.HolProg 64 :=
.seq RemovedBody826_38 RemovedBody826_89

def RemovedBody826_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody826_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody826_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4113#64)

def RemovedBody826_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody826_97 : StackLang.HolProg 64 :=
.seq RemovedBody826_95 RemovedBody826_96

def RemovedBody826_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody826_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody826_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody826_101 : StackLang.HolProg 64 :=
.seq RemovedBody826_99 RemovedBody826_100

def RemovedBody826_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody826_101 RemovedBody826_102

def RemovedBody826_104 : StackLang.HolProg 64 :=
.seq RemovedBody826_98 RemovedBody826_103

def RemovedBody826_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody826_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody826_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 826 5

def RemovedBody826_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody826_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody826_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody826_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody826_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody826_114 : StackLang.HolProg 64 :=
.seq RemovedBody826_112 RemovedBody826_113

def RemovedBody826_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody826_116 : StackLang.HolProg 64 :=
.seq RemovedBody826_114 RemovedBody826_115

def RemovedBody826_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody826_118 : StackLang.HolProg 64 :=
.seq RemovedBody826_116 RemovedBody826_117

def RemovedBody826_119 : StackLang.HolProg 64 :=
.seq RemovedBody826_111 RemovedBody826_118

def RemovedBody826_120 : StackLang.HolProg 64 :=
.seq RemovedBody826_110 RemovedBody826_119

def RemovedBody826_121 : StackLang.HolProg 64 :=
.seq RemovedBody826_109 RemovedBody826_120

def RemovedBody826_122 : StackLang.HolProg 64 :=
.seq RemovedBody826_108 RemovedBody826_121

def RemovedBody826_123 : StackLang.HolProg 64 :=
.seq RemovedBody826_107 RemovedBody826_122

def RemovedBody826_124 : StackLang.HolProg 64 :=
.seq RemovedBody826_106 RemovedBody826_123

def RemovedBody826_125 : StackLang.HolProg 64 :=
.seq RemovedBody826_105 RemovedBody826_124

def RemovedBody826_126 : StackLang.HolProg 64 :=
.seq RemovedBody826_104 RemovedBody826_125

def RemovedBody826_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody826_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody826_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody826_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody826_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody826_135 : StackLang.HolProg 64 :=
.seq RemovedBody826_133 RemovedBody826_134

def RemovedBody826_136 : StackLang.HolProg 64 :=
.seq RemovedBody826_132 RemovedBody826_135

def RemovedBody826_137 : StackLang.HolProg 64 :=
.seq RemovedBody826_131 RemovedBody826_136

def RemovedBody826_138 : StackLang.HolProg 64 :=
.seq RemovedBody826_130 RemovedBody826_137

def RemovedBody826_139 : StackLang.HolProg 64 :=
.seq RemovedBody826_129 RemovedBody826_138

def RemovedBody826_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody826_141 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody826_142 : StackLang.HolProg 64 :=
.seq RemovedBody826_140 RemovedBody826_141

def RemovedBody826_143 : StackLang.HolProg 64 :=
.call (some (RemovedBody826_139, 0, 826, 4)) (Sum.inl 68) (some (RemovedBody826_142, 826, 5))

def RemovedBody826_144 : StackLang.HolProg 64 :=
.seq RemovedBody826_128 RemovedBody826_143

def RemovedBody826_145 : StackLang.HolProg 64 :=
.seq RemovedBody826_127 RemovedBody826_144

def RemovedBody826_146 : StackLang.HolProg 64 :=
.seq RemovedBody826_126 RemovedBody826_145

def RemovedBody826_147 : StackLang.HolProg 64 :=
.seq RemovedBody826_97 RemovedBody826_146

def RemovedBody826_148 : StackLang.HolProg 64 :=
.seq RemovedBody826_94 RemovedBody826_147

def RemovedBody826_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody826_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def RemovedBody826_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody826_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4114#64)

def RemovedBody826_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody826_156 : StackLang.HolProg 64 :=
.seq RemovedBody826_154 RemovedBody826_155

def RemovedBody826_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody826_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody826_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody826_160 : StackLang.HolProg 64 :=
.seq RemovedBody826_158 RemovedBody826_159

def RemovedBody826_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody826_160 RemovedBody826_161

def RemovedBody826_163 : StackLang.HolProg 64 :=
.seq RemovedBody826_157 RemovedBody826_162

def RemovedBody826_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody826_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody826_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 826 7

def RemovedBody826_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody826_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody826_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody826_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody826_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody826_173 : StackLang.HolProg 64 :=
.seq RemovedBody826_171 RemovedBody826_172

def RemovedBody826_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody826_175 : StackLang.HolProg 64 :=
.seq RemovedBody826_173 RemovedBody826_174

def RemovedBody826_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody826_177 : StackLang.HolProg 64 :=
.seq RemovedBody826_175 RemovedBody826_176

def RemovedBody826_178 : StackLang.HolProg 64 :=
.seq RemovedBody826_170 RemovedBody826_177

def RemovedBody826_179 : StackLang.HolProg 64 :=
.seq RemovedBody826_169 RemovedBody826_178

def RemovedBody826_180 : StackLang.HolProg 64 :=
.seq RemovedBody826_168 RemovedBody826_179

def RemovedBody826_181 : StackLang.HolProg 64 :=
.seq RemovedBody826_167 RemovedBody826_180

def RemovedBody826_182 : StackLang.HolProg 64 :=
.seq RemovedBody826_166 RemovedBody826_181

def RemovedBody826_183 : StackLang.HolProg 64 :=
.seq RemovedBody826_165 RemovedBody826_182

def RemovedBody826_184 : StackLang.HolProg 64 :=
.seq RemovedBody826_164 RemovedBody826_183

def RemovedBody826_185 : StackLang.HolProg 64 :=
.seq RemovedBody826_163 RemovedBody826_184

def RemovedBody826_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody826_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody826_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody826_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody826_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody826_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody826_195 : StackLang.HolProg 64 :=
.seq RemovedBody826_193 RemovedBody826_194

def RemovedBody826_196 : StackLang.HolProg 64 :=
.seq RemovedBody826_192 RemovedBody826_195

def RemovedBody826_197 : StackLang.HolProg 64 :=
.seq RemovedBody826_191 RemovedBody826_196

def RemovedBody826_198 : StackLang.HolProg 64 :=
.seq RemovedBody826_190 RemovedBody826_197

def RemovedBody826_199 : StackLang.HolProg 64 :=
.seq RemovedBody826_189 RemovedBody826_198

def RemovedBody826_200 : StackLang.HolProg 64 :=
.seq RemovedBody826_188 RemovedBody826_199

def RemovedBody826_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody826_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody826_203 : StackLang.HolProg 64 :=
.seq RemovedBody826_201 RemovedBody826_202

def RemovedBody826_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody826_205 : StackLang.HolProg 64 :=
.seq RemovedBody826_203 RemovedBody826_204

def RemovedBody826_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody826_200, 0, 826, 6)) (Sum.inl 815) (some (RemovedBody826_205, 826, 7))

def RemovedBody826_207 : StackLang.HolProg 64 :=
.seq RemovedBody826_187 RemovedBody826_206

def RemovedBody826_208 : StackLang.HolProg 64 :=
.seq RemovedBody826_186 RemovedBody826_207

def RemovedBody826_209 : StackLang.HolProg 64 :=
.seq RemovedBody826_185 RemovedBody826_208

def RemovedBody826_210 : StackLang.HolProg 64 :=
.seq RemovedBody826_156 RemovedBody826_209

def RemovedBody826_211 : StackLang.HolProg 64 :=
.seq RemovedBody826_153 RemovedBody826_210

def RemovedBody826_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody826_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody826_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody826_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def RemovedBody826_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody826_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody826_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_221 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody826_222 : StackLang.HolProg 64 :=
.seq RemovedBody826_220 RemovedBody826_221

def RemovedBody826_223 : StackLang.HolProg 64 :=
.seq RemovedBody826_219 RemovedBody826_222

def RemovedBody826_224 : StackLang.HolProg 64 :=
.seq RemovedBody826_218 RemovedBody826_223

def RemovedBody826_225 : StackLang.HolProg 64 :=
.seq RemovedBody826_217 RemovedBody826_224

def RemovedBody826_226 : StackLang.HolProg 64 :=
.seq RemovedBody826_216 RemovedBody826_225

def RemovedBody826_227 : StackLang.HolProg 64 :=
.seq RemovedBody826_215 RemovedBody826_226

def RemovedBody826_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_229 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody826_227 RemovedBody826_228

def RemovedBody826_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody826_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody826_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody826_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody826_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody826_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody826_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody826_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody826_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody826_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody826_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody826_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody826_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody826_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody826_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody826_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody826_249 : StackLang.HolProg 64 :=
.seq RemovedBody826_247 RemovedBody826_248

def RemovedBody826_250 : StackLang.HolProg 64 :=
.seq RemovedBody826_246 RemovedBody826_249

def RemovedBody826_251 : StackLang.HolProg 64 :=
.seq RemovedBody826_245 RemovedBody826_250

def RemovedBody826_252 : StackLang.HolProg 64 :=
.seq RemovedBody826_244 RemovedBody826_251

def RemovedBody826_253 : StackLang.HolProg 64 :=
.seq RemovedBody826_243 RemovedBody826_252

def RemovedBody826_254 : StackLang.HolProg 64 :=
.seq RemovedBody826_242 RemovedBody826_253

def RemovedBody826_255 : StackLang.HolProg 64 :=
.seq RemovedBody826_241 RemovedBody826_254

def RemovedBody826_256 : StackLang.HolProg 64 :=
.seq RemovedBody826_240 RemovedBody826_255

def RemovedBody826_257 : StackLang.HolProg 64 :=
.seq RemovedBody826_239 RemovedBody826_256

def RemovedBody826_258 : StackLang.HolProg 64 :=
.seq RemovedBody826_238 RemovedBody826_257

def RemovedBody826_259 : StackLang.HolProg 64 :=
.seq RemovedBody826_237 RemovedBody826_258

def RemovedBody826_260 : StackLang.HolProg 64 :=
.seq RemovedBody826_236 RemovedBody826_259

def RemovedBody826_261 : StackLang.HolProg 64 :=
.seq RemovedBody826_235 RemovedBody826_260

def RemovedBody826_262 : StackLang.HolProg 64 :=
.seq RemovedBody826_234 RemovedBody826_261

def RemovedBody826_263 : StackLang.HolProg 64 :=
.seq RemovedBody826_233 RemovedBody826_262

def RemovedBody826_264 : StackLang.HolProg 64 :=
.seq RemovedBody826_232 RemovedBody826_263

def RemovedBody826_265 : StackLang.HolProg 64 :=
.seq RemovedBody826_231 RemovedBody826_264

def RemovedBody826_266 : StackLang.HolProg 64 :=
.seq RemovedBody826_230 RemovedBody826_265

def RemovedBody826_267 : StackLang.HolProg 64 :=
.seq RemovedBody826_229 RemovedBody826_266

def RemovedBody826_268 : StackLang.HolProg 64 :=
.seq RemovedBody826_214 RemovedBody826_267

def RemovedBody826_269 : StackLang.HolProg 64 :=
.seq RemovedBody826_213 RemovedBody826_268

def RemovedBody826_270 : StackLang.HolProg 64 :=
.seq RemovedBody826_212 RemovedBody826_269

def RemovedBody826_271 : StackLang.HolProg 64 :=
.seq RemovedBody826_211 RemovedBody826_270

def RemovedBody826_272 : StackLang.HolProg 64 :=
.seq RemovedBody826_152 RemovedBody826_271

def RemovedBody826_273 : StackLang.HolProg 64 :=
.seq RemovedBody826_151 RemovedBody826_272

def RemovedBody826_274 : StackLang.HolProg 64 :=
.seq RemovedBody826_150 RemovedBody826_273

def RemovedBody826_275 : StackLang.HolProg 64 :=
.seq RemovedBody826_149 RemovedBody826_274

def RemovedBody826_276 : StackLang.HolProg 64 :=
.seq RemovedBody826_148 RemovedBody826_275

def RemovedBody826_277 : StackLang.HolProg 64 :=
.seq RemovedBody826_93 RemovedBody826_276

def RemovedBody826_278 : StackLang.HolProg 64 :=
.seq RemovedBody826_92 RemovedBody826_277

def RemovedBody826_279 : StackLang.HolProg 64 :=
.seq RemovedBody826_91 RemovedBody826_278

def RemovedBody826_280 : StackLang.HolProg 64 :=
.seq RemovedBody826_90 RemovedBody826_279

def RemovedBody826_281 : StackLang.HolProg 64 :=
.seq RemovedBody826_37 RemovedBody826_280

def RemovedBody826_282 : StackLang.HolProg 64 :=
.seq RemovedBody826_34 RemovedBody826_281

def RemovedBody826_283 : StackLang.HolProg 64 :=
.seq RemovedBody826_33 RemovedBody826_282

def RemovedBody826_284 : StackLang.HolProg 64 :=
.seq RemovedBody826_32 RemovedBody826_283

def RemovedBody826_285 : StackLang.HolProg 64 :=
.seq RemovedBody826_31 RemovedBody826_284

def RemovedBody826_286 : StackLang.HolProg 64 :=
.seq RemovedBody826_16 RemovedBody826_285

def RemovedBody826_287 : StackLang.HolProg 64 :=
.seq RemovedBody826_15 RemovedBody826_286

def RemovedBody826_288 : StackLang.HolProg 64 :=
.seq RemovedBody826_14 RemovedBody826_287

def RemovedBody826_289 : StackLang.HolProg 64 :=
.seq RemovedBody826_13 RemovedBody826_288

def RemovedBody826_290 : StackLang.HolProg 64 :=
.seq RemovedBody826_12 RemovedBody826_289

def RemovedBody826_291 : StackLang.HolProg 64 :=
.seq RemovedBody826_11 RemovedBody826_290

def RemovedBody826_292 : StackLang.HolProg 64 :=
.seq RemovedBody826_10 RemovedBody826_291

def RemovedBody826_293 : StackLang.HolProg 64 :=
.seq RemovedBody826_9 RemovedBody826_292

def RemovedBody826_294 : StackLang.HolProg 64 :=
.seq RemovedBody826_8 RemovedBody826_293

def RemovedBody826_295 : StackLang.HolProg 64 :=
.seq RemovedBody826_7 RemovedBody826_294

def RemovedBody826_296 : StackLang.HolProg 64 :=
.seq RemovedBody826_6 RemovedBody826_295

def Removed826 : Nat × StackLang.HolProg 64 := (826, RemovedBody826_296)
theorem Removed826_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc826 = Removed826 := by
  kernel_rfl
#print axioms Removed826_eq
end InitECandidate.Proofs.BackendStages
