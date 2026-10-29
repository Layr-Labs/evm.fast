import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc455
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody455_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody455_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody455_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody455_3 : StackLang.HolProg 64 :=
.seq RemovedBody455_1 RemovedBody455_2

def RemovedBody455_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody455_3 RemovedBody455_4

def RemovedBody455_6 : StackLang.HolProg 64 :=
.seq RemovedBody455_0 RemovedBody455_5

def RemovedBody455_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody455_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1397#64)

def RemovedBody455_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody455_11 : StackLang.HolProg 64 :=
.seq RemovedBody455_9 RemovedBody455_10

def RemovedBody455_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody455_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody455_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody455_15 : StackLang.HolProg 64 :=
.seq RemovedBody455_13 RemovedBody455_14

def RemovedBody455_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody455_15 RemovedBody455_16

def RemovedBody455_18 : StackLang.HolProg 64 :=
.seq RemovedBody455_12 RemovedBody455_17

def RemovedBody455_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody455_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody455_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 455 3

def RemovedBody455_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody455_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody455_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody455_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody455_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody455_28 : StackLang.HolProg 64 :=
.seq RemovedBody455_26 RemovedBody455_27

def RemovedBody455_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody455_30 : StackLang.HolProg 64 :=
.seq RemovedBody455_28 RemovedBody455_29

def RemovedBody455_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody455_32 : StackLang.HolProg 64 :=
.seq RemovedBody455_30 RemovedBody455_31

def RemovedBody455_33 : StackLang.HolProg 64 :=
.seq RemovedBody455_25 RemovedBody455_32

def RemovedBody455_34 : StackLang.HolProg 64 :=
.seq RemovedBody455_24 RemovedBody455_33

def RemovedBody455_35 : StackLang.HolProg 64 :=
.seq RemovedBody455_23 RemovedBody455_34

def RemovedBody455_36 : StackLang.HolProg 64 :=
.seq RemovedBody455_22 RemovedBody455_35

def RemovedBody455_37 : StackLang.HolProg 64 :=
.seq RemovedBody455_21 RemovedBody455_36

def RemovedBody455_38 : StackLang.HolProg 64 :=
.seq RemovedBody455_20 RemovedBody455_37

def RemovedBody455_39 : StackLang.HolProg 64 :=
.seq RemovedBody455_19 RemovedBody455_38

def RemovedBody455_40 : StackLang.HolProg 64 :=
.seq RemovedBody455_18 RemovedBody455_39

def RemovedBody455_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody455_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody455_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody455_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_48 : StackLang.HolProg 64 :=
.seq RemovedBody455_46 RemovedBody455_47

def RemovedBody455_49 : StackLang.HolProg 64 :=
.seq RemovedBody455_45 RemovedBody455_48

def RemovedBody455_50 : StackLang.HolProg 64 :=
.seq RemovedBody455_44 RemovedBody455_49

def RemovedBody455_51 : StackLang.HolProg 64 :=
.seq RemovedBody455_43 RemovedBody455_50

def RemovedBody455_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody455_54 : StackLang.HolProg 64 :=
.seq RemovedBody455_52 RemovedBody455_53

def RemovedBody455_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody455_51, 0, 455, 2)) (Sum.inl 454) (some (RemovedBody455_54, 455, 3))

def RemovedBody455_56 : StackLang.HolProg 64 :=
.seq RemovedBody455_42 RemovedBody455_55

def RemovedBody455_57 : StackLang.HolProg 64 :=
.seq RemovedBody455_41 RemovedBody455_56

def RemovedBody455_58 : StackLang.HolProg 64 :=
.seq RemovedBody455_40 RemovedBody455_57

def RemovedBody455_59 : StackLang.HolProg 64 :=
.seq RemovedBody455_11 RemovedBody455_58

def RemovedBody455_60 : StackLang.HolProg 64 :=
.seq RemovedBody455_8 RemovedBody455_59

def RemovedBody455_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody455_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1398#64)

def RemovedBody455_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody455_66 : StackLang.HolProg 64 :=
.seq RemovedBody455_64 RemovedBody455_65

def RemovedBody455_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody455_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody455_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody455_70 : StackLang.HolProg 64 :=
.seq RemovedBody455_68 RemovedBody455_69

def RemovedBody455_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody455_70 RemovedBody455_71

def RemovedBody455_73 : StackLang.HolProg 64 :=
.seq RemovedBody455_67 RemovedBody455_72

def RemovedBody455_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody455_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody455_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 455 5

def RemovedBody455_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody455_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody455_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody455_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody455_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody455_83 : StackLang.HolProg 64 :=
.seq RemovedBody455_81 RemovedBody455_82

def RemovedBody455_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody455_85 : StackLang.HolProg 64 :=
.seq RemovedBody455_83 RemovedBody455_84

def RemovedBody455_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody455_87 : StackLang.HolProg 64 :=
.seq RemovedBody455_85 RemovedBody455_86

def RemovedBody455_88 : StackLang.HolProg 64 :=
.seq RemovedBody455_80 RemovedBody455_87

def RemovedBody455_89 : StackLang.HolProg 64 :=
.seq RemovedBody455_79 RemovedBody455_88

def RemovedBody455_90 : StackLang.HolProg 64 :=
.seq RemovedBody455_78 RemovedBody455_89

def RemovedBody455_91 : StackLang.HolProg 64 :=
.seq RemovedBody455_77 RemovedBody455_90

def RemovedBody455_92 : StackLang.HolProg 64 :=
.seq RemovedBody455_76 RemovedBody455_91

def RemovedBody455_93 : StackLang.HolProg 64 :=
.seq RemovedBody455_75 RemovedBody455_92

def RemovedBody455_94 : StackLang.HolProg 64 :=
.seq RemovedBody455_74 RemovedBody455_93

def RemovedBody455_95 : StackLang.HolProg 64 :=
.seq RemovedBody455_73 RemovedBody455_94

def RemovedBody455_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody455_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody455_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody455_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody455_103 : StackLang.HolProg 64 :=
.seq RemovedBody455_101 RemovedBody455_102

def RemovedBody455_104 : StackLang.HolProg 64 :=
.seq RemovedBody455_100 RemovedBody455_103

def RemovedBody455_105 : StackLang.HolProg 64 :=
.seq RemovedBody455_99 RemovedBody455_104

def RemovedBody455_106 : StackLang.HolProg 64 :=
.seq RemovedBody455_98 RemovedBody455_105

def RemovedBody455_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody455_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody455_109 : StackLang.HolProg 64 :=
.seq RemovedBody455_107 RemovedBody455_108

def RemovedBody455_110 : StackLang.HolProg 64 :=
.call (some (RemovedBody455_106, 0, 455, 4)) (Sum.inl 433) (some (RemovedBody455_109, 455, 5))

def RemovedBody455_111 : StackLang.HolProg 64 :=
.seq RemovedBody455_97 RemovedBody455_110

def RemovedBody455_112 : StackLang.HolProg 64 :=
.seq RemovedBody455_96 RemovedBody455_111

def RemovedBody455_113 : StackLang.HolProg 64 :=
.seq RemovedBody455_95 RemovedBody455_112

def RemovedBody455_114 : StackLang.HolProg 64 :=
.seq RemovedBody455_66 RemovedBody455_113

def RemovedBody455_115 : StackLang.HolProg 64 :=
.seq RemovedBody455_63 RemovedBody455_114

def RemovedBody455_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody455_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody455_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody455_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody455_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody455_121 : StackLang.HolProg 64 :=
.seq RemovedBody455_119 RemovedBody455_120

def RemovedBody455_122 : StackLang.HolProg 64 :=
.seq RemovedBody455_118 RemovedBody455_121

def RemovedBody455_123 : StackLang.HolProg 64 :=
.seq RemovedBody455_117 RemovedBody455_122

def RemovedBody455_124 : StackLang.HolProg 64 :=
.seq RemovedBody455_116 RemovedBody455_123

def RemovedBody455_125 : StackLang.HolProg 64 :=
.seq RemovedBody455_115 RemovedBody455_124

def RemovedBody455_126 : StackLang.HolProg 64 :=
.seq RemovedBody455_62 RemovedBody455_125

def RemovedBody455_127 : StackLang.HolProg 64 :=
.seq RemovedBody455_61 RemovedBody455_126

def RemovedBody455_128 : StackLang.HolProg 64 :=
.seq RemovedBody455_60 RemovedBody455_127

def RemovedBody455_129 : StackLang.HolProg 64 :=
.seq RemovedBody455_7 RemovedBody455_128

def RemovedBody455_130 : StackLang.HolProg 64 :=
.seq RemovedBody455_6 RemovedBody455_129

def Removed455 : Nat × StackLang.HolProg 64 := (455, RemovedBody455_130)
theorem Removed455_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc455 = Removed455 := by
  kernel_rfl
#print axioms Removed455_eq
end InitECandidate.Proofs.BackendStages
