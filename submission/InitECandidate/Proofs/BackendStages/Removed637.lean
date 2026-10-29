import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc637
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody637_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody637_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody637_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody637_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody637_7 : StackLang.HolProg 64 :=
.seq RemovedBody637_5 RemovedBody637_6

def RemovedBody637_8 : StackLang.HolProg 64 :=
.seq RemovedBody637_4 RemovedBody637_7

def RemovedBody637_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody637_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody637_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody637_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody637_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody637_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody637_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody637_23 : StackLang.HolProg 64 :=
.seq RemovedBody637_21 RemovedBody637_22

def RemovedBody637_24 : StackLang.HolProg 64 :=
.seq RemovedBody637_20 RemovedBody637_23

def RemovedBody637_25 : StackLang.HolProg 64 :=
.seq RemovedBody637_19 RemovedBody637_24

def RemovedBody637_26 : StackLang.HolProg 64 :=
.seq RemovedBody637_18 RemovedBody637_25

def RemovedBody637_27 : StackLang.HolProg 64 :=
.seq RemovedBody637_17 RemovedBody637_26

def RemovedBody637_28 : StackLang.HolProg 64 :=
.seq RemovedBody637_16 RemovedBody637_27

def RemovedBody637_29 : StackLang.HolProg 64 :=
.seq RemovedBody637_15 RemovedBody637_28

def RemovedBody637_30 : StackLang.HolProg 64 :=
.seq RemovedBody637_14 RemovedBody637_29

def RemovedBody637_31 : StackLang.HolProg 64 :=
.seq RemovedBody637_13 RemovedBody637_30

def RemovedBody637_32 : StackLang.HolProg 64 :=
.seq RemovedBody637_12 RemovedBody637_31

def RemovedBody637_33 : StackLang.HolProg 64 :=
.seq RemovedBody637_11 RemovedBody637_32

def RemovedBody637_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody637_37 : StackLang.HolProg 64 :=
.seq RemovedBody637_35 RemovedBody637_36

def RemovedBody637_38 : StackLang.HolProg 64 :=
.seq RemovedBody637_34 RemovedBody637_37

def RemovedBody637_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody637_33 RemovedBody637_38

def RemovedBody637_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_42 : StackLang.HolProg 64 :=
.seq RemovedBody637_40 RemovedBody637_41

def RemovedBody637_43 : StackLang.HolProg 64 :=
.seq RemovedBody637_39 RemovedBody637_42

def RemovedBody637_44 : StackLang.HolProg 64 :=
.seq RemovedBody637_10 RemovedBody637_43

def RemovedBody637_45 : StackLang.HolProg 64 :=
.seq RemovedBody637_9 RemovedBody637_44

def RemovedBody637_46 : StackLang.HolProg 64 :=
.loop RemovedBody637_45

def RemovedBody637_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def RemovedBody637_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody637_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody637_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody637_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody637_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def RemovedBody637_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody637_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 14 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody637_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody637_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody637_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody637_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody637_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody637_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody637_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody637_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody637_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4294967295#64)

def RemovedBody637_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody637_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody637_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody637_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody637_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody637_90 : StackLang.HolProg 64 :=
.seq RemovedBody637_88 RemovedBody637_89

def RemovedBody637_91 : StackLang.HolProg 64 :=
.seq RemovedBody637_87 RemovedBody637_90

def RemovedBody637_92 : StackLang.HolProg 64 :=
.seq RemovedBody637_86 RemovedBody637_91

def RemovedBody637_93 : StackLang.HolProg 64 :=
.seq RemovedBody637_85 RemovedBody637_92

def RemovedBody637_94 : StackLang.HolProg 64 :=
.seq RemovedBody637_84 RemovedBody637_93

def RemovedBody637_95 : StackLang.HolProg 64 :=
.seq RemovedBody637_83 RemovedBody637_94

def RemovedBody637_96 : StackLang.HolProg 64 :=
.seq RemovedBody637_82 RemovedBody637_95

def RemovedBody637_97 : StackLang.HolProg 64 :=
.seq RemovedBody637_81 RemovedBody637_96

def RemovedBody637_98 : StackLang.HolProg 64 :=
.seq RemovedBody637_80 RemovedBody637_97

def RemovedBody637_99 : StackLang.HolProg 64 :=
.seq RemovedBody637_79 RemovedBody637_98

def RemovedBody637_100 : StackLang.HolProg 64 :=
.seq RemovedBody637_78 RemovedBody637_99

def RemovedBody637_101 : StackLang.HolProg 64 :=
.seq RemovedBody637_77 RemovedBody637_100

def RemovedBody637_102 : StackLang.HolProg 64 :=
.seq RemovedBody637_76 RemovedBody637_101

def RemovedBody637_103 : StackLang.HolProg 64 :=
.seq RemovedBody637_75 RemovedBody637_102

def RemovedBody637_104 : StackLang.HolProg 64 :=
.seq RemovedBody637_74 RemovedBody637_103

def RemovedBody637_105 : StackLang.HolProg 64 :=
.seq RemovedBody637_73 RemovedBody637_104

def RemovedBody637_106 : StackLang.HolProg 64 :=
.seq RemovedBody637_72 RemovedBody637_105

def RemovedBody637_107 : StackLang.HolProg 64 :=
.seq RemovedBody637_71 RemovedBody637_106

def RemovedBody637_108 : StackLang.HolProg 64 :=
.seq RemovedBody637_70 RemovedBody637_107

def RemovedBody637_109 : StackLang.HolProg 64 :=
.seq RemovedBody637_69 RemovedBody637_108

def RemovedBody637_110 : StackLang.HolProg 64 :=
.seq RemovedBody637_68 RemovedBody637_109

def RemovedBody637_111 : StackLang.HolProg 64 :=
.seq RemovedBody637_67 RemovedBody637_110

def RemovedBody637_112 : StackLang.HolProg 64 :=
.seq RemovedBody637_66 RemovedBody637_111

def RemovedBody637_113 : StackLang.HolProg 64 :=
.seq RemovedBody637_65 RemovedBody637_112

def RemovedBody637_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody637_117 : StackLang.HolProg 64 :=
.seq RemovedBody637_115 RemovedBody637_116

def RemovedBody637_118 : StackLang.HolProg 64 :=
.seq RemovedBody637_114 RemovedBody637_117

def RemovedBody637_119 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody637_113 RemovedBody637_118

def RemovedBody637_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_122 : StackLang.HolProg 64 :=
.seq RemovedBody637_120 RemovedBody637_121

def RemovedBody637_123 : StackLang.HolProg 64 :=
.seq RemovedBody637_119 RemovedBody637_122

def RemovedBody637_124 : StackLang.HolProg 64 :=
.seq RemovedBody637_64 RemovedBody637_123

def RemovedBody637_125 : StackLang.HolProg 64 :=
.loop RemovedBody637_124

def RemovedBody637_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody637_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody637_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody637_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody637_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody637_137 : StackLang.HolProg 64 :=
.seq RemovedBody637_135 RemovedBody637_136

def RemovedBody637_138 : StackLang.HolProg 64 :=
.seq RemovedBody637_134 RemovedBody637_137

def RemovedBody637_139 : StackLang.HolProg 64 :=
.seq RemovedBody637_133 RemovedBody637_138

def RemovedBody637_140 : StackLang.HolProg 64 :=
.seq RemovedBody637_132 RemovedBody637_139

def RemovedBody637_141 : StackLang.HolProg 64 :=
.seq RemovedBody637_131 RemovedBody637_140

def RemovedBody637_142 : StackLang.HolProg 64 :=
.seq RemovedBody637_130 RemovedBody637_141

def RemovedBody637_143 : StackLang.HolProg 64 :=
.seq RemovedBody637_129 RemovedBody637_142

def RemovedBody637_144 : StackLang.HolProg 64 :=
.seq RemovedBody637_128 RemovedBody637_143

def RemovedBody637_145 : StackLang.HolProg 64 :=
.seq RemovedBody637_127 RemovedBody637_144

def RemovedBody637_146 : StackLang.HolProg 64 :=
.seq RemovedBody637_126 RemovedBody637_145

def RemovedBody637_147 : StackLang.HolProg 64 :=
.seq RemovedBody637_125 RemovedBody637_146

def RemovedBody637_148 : StackLang.HolProg 64 :=
.seq RemovedBody637_63 RemovedBody637_147

def RemovedBody637_149 : StackLang.HolProg 64 :=
.seq RemovedBody637_62 RemovedBody637_148

def RemovedBody637_150 : StackLang.HolProg 64 :=
.seq RemovedBody637_61 RemovedBody637_149

def RemovedBody637_151 : StackLang.HolProg 64 :=
.seq RemovedBody637_60 RemovedBody637_150

def RemovedBody637_152 : StackLang.HolProg 64 :=
.seq RemovedBody637_59 RemovedBody637_151

def RemovedBody637_153 : StackLang.HolProg 64 :=
.seq RemovedBody637_58 RemovedBody637_152

def RemovedBody637_154 : StackLang.HolProg 64 :=
.seq RemovedBody637_57 RemovedBody637_153

def RemovedBody637_155 : StackLang.HolProg 64 :=
.seq RemovedBody637_56 RemovedBody637_154

def RemovedBody637_156 : StackLang.HolProg 64 :=
.seq RemovedBody637_55 RemovedBody637_155

def RemovedBody637_157 : StackLang.HolProg 64 :=
.seq RemovedBody637_54 RemovedBody637_156

def RemovedBody637_158 : StackLang.HolProg 64 :=
.seq RemovedBody637_53 RemovedBody637_157

def RemovedBody637_159 : StackLang.HolProg 64 :=
.seq RemovedBody637_52 RemovedBody637_158

def RemovedBody637_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody637_162 : StackLang.HolProg 64 :=
.seq RemovedBody637_160 RemovedBody637_161

def RemovedBody637_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) RemovedBody637_159 RemovedBody637_162

def RemovedBody637_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_166 : StackLang.HolProg 64 :=
.seq RemovedBody637_164 RemovedBody637_165

def RemovedBody637_167 : StackLang.HolProg 64 :=
.seq RemovedBody637_163 RemovedBody637_166

def RemovedBody637_168 : StackLang.HolProg 64 :=
.seq RemovedBody637_51 RemovedBody637_167

def RemovedBody637_169 : StackLang.HolProg 64 :=
.loop RemovedBody637_168

def RemovedBody637_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody637_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody637_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody637_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody637_174 : StackLang.HolProg 64 :=
.seq RemovedBody637_172 RemovedBody637_173

def RemovedBody637_175 : StackLang.HolProg 64 :=
.seq RemovedBody637_171 RemovedBody637_174

def RemovedBody637_176 : StackLang.HolProg 64 :=
.seq RemovedBody637_170 RemovedBody637_175

def RemovedBody637_177 : StackLang.HolProg 64 :=
.seq RemovedBody637_169 RemovedBody637_176

def RemovedBody637_178 : StackLang.HolProg 64 :=
.seq RemovedBody637_50 RemovedBody637_177

def RemovedBody637_179 : StackLang.HolProg 64 :=
.seq RemovedBody637_49 RemovedBody637_178

def RemovedBody637_180 : StackLang.HolProg 64 :=
.seq RemovedBody637_48 RemovedBody637_179

def RemovedBody637_181 : StackLang.HolProg 64 :=
.seq RemovedBody637_47 RemovedBody637_180

def RemovedBody637_182 : StackLang.HolProg 64 :=
.seq RemovedBody637_46 RemovedBody637_181

def RemovedBody637_183 : StackLang.HolProg 64 :=
.seq RemovedBody637_8 RemovedBody637_182

def RemovedBody637_184 : StackLang.HolProg 64 :=
.seq RemovedBody637_3 RemovedBody637_183

def RemovedBody637_185 : StackLang.HolProg 64 :=
.seq RemovedBody637_2 RemovedBody637_184

def RemovedBody637_186 : StackLang.HolProg 64 :=
.seq RemovedBody637_1 RemovedBody637_185

def RemovedBody637_187 : StackLang.HolProg 64 :=
.seq RemovedBody637_0 RemovedBody637_186

def Removed637 : Nat × StackLang.HolProg 64 := (637, RemovedBody637_187)
theorem Removed637_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc637 = Removed637 := by
  kernel_rfl
#print axioms Removed637_eq
end InitECandidate.Proofs.BackendStages
