import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc335
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody335_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody335_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody335_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody335_3 : StackLang.HolProg 64 :=
.seq RemovedBody335_1 RemovedBody335_2

def RemovedBody335_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody335_3 RemovedBody335_4

def RemovedBody335_6 : StackLang.HolProg 64 :=
.seq RemovedBody335_0 RemovedBody335_5

def RemovedBody335_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody335_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody335_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody335_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody335_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody335_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody335_16 : StackLang.HolProg 64 :=
.seq RemovedBody335_14 RemovedBody335_15

def RemovedBody335_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 969#64)

def RemovedBody335_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody335_20 : StackLang.HolProg 64 :=
.seq RemovedBody335_18 RemovedBody335_19

def RemovedBody335_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody335_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody335_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody335_24 : StackLang.HolProg 64 :=
.seq RemovedBody335_22 RemovedBody335_23

def RemovedBody335_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody335_24 RemovedBody335_25

def RemovedBody335_27 : StackLang.HolProg 64 :=
.seq RemovedBody335_21 RemovedBody335_26

def RemovedBody335_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody335_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody335_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 335 3

def RemovedBody335_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody335_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody335_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody335_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody335_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody335_37 : StackLang.HolProg 64 :=
.seq RemovedBody335_35 RemovedBody335_36

def RemovedBody335_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody335_39 : StackLang.HolProg 64 :=
.seq RemovedBody335_37 RemovedBody335_38

def RemovedBody335_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody335_41 : StackLang.HolProg 64 :=
.seq RemovedBody335_39 RemovedBody335_40

def RemovedBody335_42 : StackLang.HolProg 64 :=
.seq RemovedBody335_34 RemovedBody335_41

def RemovedBody335_43 : StackLang.HolProg 64 :=
.seq RemovedBody335_33 RemovedBody335_42

def RemovedBody335_44 : StackLang.HolProg 64 :=
.seq RemovedBody335_32 RemovedBody335_43

def RemovedBody335_45 : StackLang.HolProg 64 :=
.seq RemovedBody335_31 RemovedBody335_44

def RemovedBody335_46 : StackLang.HolProg 64 :=
.seq RemovedBody335_30 RemovedBody335_45

def RemovedBody335_47 : StackLang.HolProg 64 :=
.seq RemovedBody335_29 RemovedBody335_46

def RemovedBody335_48 : StackLang.HolProg 64 :=
.seq RemovedBody335_28 RemovedBody335_47

def RemovedBody335_49 : StackLang.HolProg 64 :=
.seq RemovedBody335_27 RemovedBody335_48

def RemovedBody335_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody335_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody335_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody335_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody335_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody335_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody335_59 : StackLang.HolProg 64 :=
.seq RemovedBody335_57 RemovedBody335_58

def RemovedBody335_60 : StackLang.HolProg 64 :=
.seq RemovedBody335_56 RemovedBody335_59

def RemovedBody335_61 : StackLang.HolProg 64 :=
.seq RemovedBody335_55 RemovedBody335_60

def RemovedBody335_62 : StackLang.HolProg 64 :=
.seq RemovedBody335_54 RemovedBody335_61

def RemovedBody335_63 : StackLang.HolProg 64 :=
.seq RemovedBody335_53 RemovedBody335_62

def RemovedBody335_64 : StackLang.HolProg 64 :=
.seq RemovedBody335_52 RemovedBody335_63

def RemovedBody335_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody335_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody335_67 : StackLang.HolProg 64 :=
.seq RemovedBody335_65 RemovedBody335_66

def RemovedBody335_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody335_69 : StackLang.HolProg 64 :=
.seq RemovedBody335_67 RemovedBody335_68

def RemovedBody335_70 : StackLang.HolProg 64 :=
.call (some (RemovedBody335_64, 0, 335, 2)) (Sum.inl 161) (some (RemovedBody335_69, 335, 3))

def RemovedBody335_71 : StackLang.HolProg 64 :=
.seq RemovedBody335_51 RemovedBody335_70

def RemovedBody335_72 : StackLang.HolProg 64 :=
.seq RemovedBody335_50 RemovedBody335_71

def RemovedBody335_73 : StackLang.HolProg 64 :=
.seq RemovedBody335_49 RemovedBody335_72

def RemovedBody335_74 : StackLang.HolProg 64 :=
.seq RemovedBody335_20 RemovedBody335_73

def RemovedBody335_75 : StackLang.HolProg 64 :=
.seq RemovedBody335_17 RemovedBody335_74

def RemovedBody335_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody335_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def RemovedBody335_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody335_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody335_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody335_86 : StackLang.HolProg 64 :=
.seq RemovedBody335_84 RemovedBody335_85

def RemovedBody335_87 : StackLang.HolProg 64 :=
.seq RemovedBody335_83 RemovedBody335_86

def RemovedBody335_88 : StackLang.HolProg 64 :=
.seq RemovedBody335_82 RemovedBody335_87

def RemovedBody335_89 : StackLang.HolProg 64 :=
.seq RemovedBody335_81 RemovedBody335_88

def RemovedBody335_90 : StackLang.HolProg 64 :=
.seq RemovedBody335_80 RemovedBody335_89

def RemovedBody335_91 : StackLang.HolProg 64 :=
.seq RemovedBody335_79 RemovedBody335_90

def RemovedBody335_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody335_91 RemovedBody335_92

def RemovedBody335_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody335_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody335_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody335_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 11#64)

def RemovedBody335_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody335_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody335_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody335_110 : StackLang.HolProg 64 :=
.seq RemovedBody335_108 RemovedBody335_109

def RemovedBody335_111 : StackLang.HolProg 64 :=
.seq RemovedBody335_107 RemovedBody335_110

def RemovedBody335_112 : StackLang.HolProg 64 :=
.seq RemovedBody335_106 RemovedBody335_111

def RemovedBody335_113 : StackLang.HolProg 64 :=
.seq RemovedBody335_105 RemovedBody335_112

def RemovedBody335_114 : StackLang.HolProg 64 :=
.seq RemovedBody335_104 RemovedBody335_113

def RemovedBody335_115 : StackLang.HolProg 64 :=
.seq RemovedBody335_103 RemovedBody335_114

def RemovedBody335_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody335_115 RemovedBody335_116

def RemovedBody335_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_121 : StackLang.HolProg 64 :=
.seq RemovedBody335_119 RemovedBody335_120

def RemovedBody335_122 : StackLang.HolProg 64 :=
.seq RemovedBody335_118 RemovedBody335_121

def RemovedBody335_123 : StackLang.HolProg 64 :=
.seq RemovedBody335_117 RemovedBody335_122

def RemovedBody335_124 : StackLang.HolProg 64 :=
.seq RemovedBody335_102 RemovedBody335_123

def RemovedBody335_125 : StackLang.HolProg 64 :=
.seq RemovedBody335_101 RemovedBody335_124

def RemovedBody335_126 : StackLang.HolProg 64 :=
.seq RemovedBody335_100 RemovedBody335_125

def RemovedBody335_127 : StackLang.HolProg 64 :=
.seq RemovedBody335_99 RemovedBody335_126

def RemovedBody335_128 : StackLang.HolProg 64 :=
.seq RemovedBody335_98 RemovedBody335_127

def RemovedBody335_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_131 : StackLang.HolProg 64 :=
.seq RemovedBody335_129 RemovedBody335_130

def RemovedBody335_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody335_128 RemovedBody335_131

def RemovedBody335_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody335_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 12#64)

def RemovedBody335_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody335_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody335_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody335_145 : StackLang.HolProg 64 :=
.seq RemovedBody335_143 RemovedBody335_144

def RemovedBody335_146 : StackLang.HolProg 64 :=
.seq RemovedBody335_142 RemovedBody335_145

def RemovedBody335_147 : StackLang.HolProg 64 :=
.seq RemovedBody335_141 RemovedBody335_146

def RemovedBody335_148 : StackLang.HolProg 64 :=
.seq RemovedBody335_140 RemovedBody335_147

def RemovedBody335_149 : StackLang.HolProg 64 :=
.seq RemovedBody335_139 RemovedBody335_148

def RemovedBody335_150 : StackLang.HolProg 64 :=
.seq RemovedBody335_138 RemovedBody335_149

def RemovedBody335_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody335_150 RemovedBody335_151

def RemovedBody335_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_156 : StackLang.HolProg 64 :=
.seq RemovedBody335_154 RemovedBody335_155

def RemovedBody335_157 : StackLang.HolProg 64 :=
.seq RemovedBody335_153 RemovedBody335_156

def RemovedBody335_158 : StackLang.HolProg 64 :=
.seq RemovedBody335_152 RemovedBody335_157

def RemovedBody335_159 : StackLang.HolProg 64 :=
.seq RemovedBody335_137 RemovedBody335_158

def RemovedBody335_160 : StackLang.HolProg 64 :=
.seq RemovedBody335_136 RemovedBody335_159

def RemovedBody335_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody335_163 : StackLang.HolProg 64 :=
.seq RemovedBody335_161 RemovedBody335_162

def RemovedBody335_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody335_160 RemovedBody335_163

def RemovedBody335_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody335_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody335_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody335_168 : StackLang.HolProg 64 :=
.seq RemovedBody335_166 RemovedBody335_167

def RemovedBody335_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody335_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody335_171 : StackLang.HolProg 64 :=
.seq RemovedBody335_169 RemovedBody335_170

def RemovedBody335_172 : StackLang.HolProg 64 :=
.seq RemovedBody335_168 RemovedBody335_171

def RemovedBody335_173 : StackLang.HolProg 64 :=
.seq RemovedBody335_165 RemovedBody335_172

def RemovedBody335_174 : StackLang.HolProg 64 :=
.seq RemovedBody335_164 RemovedBody335_173

def RemovedBody335_175 : StackLang.HolProg 64 :=
.seq RemovedBody335_135 RemovedBody335_174

def RemovedBody335_176 : StackLang.HolProg 64 :=
.seq RemovedBody335_134 RemovedBody335_175

def RemovedBody335_177 : StackLang.HolProg 64 :=
.seq RemovedBody335_133 RemovedBody335_176

def RemovedBody335_178 : StackLang.HolProg 64 :=
.seq RemovedBody335_132 RemovedBody335_177

def RemovedBody335_179 : StackLang.HolProg 64 :=
.seq RemovedBody335_97 RemovedBody335_178

def RemovedBody335_180 : StackLang.HolProg 64 :=
.seq RemovedBody335_96 RemovedBody335_179

def RemovedBody335_181 : StackLang.HolProg 64 :=
.seq RemovedBody335_95 RemovedBody335_180

def RemovedBody335_182 : StackLang.HolProg 64 :=
.seq RemovedBody335_94 RemovedBody335_181

def RemovedBody335_183 : StackLang.HolProg 64 :=
.seq RemovedBody335_93 RemovedBody335_182

def RemovedBody335_184 : StackLang.HolProg 64 :=
.seq RemovedBody335_78 RemovedBody335_183

def RemovedBody335_185 : StackLang.HolProg 64 :=
.seq RemovedBody335_77 RemovedBody335_184

def RemovedBody335_186 : StackLang.HolProg 64 :=
.seq RemovedBody335_76 RemovedBody335_185

def RemovedBody335_187 : StackLang.HolProg 64 :=
.seq RemovedBody335_75 RemovedBody335_186

def RemovedBody335_188 : StackLang.HolProg 64 :=
.seq RemovedBody335_16 RemovedBody335_187

def RemovedBody335_189 : StackLang.HolProg 64 :=
.seq RemovedBody335_13 RemovedBody335_188

def RemovedBody335_190 : StackLang.HolProg 64 :=
.seq RemovedBody335_12 RemovedBody335_189

def RemovedBody335_191 : StackLang.HolProg 64 :=
.seq RemovedBody335_11 RemovedBody335_190

def RemovedBody335_192 : StackLang.HolProg 64 :=
.seq RemovedBody335_10 RemovedBody335_191

def RemovedBody335_193 : StackLang.HolProg 64 :=
.seq RemovedBody335_9 RemovedBody335_192

def RemovedBody335_194 : StackLang.HolProg 64 :=
.seq RemovedBody335_8 RemovedBody335_193

def RemovedBody335_195 : StackLang.HolProg 64 :=
.seq RemovedBody335_7 RemovedBody335_194

def RemovedBody335_196 : StackLang.HolProg 64 :=
.seq RemovedBody335_6 RemovedBody335_195

def Removed335 : Nat × StackLang.HolProg 64 := (335, RemovedBody335_196)
theorem Removed335_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc335 = Removed335 := by
  kernel_rfl
#print axioms Removed335_eq
end InitECandidate.Proofs.BackendStages
