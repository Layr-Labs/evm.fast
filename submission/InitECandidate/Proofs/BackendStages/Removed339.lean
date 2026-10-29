import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc339
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody339_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody339_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody339_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody339_3 : StackLang.HolProg 64 :=
.seq RemovedBody339_1 RemovedBody339_2

def RemovedBody339_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody339_3 RemovedBody339_4

def RemovedBody339_6 : StackLang.HolProg 64 :=
.seq RemovedBody339_0 RemovedBody339_5

def RemovedBody339_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody339_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody339_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody339_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody339_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody339_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody339_16 : StackLang.HolProg 64 :=
.seq RemovedBody339_14 RemovedBody339_15

def RemovedBody339_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 973#64)

def RemovedBody339_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody339_20 : StackLang.HolProg 64 :=
.seq RemovedBody339_18 RemovedBody339_19

def RemovedBody339_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody339_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody339_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody339_24 : StackLang.HolProg 64 :=
.seq RemovedBody339_22 RemovedBody339_23

def RemovedBody339_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody339_24 RemovedBody339_25

def RemovedBody339_27 : StackLang.HolProg 64 :=
.seq RemovedBody339_21 RemovedBody339_26

def RemovedBody339_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody339_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody339_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 339 3

def RemovedBody339_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody339_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody339_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody339_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody339_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody339_37 : StackLang.HolProg 64 :=
.seq RemovedBody339_35 RemovedBody339_36

def RemovedBody339_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody339_39 : StackLang.HolProg 64 :=
.seq RemovedBody339_37 RemovedBody339_38

def RemovedBody339_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody339_41 : StackLang.HolProg 64 :=
.seq RemovedBody339_39 RemovedBody339_40

def RemovedBody339_42 : StackLang.HolProg 64 :=
.seq RemovedBody339_34 RemovedBody339_41

def RemovedBody339_43 : StackLang.HolProg 64 :=
.seq RemovedBody339_33 RemovedBody339_42

def RemovedBody339_44 : StackLang.HolProg 64 :=
.seq RemovedBody339_32 RemovedBody339_43

def RemovedBody339_45 : StackLang.HolProg 64 :=
.seq RemovedBody339_31 RemovedBody339_44

def RemovedBody339_46 : StackLang.HolProg 64 :=
.seq RemovedBody339_30 RemovedBody339_45

def RemovedBody339_47 : StackLang.HolProg 64 :=
.seq RemovedBody339_29 RemovedBody339_46

def RemovedBody339_48 : StackLang.HolProg 64 :=
.seq RemovedBody339_28 RemovedBody339_47

def RemovedBody339_49 : StackLang.HolProg 64 :=
.seq RemovedBody339_27 RemovedBody339_48

def RemovedBody339_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody339_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody339_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody339_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody339_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody339_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody339_59 : StackLang.HolProg 64 :=
.seq RemovedBody339_57 RemovedBody339_58

def RemovedBody339_60 : StackLang.HolProg 64 :=
.seq RemovedBody339_56 RemovedBody339_59

def RemovedBody339_61 : StackLang.HolProg 64 :=
.seq RemovedBody339_55 RemovedBody339_60

def RemovedBody339_62 : StackLang.HolProg 64 :=
.seq RemovedBody339_54 RemovedBody339_61

def RemovedBody339_63 : StackLang.HolProg 64 :=
.seq RemovedBody339_53 RemovedBody339_62

def RemovedBody339_64 : StackLang.HolProg 64 :=
.seq RemovedBody339_52 RemovedBody339_63

def RemovedBody339_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody339_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody339_67 : StackLang.HolProg 64 :=
.seq RemovedBody339_65 RemovedBody339_66

def RemovedBody339_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody339_69 : StackLang.HolProg 64 :=
.seq RemovedBody339_67 RemovedBody339_68

def RemovedBody339_70 : StackLang.HolProg 64 :=
.call (some (RemovedBody339_64, 0, 339, 2)) (Sum.inl 161) (some (RemovedBody339_69, 339, 3))

def RemovedBody339_71 : StackLang.HolProg 64 :=
.seq RemovedBody339_51 RemovedBody339_70

def RemovedBody339_72 : StackLang.HolProg 64 :=
.seq RemovedBody339_50 RemovedBody339_71

def RemovedBody339_73 : StackLang.HolProg 64 :=
.seq RemovedBody339_49 RemovedBody339_72

def RemovedBody339_74 : StackLang.HolProg 64 :=
.seq RemovedBody339_20 RemovedBody339_73

def RemovedBody339_75 : StackLang.HolProg 64 :=
.seq RemovedBody339_17 RemovedBody339_74

def RemovedBody339_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody339_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody339_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody339_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 15#64)

def RemovedBody339_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody339_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody339_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody339_86 : StackLang.HolProg 64 :=
.seq RemovedBody339_84 RemovedBody339_85

def RemovedBody339_87 : StackLang.HolProg 64 :=
.seq RemovedBody339_83 RemovedBody339_86

def RemovedBody339_88 : StackLang.HolProg 64 :=
.seq RemovedBody339_82 RemovedBody339_87

def RemovedBody339_89 : StackLang.HolProg 64 :=
.seq RemovedBody339_81 RemovedBody339_88

def RemovedBody339_90 : StackLang.HolProg 64 :=
.seq RemovedBody339_80 RemovedBody339_89

def RemovedBody339_91 : StackLang.HolProg 64 :=
.seq RemovedBody339_79 RemovedBody339_90

def RemovedBody339_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody339_91 RemovedBody339_92

def RemovedBody339_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody339_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody339_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody339_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 16#64)

def RemovedBody339_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody339_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody339_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody339_104 : StackLang.HolProg 64 :=
.seq RemovedBody339_102 RemovedBody339_103

def RemovedBody339_105 : StackLang.HolProg 64 :=
.seq RemovedBody339_101 RemovedBody339_104

def RemovedBody339_106 : StackLang.HolProg 64 :=
.seq RemovedBody339_100 RemovedBody339_105

def RemovedBody339_107 : StackLang.HolProg 64 :=
.seq RemovedBody339_99 RemovedBody339_106

def RemovedBody339_108 : StackLang.HolProg 64 :=
.seq RemovedBody339_98 RemovedBody339_107

def RemovedBody339_109 : StackLang.HolProg 64 :=
.seq RemovedBody339_97 RemovedBody339_108

def RemovedBody339_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody339_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody339_109 RemovedBody339_110

def RemovedBody339_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody339_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody339_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody339_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody339_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody339_117 : StackLang.HolProg 64 :=
.seq RemovedBody339_115 RemovedBody339_116

def RemovedBody339_118 : StackLang.HolProg 64 :=
.seq RemovedBody339_114 RemovedBody339_117

def RemovedBody339_119 : StackLang.HolProg 64 :=
.seq RemovedBody339_113 RemovedBody339_118

def RemovedBody339_120 : StackLang.HolProg 64 :=
.seq RemovedBody339_112 RemovedBody339_119

def RemovedBody339_121 : StackLang.HolProg 64 :=
.seq RemovedBody339_111 RemovedBody339_120

def RemovedBody339_122 : StackLang.HolProg 64 :=
.seq RemovedBody339_96 RemovedBody339_121

def RemovedBody339_123 : StackLang.HolProg 64 :=
.seq RemovedBody339_95 RemovedBody339_122

def RemovedBody339_124 : StackLang.HolProg 64 :=
.seq RemovedBody339_94 RemovedBody339_123

def RemovedBody339_125 : StackLang.HolProg 64 :=
.seq RemovedBody339_93 RemovedBody339_124

def RemovedBody339_126 : StackLang.HolProg 64 :=
.seq RemovedBody339_78 RemovedBody339_125

def RemovedBody339_127 : StackLang.HolProg 64 :=
.seq RemovedBody339_77 RemovedBody339_126

def RemovedBody339_128 : StackLang.HolProg 64 :=
.seq RemovedBody339_76 RemovedBody339_127

def RemovedBody339_129 : StackLang.HolProg 64 :=
.seq RemovedBody339_75 RemovedBody339_128

def RemovedBody339_130 : StackLang.HolProg 64 :=
.seq RemovedBody339_16 RemovedBody339_129

def RemovedBody339_131 : StackLang.HolProg 64 :=
.seq RemovedBody339_13 RemovedBody339_130

def RemovedBody339_132 : StackLang.HolProg 64 :=
.seq RemovedBody339_12 RemovedBody339_131

def RemovedBody339_133 : StackLang.HolProg 64 :=
.seq RemovedBody339_11 RemovedBody339_132

def RemovedBody339_134 : StackLang.HolProg 64 :=
.seq RemovedBody339_10 RemovedBody339_133

def RemovedBody339_135 : StackLang.HolProg 64 :=
.seq RemovedBody339_9 RemovedBody339_134

def RemovedBody339_136 : StackLang.HolProg 64 :=
.seq RemovedBody339_8 RemovedBody339_135

def RemovedBody339_137 : StackLang.HolProg 64 :=
.seq RemovedBody339_7 RemovedBody339_136

def RemovedBody339_138 : StackLang.HolProg 64 :=
.seq RemovedBody339_6 RemovedBody339_137

def Removed339 : Nat × StackLang.HolProg 64 := (339, RemovedBody339_138)
theorem Removed339_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc339 = Removed339 := by
  kernel_rfl
#print axioms Removed339_eq
end InitECandidate.Proofs.BackendStages
