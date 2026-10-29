import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc536
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody536_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody536_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody536_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody536_3 : StackLang.HolProg 64 :=
.seq RemovedBody536_1 RemovedBody536_2

def RemovedBody536_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody536_3 RemovedBody536_4

def RemovedBody536_6 : StackLang.HolProg 64 :=
.seq RemovedBody536_0 RemovedBody536_5

def RemovedBody536_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody536_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody536_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody536_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody536_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody536_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_13 : StackLang.HolProg 64 :=
.seq RemovedBody536_11 RemovedBody536_12

def RemovedBody536_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1775#64)

def RemovedBody536_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_17 : StackLang.HolProg 64 :=
.seq RemovedBody536_15 RemovedBody536_16

def RemovedBody536_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody536_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody536_21 : StackLang.HolProg 64 :=
.seq RemovedBody536_19 RemovedBody536_20

def RemovedBody536_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody536_21 RemovedBody536_22

def RemovedBody536_24 : StackLang.HolProg 64 :=
.seq RemovedBody536_18 RemovedBody536_23

def RemovedBody536_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody536_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 3

def RemovedBody536_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody536_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody536_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody536_34 : StackLang.HolProg 64 :=
.seq RemovedBody536_32 RemovedBody536_33

def RemovedBody536_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody536_36 : StackLang.HolProg 64 :=
.seq RemovedBody536_34 RemovedBody536_35

def RemovedBody536_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_38 : StackLang.HolProg 64 :=
.seq RemovedBody536_36 RemovedBody536_37

def RemovedBody536_39 : StackLang.HolProg 64 :=
.seq RemovedBody536_31 RemovedBody536_38

def RemovedBody536_40 : StackLang.HolProg 64 :=
.seq RemovedBody536_30 RemovedBody536_39

def RemovedBody536_41 : StackLang.HolProg 64 :=
.seq RemovedBody536_29 RemovedBody536_40

def RemovedBody536_42 : StackLang.HolProg 64 :=
.seq RemovedBody536_28 RemovedBody536_41

def RemovedBody536_43 : StackLang.HolProg 64 :=
.seq RemovedBody536_27 RemovedBody536_42

def RemovedBody536_44 : StackLang.HolProg 64 :=
.seq RemovedBody536_26 RemovedBody536_43

def RemovedBody536_45 : StackLang.HolProg 64 :=
.seq RemovedBody536_25 RemovedBody536_44

def RemovedBody536_46 : StackLang.HolProg 64 :=
.seq RemovedBody536_24 RemovedBody536_45

def RemovedBody536_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_54 : StackLang.HolProg 64 :=
.seq RemovedBody536_52 RemovedBody536_53

def RemovedBody536_55 : StackLang.HolProg 64 :=
.seq RemovedBody536_51 RemovedBody536_54

def RemovedBody536_56 : StackLang.HolProg 64 :=
.seq RemovedBody536_50 RemovedBody536_55

def RemovedBody536_57 : StackLang.HolProg 64 :=
.seq RemovedBody536_49 RemovedBody536_56

def RemovedBody536_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody536_60 : StackLang.HolProg 64 :=
.seq RemovedBody536_58 RemovedBody536_59

def RemovedBody536_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody536_57, 0, 536, 2)) (Sum.inl 470) (some (RemovedBody536_60, 536, 3))

def RemovedBody536_62 : StackLang.HolProg 64 :=
.seq RemovedBody536_48 RemovedBody536_61

def RemovedBody536_63 : StackLang.HolProg 64 :=
.seq RemovedBody536_47 RemovedBody536_62

def RemovedBody536_64 : StackLang.HolProg 64 :=
.seq RemovedBody536_46 RemovedBody536_63

def RemovedBody536_65 : StackLang.HolProg 64 :=
.seq RemovedBody536_17 RemovedBody536_64

def RemovedBody536_66 : StackLang.HolProg 64 :=
.seq RemovedBody536_14 RemovedBody536_65

def RemovedBody536_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody536_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_69 : StackLang.HolProg 64 :=
.seq RemovedBody536_67 RemovedBody536_68

def RemovedBody536_70 : StackLang.HolProg 64 :=
.seq RemovedBody536_66 RemovedBody536_69

def RemovedBody536_71 : StackLang.HolProg 64 :=
.seq RemovedBody536_13 RemovedBody536_70

def RemovedBody536_72 : StackLang.HolProg 64 :=
.seq RemovedBody536_10 RemovedBody536_71

def RemovedBody536_73 : StackLang.HolProg 64 :=
.seq RemovedBody536_9 RemovedBody536_72

def RemovedBody536_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody536_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody536_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody536_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_78 : StackLang.HolProg 64 :=
.seq RemovedBody536_76 RemovedBody536_77

def RemovedBody536_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1776#64)

def RemovedBody536_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_82 : StackLang.HolProg 64 :=
.seq RemovedBody536_80 RemovedBody536_81

def RemovedBody536_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody536_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody536_86 : StackLang.HolProg 64 :=
.seq RemovedBody536_84 RemovedBody536_85

def RemovedBody536_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody536_86 RemovedBody536_87

def RemovedBody536_89 : StackLang.HolProg 64 :=
.seq RemovedBody536_83 RemovedBody536_88

def RemovedBody536_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody536_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 5

def RemovedBody536_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody536_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody536_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody536_99 : StackLang.HolProg 64 :=
.seq RemovedBody536_97 RemovedBody536_98

def RemovedBody536_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody536_101 : StackLang.HolProg 64 :=
.seq RemovedBody536_99 RemovedBody536_100

def RemovedBody536_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_103 : StackLang.HolProg 64 :=
.seq RemovedBody536_101 RemovedBody536_102

def RemovedBody536_104 : StackLang.HolProg 64 :=
.seq RemovedBody536_96 RemovedBody536_103

def RemovedBody536_105 : StackLang.HolProg 64 :=
.seq RemovedBody536_95 RemovedBody536_104

def RemovedBody536_106 : StackLang.HolProg 64 :=
.seq RemovedBody536_94 RemovedBody536_105

def RemovedBody536_107 : StackLang.HolProg 64 :=
.seq RemovedBody536_93 RemovedBody536_106

def RemovedBody536_108 : StackLang.HolProg 64 :=
.seq RemovedBody536_92 RemovedBody536_107

def RemovedBody536_109 : StackLang.HolProg 64 :=
.seq RemovedBody536_91 RemovedBody536_108

def RemovedBody536_110 : StackLang.HolProg 64 :=
.seq RemovedBody536_90 RemovedBody536_109

def RemovedBody536_111 : StackLang.HolProg 64 :=
.seq RemovedBody536_89 RemovedBody536_110

def RemovedBody536_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_119 : StackLang.HolProg 64 :=
.seq RemovedBody536_117 RemovedBody536_118

def RemovedBody536_120 : StackLang.HolProg 64 :=
.seq RemovedBody536_116 RemovedBody536_119

def RemovedBody536_121 : StackLang.HolProg 64 :=
.seq RemovedBody536_115 RemovedBody536_120

def RemovedBody536_122 : StackLang.HolProg 64 :=
.seq RemovedBody536_114 RemovedBody536_121

def RemovedBody536_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_124 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody536_125 : StackLang.HolProg 64 :=
.seq RemovedBody536_123 RemovedBody536_124

def RemovedBody536_126 : StackLang.HolProg 64 :=
.call (some (RemovedBody536_122, 0, 536, 4)) (Sum.inl 470) (some (RemovedBody536_125, 536, 5))

def RemovedBody536_127 : StackLang.HolProg 64 :=
.seq RemovedBody536_113 RemovedBody536_126

def RemovedBody536_128 : StackLang.HolProg 64 :=
.seq RemovedBody536_112 RemovedBody536_127

def RemovedBody536_129 : StackLang.HolProg 64 :=
.seq RemovedBody536_111 RemovedBody536_128

def RemovedBody536_130 : StackLang.HolProg 64 :=
.seq RemovedBody536_82 RemovedBody536_129

def RemovedBody536_131 : StackLang.HolProg 64 :=
.seq RemovedBody536_79 RemovedBody536_130

def RemovedBody536_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody536_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_134 : StackLang.HolProg 64 :=
.seq RemovedBody536_132 RemovedBody536_133

def RemovedBody536_135 : StackLang.HolProg 64 :=
.seq RemovedBody536_131 RemovedBody536_134

def RemovedBody536_136 : StackLang.HolProg 64 :=
.seq RemovedBody536_78 RemovedBody536_135

def RemovedBody536_137 : StackLang.HolProg 64 :=
.seq RemovedBody536_75 RemovedBody536_136

def RemovedBody536_138 : StackLang.HolProg 64 :=
.seq RemovedBody536_74 RemovedBody536_137

def RemovedBody536_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody536_73 RemovedBody536_138

def RemovedBody536_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody536_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1777#64)

def RemovedBody536_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_145 : StackLang.HolProg 64 :=
.seq RemovedBody536_143 RemovedBody536_144

def RemovedBody536_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody536_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody536_149 : StackLang.HolProg 64 :=
.seq RemovedBody536_147 RemovedBody536_148

def RemovedBody536_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_151 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody536_149 RemovedBody536_150

def RemovedBody536_152 : StackLang.HolProg 64 :=
.seq RemovedBody536_146 RemovedBody536_151

def RemovedBody536_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody536_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 7

def RemovedBody536_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody536_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody536_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody536_162 : StackLang.HolProg 64 :=
.seq RemovedBody536_160 RemovedBody536_161

def RemovedBody536_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody536_164 : StackLang.HolProg 64 :=
.seq RemovedBody536_162 RemovedBody536_163

def RemovedBody536_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_166 : StackLang.HolProg 64 :=
.seq RemovedBody536_164 RemovedBody536_165

def RemovedBody536_167 : StackLang.HolProg 64 :=
.seq RemovedBody536_159 RemovedBody536_166

def RemovedBody536_168 : StackLang.HolProg 64 :=
.seq RemovedBody536_158 RemovedBody536_167

def RemovedBody536_169 : StackLang.HolProg 64 :=
.seq RemovedBody536_157 RemovedBody536_168

def RemovedBody536_170 : StackLang.HolProg 64 :=
.seq RemovedBody536_156 RemovedBody536_169

def RemovedBody536_171 : StackLang.HolProg 64 :=
.seq RemovedBody536_155 RemovedBody536_170

def RemovedBody536_172 : StackLang.HolProg 64 :=
.seq RemovedBody536_154 RemovedBody536_171

def RemovedBody536_173 : StackLang.HolProg 64 :=
.seq RemovedBody536_153 RemovedBody536_172

def RemovedBody536_174 : StackLang.HolProg 64 :=
.seq RemovedBody536_152 RemovedBody536_173

def RemovedBody536_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody536_182 : StackLang.HolProg 64 :=
.seq RemovedBody536_180 RemovedBody536_181

def RemovedBody536_183 : StackLang.HolProg 64 :=
.seq RemovedBody536_179 RemovedBody536_182

def RemovedBody536_184 : StackLang.HolProg 64 :=
.seq RemovedBody536_178 RemovedBody536_183

def RemovedBody536_185 : StackLang.HolProg 64 :=
.seq RemovedBody536_177 RemovedBody536_184

def RemovedBody536_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody536_188 : StackLang.HolProg 64 :=
.seq RemovedBody536_186 RemovedBody536_187

def RemovedBody536_189 : StackLang.HolProg 64 :=
.call (some (RemovedBody536_185, 0, 536, 6)) (Sum.inl 69) (some (RemovedBody536_188, 536, 7))

def RemovedBody536_190 : StackLang.HolProg 64 :=
.seq RemovedBody536_176 RemovedBody536_189

def RemovedBody536_191 : StackLang.HolProg 64 :=
.seq RemovedBody536_175 RemovedBody536_190

def RemovedBody536_192 : StackLang.HolProg 64 :=
.seq RemovedBody536_174 RemovedBody536_191

def RemovedBody536_193 : StackLang.HolProg 64 :=
.seq RemovedBody536_145 RemovedBody536_192

def RemovedBody536_194 : StackLang.HolProg 64 :=
.seq RemovedBody536_142 RemovedBody536_193

def RemovedBody536_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody536_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody536_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody536_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1778#64)

def RemovedBody536_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_201 : StackLang.HolProg 64 :=
.seq RemovedBody536_199 RemovedBody536_200

def RemovedBody536_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody536_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody536_205 : StackLang.HolProg 64 :=
.seq RemovedBody536_203 RemovedBody536_204

def RemovedBody536_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_207 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody536_205 RemovedBody536_206

def RemovedBody536_208 : StackLang.HolProg 64 :=
.seq RemovedBody536_202 RemovedBody536_207

def RemovedBody536_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody536_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 9

def RemovedBody536_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody536_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody536_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody536_218 : StackLang.HolProg 64 :=
.seq RemovedBody536_216 RemovedBody536_217

def RemovedBody536_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody536_220 : StackLang.HolProg 64 :=
.seq RemovedBody536_218 RemovedBody536_219

def RemovedBody536_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_222 : StackLang.HolProg 64 :=
.seq RemovedBody536_220 RemovedBody536_221

def RemovedBody536_223 : StackLang.HolProg 64 :=
.seq RemovedBody536_215 RemovedBody536_222

def RemovedBody536_224 : StackLang.HolProg 64 :=
.seq RemovedBody536_214 RemovedBody536_223

def RemovedBody536_225 : StackLang.HolProg 64 :=
.seq RemovedBody536_213 RemovedBody536_224

def RemovedBody536_226 : StackLang.HolProg 64 :=
.seq RemovedBody536_212 RemovedBody536_225

def RemovedBody536_227 : StackLang.HolProg 64 :=
.seq RemovedBody536_211 RemovedBody536_226

def RemovedBody536_228 : StackLang.HolProg 64 :=
.seq RemovedBody536_210 RemovedBody536_227

def RemovedBody536_229 : StackLang.HolProg 64 :=
.seq RemovedBody536_209 RemovedBody536_228

def RemovedBody536_230 : StackLang.HolProg 64 :=
.seq RemovedBody536_208 RemovedBody536_229

def RemovedBody536_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody536_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_239 : StackLang.HolProg 64 :=
.seq RemovedBody536_237 RemovedBody536_238

def RemovedBody536_240 : StackLang.HolProg 64 :=
.seq RemovedBody536_236 RemovedBody536_239

def RemovedBody536_241 : StackLang.HolProg 64 :=
.seq RemovedBody536_235 RemovedBody536_240

def RemovedBody536_242 : StackLang.HolProg 64 :=
.seq RemovedBody536_234 RemovedBody536_241

def RemovedBody536_243 : StackLang.HolProg 64 :=
.seq RemovedBody536_233 RemovedBody536_242

def RemovedBody536_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_245 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody536_246 : StackLang.HolProg 64 :=
.seq RemovedBody536_244 RemovedBody536_245

def RemovedBody536_247 : StackLang.HolProg 64 :=
.call (some (RemovedBody536_243, 0, 536, 8)) (Sum.inl 68) (some (RemovedBody536_246, 536, 9))

def RemovedBody536_248 : StackLang.HolProg 64 :=
.seq RemovedBody536_232 RemovedBody536_247

def RemovedBody536_249 : StackLang.HolProg 64 :=
.seq RemovedBody536_231 RemovedBody536_248

def RemovedBody536_250 : StackLang.HolProg 64 :=
.seq RemovedBody536_230 RemovedBody536_249

def RemovedBody536_251 : StackLang.HolProg 64 :=
.seq RemovedBody536_201 RemovedBody536_250

def RemovedBody536_252 : StackLang.HolProg 64 :=
.seq RemovedBody536_198 RemovedBody536_251

def RemovedBody536_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody536_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody536_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody536_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody536_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody536_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def RemovedBody536_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def RemovedBody536_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody536_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody536_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody536_266 : StackLang.HolProg 64 :=
.seq RemovedBody536_264 RemovedBody536_265

def RemovedBody536_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1779#64)

def RemovedBody536_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_270 : StackLang.HolProg 64 :=
.seq RemovedBody536_268 RemovedBody536_269

def RemovedBody536_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody536_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody536_274 : StackLang.HolProg 64 :=
.seq RemovedBody536_272 RemovedBody536_273

def RemovedBody536_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_276 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody536_274 RemovedBody536_275

def RemovedBody536_277 : StackLang.HolProg 64 :=
.seq RemovedBody536_271 RemovedBody536_276

def RemovedBody536_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody536_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 11

def RemovedBody536_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody536_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody536_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody536_287 : StackLang.HolProg 64 :=
.seq RemovedBody536_285 RemovedBody536_286

def RemovedBody536_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody536_289 : StackLang.HolProg 64 :=
.seq RemovedBody536_287 RemovedBody536_288

def RemovedBody536_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_291 : StackLang.HolProg 64 :=
.seq RemovedBody536_289 RemovedBody536_290

def RemovedBody536_292 : StackLang.HolProg 64 :=
.seq RemovedBody536_284 RemovedBody536_291

def RemovedBody536_293 : StackLang.HolProg 64 :=
.seq RemovedBody536_283 RemovedBody536_292

def RemovedBody536_294 : StackLang.HolProg 64 :=
.seq RemovedBody536_282 RemovedBody536_293

def RemovedBody536_295 : StackLang.HolProg 64 :=
.seq RemovedBody536_281 RemovedBody536_294

def RemovedBody536_296 : StackLang.HolProg 64 :=
.seq RemovedBody536_280 RemovedBody536_295

def RemovedBody536_297 : StackLang.HolProg 64 :=
.seq RemovedBody536_279 RemovedBody536_296

def RemovedBody536_298 : StackLang.HolProg 64 :=
.seq RemovedBody536_278 RemovedBody536_297

def RemovedBody536_299 : StackLang.HolProg 64 :=
.seq RemovedBody536_277 RemovedBody536_298

def RemovedBody536_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody536_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody536_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_310 : StackLang.HolProg 64 :=
.seq RemovedBody536_308 RemovedBody536_309

def RemovedBody536_311 : StackLang.HolProg 64 :=
.seq RemovedBody536_307 RemovedBody536_310

def RemovedBody536_312 : StackLang.HolProg 64 :=
.seq RemovedBody536_306 RemovedBody536_311

def RemovedBody536_313 : StackLang.HolProg 64 :=
.seq RemovedBody536_305 RemovedBody536_312

def RemovedBody536_314 : StackLang.HolProg 64 :=
.seq RemovedBody536_304 RemovedBody536_313

def RemovedBody536_315 : StackLang.HolProg 64 :=
.seq RemovedBody536_303 RemovedBody536_314

def RemovedBody536_316 : StackLang.HolProg 64 :=
.seq RemovedBody536_302 RemovedBody536_315

def RemovedBody536_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody536_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody536_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_321 : StackLang.HolProg 64 :=
.seq RemovedBody536_319 RemovedBody536_320

def RemovedBody536_322 : StackLang.HolProg 64 :=
.seq RemovedBody536_318 RemovedBody536_321

def RemovedBody536_323 : StackLang.HolProg 64 :=
.seq RemovedBody536_317 RemovedBody536_322

def RemovedBody536_324 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody536_325 : StackLang.HolProg 64 :=
.seq RemovedBody536_323 RemovedBody536_324

def RemovedBody536_326 : StackLang.HolProg 64 :=
.call (some (RemovedBody536_316, 0, 536, 10)) (Sum.inl 484) (some (RemovedBody536_325, 536, 11))

def RemovedBody536_327 : StackLang.HolProg 64 :=
.seq RemovedBody536_301 RemovedBody536_326

def RemovedBody536_328 : StackLang.HolProg 64 :=
.seq RemovedBody536_300 RemovedBody536_327

def RemovedBody536_329 : StackLang.HolProg 64 :=
.seq RemovedBody536_299 RemovedBody536_328

def RemovedBody536_330 : StackLang.HolProg 64 :=
.seq RemovedBody536_270 RemovedBody536_329

def RemovedBody536_331 : StackLang.HolProg 64 :=
.seq RemovedBody536_267 RemovedBody536_330

def RemovedBody536_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody536_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody536_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody536_335 : StackLang.HolProg 64 :=
.seq RemovedBody536_333 RemovedBody536_334

def RemovedBody536_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1780#64)

def RemovedBody536_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_339 : StackLang.HolProg 64 :=
.seq RemovedBody536_337 RemovedBody536_338

def RemovedBody536_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody536_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody536_343 : StackLang.HolProg 64 :=
.seq RemovedBody536_341 RemovedBody536_342

def RemovedBody536_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_345 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody536_343 RemovedBody536_344

def RemovedBody536_346 : StackLang.HolProg 64 :=
.seq RemovedBody536_340 RemovedBody536_345

def RemovedBody536_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody536_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 13

def RemovedBody536_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody536_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody536_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody536_356 : StackLang.HolProg 64 :=
.seq RemovedBody536_354 RemovedBody536_355

def RemovedBody536_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody536_358 : StackLang.HolProg 64 :=
.seq RemovedBody536_356 RemovedBody536_357

def RemovedBody536_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_360 : StackLang.HolProg 64 :=
.seq RemovedBody536_358 RemovedBody536_359

def RemovedBody536_361 : StackLang.HolProg 64 :=
.seq RemovedBody536_353 RemovedBody536_360

def RemovedBody536_362 : StackLang.HolProg 64 :=
.seq RemovedBody536_352 RemovedBody536_361

def RemovedBody536_363 : StackLang.HolProg 64 :=
.seq RemovedBody536_351 RemovedBody536_362

def RemovedBody536_364 : StackLang.HolProg 64 :=
.seq RemovedBody536_350 RemovedBody536_363

def RemovedBody536_365 : StackLang.HolProg 64 :=
.seq RemovedBody536_349 RemovedBody536_364

def RemovedBody536_366 : StackLang.HolProg 64 :=
.seq RemovedBody536_348 RemovedBody536_365

def RemovedBody536_367 : StackLang.HolProg 64 :=
.seq RemovedBody536_347 RemovedBody536_366

def RemovedBody536_368 : StackLang.HolProg 64 :=
.seq RemovedBody536_346 RemovedBody536_367

def RemovedBody536_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody536_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_377 : StackLang.HolProg 64 :=
.seq RemovedBody536_375 RemovedBody536_376

def RemovedBody536_378 : StackLang.HolProg 64 :=
.seq RemovedBody536_374 RemovedBody536_377

def RemovedBody536_379 : StackLang.HolProg 64 :=
.seq RemovedBody536_373 RemovedBody536_378

def RemovedBody536_380 : StackLang.HolProg 64 :=
.seq RemovedBody536_372 RemovedBody536_379

def RemovedBody536_381 : StackLang.HolProg 64 :=
.seq RemovedBody536_371 RemovedBody536_380

def RemovedBody536_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_383 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody536_384 : StackLang.HolProg 64 :=
.seq RemovedBody536_382 RemovedBody536_383

def RemovedBody536_385 : StackLang.HolProg 64 :=
.call (some (RemovedBody536_381, 0, 536, 12)) (Sum.inl 146) (some (RemovedBody536_384, 536, 13))

def RemovedBody536_386 : StackLang.HolProg 64 :=
.seq RemovedBody536_370 RemovedBody536_385

def RemovedBody536_387 : StackLang.HolProg 64 :=
.seq RemovedBody536_369 RemovedBody536_386

def RemovedBody536_388 : StackLang.HolProg 64 :=
.seq RemovedBody536_368 RemovedBody536_387

def RemovedBody536_389 : StackLang.HolProg 64 :=
.seq RemovedBody536_339 RemovedBody536_388

def RemovedBody536_390 : StackLang.HolProg 64 :=
.seq RemovedBody536_336 RemovedBody536_389

def RemovedBody536_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody536_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody536_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody536_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody536_397 : StackLang.HolProg 64 :=
.seq RemovedBody536_395 RemovedBody536_396

def RemovedBody536_398 : StackLang.HolProg 64 :=
.seq RemovedBody536_394 RemovedBody536_397

def RemovedBody536_399 : StackLang.HolProg 64 :=
.seq RemovedBody536_393 RemovedBody536_398

def RemovedBody536_400 : StackLang.HolProg 64 :=
.seq RemovedBody536_392 RemovedBody536_399

def RemovedBody536_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1781#64)

def RemovedBody536_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_404 : StackLang.HolProg 64 :=
.seq RemovedBody536_402 RemovedBody536_403

def RemovedBody536_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody536_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody536_408 : StackLang.HolProg 64 :=
.seq RemovedBody536_406 RemovedBody536_407

def RemovedBody536_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_410 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody536_408 RemovedBody536_409

def RemovedBody536_411 : StackLang.HolProg 64 :=
.seq RemovedBody536_405 RemovedBody536_410

def RemovedBody536_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody536_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 15

def RemovedBody536_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody536_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody536_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody536_421 : StackLang.HolProg 64 :=
.seq RemovedBody536_419 RemovedBody536_420

def RemovedBody536_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody536_423 : StackLang.HolProg 64 :=
.seq RemovedBody536_421 RemovedBody536_422

def RemovedBody536_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_425 : StackLang.HolProg 64 :=
.seq RemovedBody536_423 RemovedBody536_424

def RemovedBody536_426 : StackLang.HolProg 64 :=
.seq RemovedBody536_418 RemovedBody536_425

def RemovedBody536_427 : StackLang.HolProg 64 :=
.seq RemovedBody536_417 RemovedBody536_426

def RemovedBody536_428 : StackLang.HolProg 64 :=
.seq RemovedBody536_416 RemovedBody536_427

def RemovedBody536_429 : StackLang.HolProg 64 :=
.seq RemovedBody536_415 RemovedBody536_428

def RemovedBody536_430 : StackLang.HolProg 64 :=
.seq RemovedBody536_414 RemovedBody536_429

def RemovedBody536_431 : StackLang.HolProg 64 :=
.seq RemovedBody536_413 RemovedBody536_430

def RemovedBody536_432 : StackLang.HolProg 64 :=
.seq RemovedBody536_412 RemovedBody536_431

def RemovedBody536_433 : StackLang.HolProg 64 :=
.seq RemovedBody536_411 RemovedBody536_432

def RemovedBody536_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody536_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_443 : StackLang.HolProg 64 :=
.seq RemovedBody536_441 RemovedBody536_442

def RemovedBody536_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody536_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody536_447 : StackLang.HolProg 64 :=
.seq RemovedBody536_445 RemovedBody536_446

def RemovedBody536_448 : StackLang.HolProg 64 :=
.seq RemovedBody536_444 RemovedBody536_447

def RemovedBody536_449 : StackLang.HolProg 64 :=
.seq RemovedBody536_443 RemovedBody536_448

def RemovedBody536_450 : StackLang.HolProg 64 :=
.seq RemovedBody536_440 RemovedBody536_449

def RemovedBody536_451 : StackLang.HolProg 64 :=
.seq RemovedBody536_439 RemovedBody536_450

def RemovedBody536_452 : StackLang.HolProg 64 :=
.seq RemovedBody536_438 RemovedBody536_451

def RemovedBody536_453 : StackLang.HolProg 64 :=
.seq RemovedBody536_437 RemovedBody536_452

def RemovedBody536_454 : StackLang.HolProg 64 :=
.seq RemovedBody536_436 RemovedBody536_453

def RemovedBody536_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody536_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_458 : StackLang.HolProg 64 :=
.seq RemovedBody536_456 RemovedBody536_457

def RemovedBody536_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody536_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody536_462 : StackLang.HolProg 64 :=
.seq RemovedBody536_460 RemovedBody536_461

def RemovedBody536_463 : StackLang.HolProg 64 :=
.seq RemovedBody536_459 RemovedBody536_462

def RemovedBody536_464 : StackLang.HolProg 64 :=
.seq RemovedBody536_458 RemovedBody536_463

def RemovedBody536_465 : StackLang.HolProg 64 :=
.seq RemovedBody536_455 RemovedBody536_464

def RemovedBody536_466 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody536_467 : StackLang.HolProg 64 :=
.seq RemovedBody536_465 RemovedBody536_466

def RemovedBody536_468 : StackLang.HolProg 64 :=
.call (some (RemovedBody536_454, 0, 536, 14)) (Sum.inl 70) (some (RemovedBody536_467, 536, 15))

def RemovedBody536_469 : StackLang.HolProg 64 :=
.seq RemovedBody536_435 RemovedBody536_468

def RemovedBody536_470 : StackLang.HolProg 64 :=
.seq RemovedBody536_434 RemovedBody536_469

def RemovedBody536_471 : StackLang.HolProg 64 :=
.seq RemovedBody536_433 RemovedBody536_470

def RemovedBody536_472 : StackLang.HolProg 64 :=
.seq RemovedBody536_404 RemovedBody536_471

def RemovedBody536_473 : StackLang.HolProg 64 :=
.seq RemovedBody536_401 RemovedBody536_472

def RemovedBody536_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody536_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody536_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1782#64)

def RemovedBody536_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_479 : StackLang.HolProg 64 :=
.seq RemovedBody536_477 RemovedBody536_478

def RemovedBody536_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody536_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody536_483 : StackLang.HolProg 64 :=
.seq RemovedBody536_481 RemovedBody536_482

def RemovedBody536_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_485 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody536_483 RemovedBody536_484

def RemovedBody536_486 : StackLang.HolProg 64 :=
.seq RemovedBody536_480 RemovedBody536_485

def RemovedBody536_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody536_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 17

def RemovedBody536_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody536_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody536_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody536_496 : StackLang.HolProg 64 :=
.seq RemovedBody536_494 RemovedBody536_495

def RemovedBody536_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody536_498 : StackLang.HolProg 64 :=
.seq RemovedBody536_496 RemovedBody536_497

def RemovedBody536_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_500 : StackLang.HolProg 64 :=
.seq RemovedBody536_498 RemovedBody536_499

def RemovedBody536_501 : StackLang.HolProg 64 :=
.seq RemovedBody536_493 RemovedBody536_500

def RemovedBody536_502 : StackLang.HolProg 64 :=
.seq RemovedBody536_492 RemovedBody536_501

def RemovedBody536_503 : StackLang.HolProg 64 :=
.seq RemovedBody536_491 RemovedBody536_502

def RemovedBody536_504 : StackLang.HolProg 64 :=
.seq RemovedBody536_490 RemovedBody536_503

def RemovedBody536_505 : StackLang.HolProg 64 :=
.seq RemovedBody536_489 RemovedBody536_504

def RemovedBody536_506 : StackLang.HolProg 64 :=
.seq RemovedBody536_488 RemovedBody536_505

def RemovedBody536_507 : StackLang.HolProg 64 :=
.seq RemovedBody536_487 RemovedBody536_506

def RemovedBody536_508 : StackLang.HolProg 64 :=
.seq RemovedBody536_486 RemovedBody536_507

def RemovedBody536_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_516 : StackLang.HolProg 64 :=
.seq RemovedBody536_514 RemovedBody536_515

def RemovedBody536_517 : StackLang.HolProg 64 :=
.seq RemovedBody536_513 RemovedBody536_516

def RemovedBody536_518 : StackLang.HolProg 64 :=
.seq RemovedBody536_512 RemovedBody536_517

def RemovedBody536_519 : StackLang.HolProg 64 :=
.seq RemovedBody536_511 RemovedBody536_518

def RemovedBody536_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody536_521 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody536_522 : StackLang.HolProg 64 :=
.seq RemovedBody536_520 RemovedBody536_521

def RemovedBody536_523 : StackLang.HolProg 64 :=
.call (some (RemovedBody536_519, 0, 536, 16)) (Sum.inl 476) (some (RemovedBody536_522, 536, 17))

def RemovedBody536_524 : StackLang.HolProg 64 :=
.seq RemovedBody536_510 RemovedBody536_523

def RemovedBody536_525 : StackLang.HolProg 64 :=
.seq RemovedBody536_509 RemovedBody536_524

def RemovedBody536_526 : StackLang.HolProg 64 :=
.seq RemovedBody536_508 RemovedBody536_525

def RemovedBody536_527 : StackLang.HolProg 64 :=
.seq RemovedBody536_479 RemovedBody536_526

def RemovedBody536_528 : StackLang.HolProg 64 :=
.seq RemovedBody536_476 RemovedBody536_527

def RemovedBody536_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody536_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody536_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1783#64)

def RemovedBody536_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_536 : StackLang.HolProg 64 :=
.seq RemovedBody536_534 RemovedBody536_535

def RemovedBody536_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody536_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody536_540 : StackLang.HolProg 64 :=
.seq RemovedBody536_538 RemovedBody536_539

def RemovedBody536_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_542 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody536_540 RemovedBody536_541

def RemovedBody536_543 : StackLang.HolProg 64 :=
.seq RemovedBody536_537 RemovedBody536_542

def RemovedBody536_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody536_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody536_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 19

def RemovedBody536_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody536_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody536_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody536_553 : StackLang.HolProg 64 :=
.seq RemovedBody536_551 RemovedBody536_552

def RemovedBody536_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody536_555 : StackLang.HolProg 64 :=
.seq RemovedBody536_553 RemovedBody536_554

def RemovedBody536_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_557 : StackLang.HolProg 64 :=
.seq RemovedBody536_555 RemovedBody536_556

def RemovedBody536_558 : StackLang.HolProg 64 :=
.seq RemovedBody536_550 RemovedBody536_557

def RemovedBody536_559 : StackLang.HolProg 64 :=
.seq RemovedBody536_549 RemovedBody536_558

def RemovedBody536_560 : StackLang.HolProg 64 :=
.seq RemovedBody536_548 RemovedBody536_559

def RemovedBody536_561 : StackLang.HolProg 64 :=
.seq RemovedBody536_547 RemovedBody536_560

def RemovedBody536_562 : StackLang.HolProg 64 :=
.seq RemovedBody536_546 RemovedBody536_561

def RemovedBody536_563 : StackLang.HolProg 64 :=
.seq RemovedBody536_545 RemovedBody536_562

def RemovedBody536_564 : StackLang.HolProg 64 :=
.seq RemovedBody536_544 RemovedBody536_563

def RemovedBody536_565 : StackLang.HolProg 64 :=
.seq RemovedBody536_543 RemovedBody536_564

def RemovedBody536_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody536_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody536_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody536_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody536_573 : StackLang.HolProg 64 :=
.seq RemovedBody536_571 RemovedBody536_572

def RemovedBody536_574 : StackLang.HolProg 64 :=
.seq RemovedBody536_570 RemovedBody536_573

def RemovedBody536_575 : StackLang.HolProg 64 :=
.seq RemovedBody536_569 RemovedBody536_574

def RemovedBody536_576 : StackLang.HolProg 64 :=
.seq RemovedBody536_568 RemovedBody536_575

def RemovedBody536_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody536_578 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody536_579 : StackLang.HolProg 64 :=
.seq RemovedBody536_577 RemovedBody536_578

def RemovedBody536_580 : StackLang.HolProg 64 :=
.call (some (RemovedBody536_576, 0, 536, 18)) (Sum.inl 490) (some (RemovedBody536_579, 536, 19))

def RemovedBody536_581 : StackLang.HolProg 64 :=
.seq RemovedBody536_567 RemovedBody536_580

def RemovedBody536_582 : StackLang.HolProg 64 :=
.seq RemovedBody536_566 RemovedBody536_581

def RemovedBody536_583 : StackLang.HolProg 64 :=
.seq RemovedBody536_565 RemovedBody536_582

def RemovedBody536_584 : StackLang.HolProg 64 :=
.seq RemovedBody536_536 RemovedBody536_583

def RemovedBody536_585 : StackLang.HolProg 64 :=
.seq RemovedBody536_533 RemovedBody536_584

def RemovedBody536_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody536_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody536_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody536_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody536_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody536_591 : StackLang.HolProg 64 :=
.seq RemovedBody536_589 RemovedBody536_590

def RemovedBody536_592 : StackLang.HolProg 64 :=
.seq RemovedBody536_588 RemovedBody536_591

def RemovedBody536_593 : StackLang.HolProg 64 :=
.seq RemovedBody536_587 RemovedBody536_592

def RemovedBody536_594 : StackLang.HolProg 64 :=
.seq RemovedBody536_586 RemovedBody536_593

def RemovedBody536_595 : StackLang.HolProg 64 :=
.seq RemovedBody536_585 RemovedBody536_594

def RemovedBody536_596 : StackLang.HolProg 64 :=
.seq RemovedBody536_532 RemovedBody536_595

def RemovedBody536_597 : StackLang.HolProg 64 :=
.seq RemovedBody536_531 RemovedBody536_596

def RemovedBody536_598 : StackLang.HolProg 64 :=
.seq RemovedBody536_530 RemovedBody536_597

def RemovedBody536_599 : StackLang.HolProg 64 :=
.seq RemovedBody536_529 RemovedBody536_598

def RemovedBody536_600 : StackLang.HolProg 64 :=
.seq RemovedBody536_528 RemovedBody536_599

def RemovedBody536_601 : StackLang.HolProg 64 :=
.seq RemovedBody536_475 RemovedBody536_600

def RemovedBody536_602 : StackLang.HolProg 64 :=
.seq RemovedBody536_474 RemovedBody536_601

def RemovedBody536_603 : StackLang.HolProg 64 :=
.seq RemovedBody536_473 RemovedBody536_602

def RemovedBody536_604 : StackLang.HolProg 64 :=
.seq RemovedBody536_400 RemovedBody536_603

def RemovedBody536_605 : StackLang.HolProg 64 :=
.seq RemovedBody536_391 RemovedBody536_604

def RemovedBody536_606 : StackLang.HolProg 64 :=
.seq RemovedBody536_390 RemovedBody536_605

def RemovedBody536_607 : StackLang.HolProg 64 :=
.seq RemovedBody536_335 RemovedBody536_606

def RemovedBody536_608 : StackLang.HolProg 64 :=
.seq RemovedBody536_332 RemovedBody536_607

def RemovedBody536_609 : StackLang.HolProg 64 :=
.seq RemovedBody536_331 RemovedBody536_608

def RemovedBody536_610 : StackLang.HolProg 64 :=
.seq RemovedBody536_266 RemovedBody536_609

def RemovedBody536_611 : StackLang.HolProg 64 :=
.seq RemovedBody536_263 RemovedBody536_610

def RemovedBody536_612 : StackLang.HolProg 64 :=
.seq RemovedBody536_262 RemovedBody536_611

def RemovedBody536_613 : StackLang.HolProg 64 :=
.seq RemovedBody536_261 RemovedBody536_612

def RemovedBody536_614 : StackLang.HolProg 64 :=
.seq RemovedBody536_260 RemovedBody536_613

def RemovedBody536_615 : StackLang.HolProg 64 :=
.seq RemovedBody536_259 RemovedBody536_614

def RemovedBody536_616 : StackLang.HolProg 64 :=
.seq RemovedBody536_258 RemovedBody536_615

def RemovedBody536_617 : StackLang.HolProg 64 :=
.seq RemovedBody536_257 RemovedBody536_616

def RemovedBody536_618 : StackLang.HolProg 64 :=
.seq RemovedBody536_256 RemovedBody536_617

def RemovedBody536_619 : StackLang.HolProg 64 :=
.seq RemovedBody536_255 RemovedBody536_618

def RemovedBody536_620 : StackLang.HolProg 64 :=
.seq RemovedBody536_254 RemovedBody536_619

def RemovedBody536_621 : StackLang.HolProg 64 :=
.seq RemovedBody536_253 RemovedBody536_620

def RemovedBody536_622 : StackLang.HolProg 64 :=
.seq RemovedBody536_252 RemovedBody536_621

def RemovedBody536_623 : StackLang.HolProg 64 :=
.seq RemovedBody536_197 RemovedBody536_622

def RemovedBody536_624 : StackLang.HolProg 64 :=
.seq RemovedBody536_196 RemovedBody536_623

def RemovedBody536_625 : StackLang.HolProg 64 :=
.seq RemovedBody536_195 RemovedBody536_624

def RemovedBody536_626 : StackLang.HolProg 64 :=
.seq RemovedBody536_194 RemovedBody536_625

def RemovedBody536_627 : StackLang.HolProg 64 :=
.seq RemovedBody536_141 RemovedBody536_626

def RemovedBody536_628 : StackLang.HolProg 64 :=
.seq RemovedBody536_140 RemovedBody536_627

def RemovedBody536_629 : StackLang.HolProg 64 :=
.seq RemovedBody536_139 RemovedBody536_628

def RemovedBody536_630 : StackLang.HolProg 64 :=
.seq RemovedBody536_8 RemovedBody536_629

def RemovedBody536_631 : StackLang.HolProg 64 :=
.seq RemovedBody536_7 RemovedBody536_630

def RemovedBody536_632 : StackLang.HolProg 64 :=
.seq RemovedBody536_6 RemovedBody536_631

def Removed536 : Nat × StackLang.HolProg 64 := (536, RemovedBody536_632)
theorem Removed536_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc536 = Removed536 := by
  kernel_rfl
#print axioms Removed536_eq
end InitECandidate.Proofs.BackendStages
