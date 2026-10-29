import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc484
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody484_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody484_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody484_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody484_3 : StackLang.HolProg 64 :=
.seq RemovedBody484_1 RemovedBody484_2

def RemovedBody484_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody484_3 RemovedBody484_4

def RemovedBody484_6 : StackLang.HolProg 64 :=
.seq RemovedBody484_0 RemovedBody484_5

def RemovedBody484_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody484_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody484_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody484_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody484_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody484_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody484_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody484_17 : StackLang.HolProg 64 :=
.seq RemovedBody484_15 RemovedBody484_16

def RemovedBody484_18 : StackLang.HolProg 64 :=
.seq RemovedBody484_14 RemovedBody484_17

def RemovedBody484_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody484_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody484_21 : StackLang.HolProg 64 :=
.seq RemovedBody484_19 RemovedBody484_20

def RemovedBody484_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody484_18 RemovedBody484_21

def RemovedBody484_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody484_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody484_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody484_26 : StackLang.HolProg 64 :=
.seq RemovedBody484_24 RemovedBody484_25

def RemovedBody484_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody484_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody484_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody484_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody484_31 : StackLang.HolProg 64 :=
.seq RemovedBody484_29 RemovedBody484_30

def RemovedBody484_32 : StackLang.HolProg 64 :=
.seq RemovedBody484_28 RemovedBody484_31

def RemovedBody484_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1521#64)

def RemovedBody484_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody484_36 : StackLang.HolProg 64 :=
.seq RemovedBody484_34 RemovedBody484_35

def RemovedBody484_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody484_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody484_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody484_40 : StackLang.HolProg 64 :=
.seq RemovedBody484_38 RemovedBody484_39

def RemovedBody484_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody484_40 RemovedBody484_41

def RemovedBody484_43 : StackLang.HolProg 64 :=
.seq RemovedBody484_37 RemovedBody484_42

def RemovedBody484_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody484_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody484_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 484 3

def RemovedBody484_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody484_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody484_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody484_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody484_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody484_53 : StackLang.HolProg 64 :=
.seq RemovedBody484_51 RemovedBody484_52

def RemovedBody484_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody484_55 : StackLang.HolProg 64 :=
.seq RemovedBody484_53 RemovedBody484_54

def RemovedBody484_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody484_57 : StackLang.HolProg 64 :=
.seq RemovedBody484_55 RemovedBody484_56

def RemovedBody484_58 : StackLang.HolProg 64 :=
.seq RemovedBody484_50 RemovedBody484_57

def RemovedBody484_59 : StackLang.HolProg 64 :=
.seq RemovedBody484_49 RemovedBody484_58

def RemovedBody484_60 : StackLang.HolProg 64 :=
.seq RemovedBody484_48 RemovedBody484_59

def RemovedBody484_61 : StackLang.HolProg 64 :=
.seq RemovedBody484_47 RemovedBody484_60

def RemovedBody484_62 : StackLang.HolProg 64 :=
.seq RemovedBody484_46 RemovedBody484_61

def RemovedBody484_63 : StackLang.HolProg 64 :=
.seq RemovedBody484_45 RemovedBody484_62

def RemovedBody484_64 : StackLang.HolProg 64 :=
.seq RemovedBody484_44 RemovedBody484_63

def RemovedBody484_65 : StackLang.HolProg 64 :=
.seq RemovedBody484_43 RemovedBody484_64

def RemovedBody484_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody484_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody484_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody484_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody484_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody484_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody484_75 : StackLang.HolProg 64 :=
.seq RemovedBody484_73 RemovedBody484_74

def RemovedBody484_76 : StackLang.HolProg 64 :=
.seq RemovedBody484_72 RemovedBody484_75

def RemovedBody484_77 : StackLang.HolProg 64 :=
.seq RemovedBody484_71 RemovedBody484_76

def RemovedBody484_78 : StackLang.HolProg 64 :=
.seq RemovedBody484_70 RemovedBody484_77

def RemovedBody484_79 : StackLang.HolProg 64 :=
.seq RemovedBody484_69 RemovedBody484_78

def RemovedBody484_80 : StackLang.HolProg 64 :=
.seq RemovedBody484_68 RemovedBody484_79

def RemovedBody484_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody484_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody484_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody484_84 : StackLang.HolProg 64 :=
.seq RemovedBody484_82 RemovedBody484_83

def RemovedBody484_85 : StackLang.HolProg 64 :=
.seq RemovedBody484_81 RemovedBody484_84

def RemovedBody484_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody484_87 : StackLang.HolProg 64 :=
.seq RemovedBody484_85 RemovedBody484_86

def RemovedBody484_88 : StackLang.HolProg 64 :=
.call (some (RemovedBody484_80, 0, 484, 2)) (Sum.inl 77) (some (RemovedBody484_87, 484, 3))

def RemovedBody484_89 : StackLang.HolProg 64 :=
.seq RemovedBody484_67 RemovedBody484_88

def RemovedBody484_90 : StackLang.HolProg 64 :=
.seq RemovedBody484_66 RemovedBody484_89

def RemovedBody484_91 : StackLang.HolProg 64 :=
.seq RemovedBody484_65 RemovedBody484_90

def RemovedBody484_92 : StackLang.HolProg 64 :=
.seq RemovedBody484_36 RemovedBody484_91

def RemovedBody484_93 : StackLang.HolProg 64 :=
.seq RemovedBody484_33 RemovedBody484_92

def RemovedBody484_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody484_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_96 : StackLang.HolProg 64 :=
.seq RemovedBody484_94 RemovedBody484_95

def RemovedBody484_97 : StackLang.HolProg 64 :=
.seq RemovedBody484_93 RemovedBody484_96

def RemovedBody484_98 : StackLang.HolProg 64 :=
.seq RemovedBody484_32 RemovedBody484_97

def RemovedBody484_99 : StackLang.HolProg 64 :=
.seq RemovedBody484_27 RemovedBody484_98

def RemovedBody484_100 : StackLang.HolProg 64 :=
.seq RemovedBody484_26 RemovedBody484_99

def RemovedBody484_101 : StackLang.HolProg 64 :=
.seq RemovedBody484_23 RemovedBody484_100

def RemovedBody484_102 : StackLang.HolProg 64 :=
.seq RemovedBody484_22 RemovedBody484_101

def RemovedBody484_103 : StackLang.HolProg 64 :=
.seq RemovedBody484_13 RemovedBody484_102

def RemovedBody484_104 : StackLang.HolProg 64 :=
.seq RemovedBody484_12 RemovedBody484_103

def RemovedBody484_105 : StackLang.HolProg 64 :=
.seq RemovedBody484_11 RemovedBody484_104

def RemovedBody484_106 : StackLang.HolProg 64 :=
.seq RemovedBody484_10 RemovedBody484_105

def RemovedBody484_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody484_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody484_109 : StackLang.HolProg 64 :=
.seq RemovedBody484_107 RemovedBody484_108

def RemovedBody484_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody484_106 RemovedBody484_109

def RemovedBody484_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody484_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody484_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody484_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1522#64)

def RemovedBody484_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody484_120 : StackLang.HolProg 64 :=
.seq RemovedBody484_118 RemovedBody484_119

def RemovedBody484_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody484_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody484_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody484_124 : StackLang.HolProg 64 :=
.seq RemovedBody484_122 RemovedBody484_123

def RemovedBody484_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_126 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody484_124 RemovedBody484_125

def RemovedBody484_127 : StackLang.HolProg 64 :=
.seq RemovedBody484_121 RemovedBody484_126

def RemovedBody484_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody484_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody484_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 484 5

def RemovedBody484_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody484_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody484_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody484_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody484_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody484_137 : StackLang.HolProg 64 :=
.seq RemovedBody484_135 RemovedBody484_136

def RemovedBody484_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody484_139 : StackLang.HolProg 64 :=
.seq RemovedBody484_137 RemovedBody484_138

def RemovedBody484_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody484_141 : StackLang.HolProg 64 :=
.seq RemovedBody484_139 RemovedBody484_140

def RemovedBody484_142 : StackLang.HolProg 64 :=
.seq RemovedBody484_134 RemovedBody484_141

def RemovedBody484_143 : StackLang.HolProg 64 :=
.seq RemovedBody484_133 RemovedBody484_142

def RemovedBody484_144 : StackLang.HolProg 64 :=
.seq RemovedBody484_132 RemovedBody484_143

def RemovedBody484_145 : StackLang.HolProg 64 :=
.seq RemovedBody484_131 RemovedBody484_144

def RemovedBody484_146 : StackLang.HolProg 64 :=
.seq RemovedBody484_130 RemovedBody484_145

def RemovedBody484_147 : StackLang.HolProg 64 :=
.seq RemovedBody484_129 RemovedBody484_146

def RemovedBody484_148 : StackLang.HolProg 64 :=
.seq RemovedBody484_128 RemovedBody484_147

def RemovedBody484_149 : StackLang.HolProg 64 :=
.seq RemovedBody484_127 RemovedBody484_148

def RemovedBody484_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody484_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody484_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody484_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody484_157 : StackLang.HolProg 64 :=
.seq RemovedBody484_155 RemovedBody484_156

def RemovedBody484_158 : StackLang.HolProg 64 :=
.seq RemovedBody484_154 RemovedBody484_157

def RemovedBody484_159 : StackLang.HolProg 64 :=
.seq RemovedBody484_153 RemovedBody484_158

def RemovedBody484_160 : StackLang.HolProg 64 :=
.seq RemovedBody484_152 RemovedBody484_159

def RemovedBody484_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody484_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody484_163 : StackLang.HolProg 64 :=
.seq RemovedBody484_161 RemovedBody484_162

def RemovedBody484_164 : StackLang.HolProg 64 :=
.call (some (RemovedBody484_160, 0, 484, 4)) (Sum.inl 78) (some (RemovedBody484_163, 484, 5))

def RemovedBody484_165 : StackLang.HolProg 64 :=
.seq RemovedBody484_151 RemovedBody484_164

def RemovedBody484_166 : StackLang.HolProg 64 :=
.seq RemovedBody484_150 RemovedBody484_165

def RemovedBody484_167 : StackLang.HolProg 64 :=
.seq RemovedBody484_149 RemovedBody484_166

def RemovedBody484_168 : StackLang.HolProg 64 :=
.seq RemovedBody484_120 RemovedBody484_167

def RemovedBody484_169 : StackLang.HolProg 64 :=
.seq RemovedBody484_117 RemovedBody484_168

def RemovedBody484_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody484_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody484_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody484_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody484_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody484_175 : StackLang.HolProg 64 :=
.seq RemovedBody484_173 RemovedBody484_174

def RemovedBody484_176 : StackLang.HolProg 64 :=
.seq RemovedBody484_172 RemovedBody484_175

def RemovedBody484_177 : StackLang.HolProg 64 :=
.seq RemovedBody484_171 RemovedBody484_176

def RemovedBody484_178 : StackLang.HolProg 64 :=
.seq RemovedBody484_170 RemovedBody484_177

def RemovedBody484_179 : StackLang.HolProg 64 :=
.seq RemovedBody484_169 RemovedBody484_178

def RemovedBody484_180 : StackLang.HolProg 64 :=
.seq RemovedBody484_116 RemovedBody484_179

def RemovedBody484_181 : StackLang.HolProg 64 :=
.seq RemovedBody484_115 RemovedBody484_180

def RemovedBody484_182 : StackLang.HolProg 64 :=
.seq RemovedBody484_114 RemovedBody484_181

def RemovedBody484_183 : StackLang.HolProg 64 :=
.seq RemovedBody484_113 RemovedBody484_182

def RemovedBody484_184 : StackLang.HolProg 64 :=
.seq RemovedBody484_112 RemovedBody484_183

def RemovedBody484_185 : StackLang.HolProg 64 :=
.seq RemovedBody484_111 RemovedBody484_184

def RemovedBody484_186 : StackLang.HolProg 64 :=
.seq RemovedBody484_110 RemovedBody484_185

def RemovedBody484_187 : StackLang.HolProg 64 :=
.seq RemovedBody484_9 RemovedBody484_186

def RemovedBody484_188 : StackLang.HolProg 64 :=
.seq RemovedBody484_8 RemovedBody484_187

def RemovedBody484_189 : StackLang.HolProg 64 :=
.seq RemovedBody484_7 RemovedBody484_188

def RemovedBody484_190 : StackLang.HolProg 64 :=
.seq RemovedBody484_6 RemovedBody484_189

def Removed484 : Nat × StackLang.HolProg 64 := (484, RemovedBody484_190)
theorem Removed484_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc484 = Removed484 := by
  kernel_rfl
#print axioms Removed484_eq
end InitECandidate.Proofs.BackendStages
