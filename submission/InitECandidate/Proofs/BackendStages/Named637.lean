import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed637
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody637_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody637_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody637_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody637_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody637_7 : StackLang.HolProg 64 :=
.seq NamedBody637_5 NamedBody637_6

def NamedBody637_8 : StackLang.HolProg 64 :=
.seq NamedBody637_4 NamedBody637_7

def NamedBody637_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody637_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody637_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody637_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody637_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody637_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody637_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody637_23 : StackLang.HolProg 64 :=
.seq NamedBody637_21 NamedBody637_22

def NamedBody637_24 : StackLang.HolProg 64 :=
.seq NamedBody637_20 NamedBody637_23

def NamedBody637_25 : StackLang.HolProg 64 :=
.seq NamedBody637_19 NamedBody637_24

def NamedBody637_26 : StackLang.HolProg 64 :=
.seq NamedBody637_18 NamedBody637_25

def NamedBody637_27 : StackLang.HolProg 64 :=
.seq NamedBody637_17 NamedBody637_26

def NamedBody637_28 : StackLang.HolProg 64 :=
.seq NamedBody637_16 NamedBody637_27

def NamedBody637_29 : StackLang.HolProg 64 :=
.seq NamedBody637_15 NamedBody637_28

def NamedBody637_30 : StackLang.HolProg 64 :=
.seq NamedBody637_14 NamedBody637_29

def NamedBody637_31 : StackLang.HolProg 64 :=
.seq NamedBody637_13 NamedBody637_30

def NamedBody637_32 : StackLang.HolProg 64 :=
.seq NamedBody637_12 NamedBody637_31

def NamedBody637_33 : StackLang.HolProg 64 :=
.seq NamedBody637_11 NamedBody637_32

def NamedBody637_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody637_37 : StackLang.HolProg 64 :=
.seq NamedBody637_35 NamedBody637_36

def NamedBody637_38 : StackLang.HolProg 64 :=
.seq NamedBody637_34 NamedBody637_37

def NamedBody637_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody637_33 NamedBody637_38

def NamedBody637_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_42 : StackLang.HolProg 64 :=
.seq NamedBody637_40 NamedBody637_41

def NamedBody637_43 : StackLang.HolProg 64 :=
.seq NamedBody637_39 NamedBody637_42

def NamedBody637_44 : StackLang.HolProg 64 :=
.seq NamedBody637_10 NamedBody637_43

def NamedBody637_45 : StackLang.HolProg 64 :=
.seq NamedBody637_9 NamedBody637_44

def NamedBody637_46 : StackLang.HolProg 64 :=
.loop NamedBody637_45

def NamedBody637_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 0#64)

def NamedBody637_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 29
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody637_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody637_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody637_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody637_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 30 0#64)

def NamedBody637_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 27 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody637_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 14 30
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody637_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody637_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody637_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody637_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody637_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody637_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody637_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody637_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody637_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 4294967295#64)

def NamedBody637_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody637_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody637_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody637_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 30 30
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody637_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody637_90 : StackLang.HolProg 64 :=
.seq NamedBody637_88 NamedBody637_89

def NamedBody637_91 : StackLang.HolProg 64 :=
.seq NamedBody637_87 NamedBody637_90

def NamedBody637_92 : StackLang.HolProg 64 :=
.seq NamedBody637_86 NamedBody637_91

def NamedBody637_93 : StackLang.HolProg 64 :=
.seq NamedBody637_85 NamedBody637_92

def NamedBody637_94 : StackLang.HolProg 64 :=
.seq NamedBody637_84 NamedBody637_93

def NamedBody637_95 : StackLang.HolProg 64 :=
.seq NamedBody637_83 NamedBody637_94

def NamedBody637_96 : StackLang.HolProg 64 :=
.seq NamedBody637_82 NamedBody637_95

def NamedBody637_97 : StackLang.HolProg 64 :=
.seq NamedBody637_81 NamedBody637_96

def NamedBody637_98 : StackLang.HolProg 64 :=
.seq NamedBody637_80 NamedBody637_97

def NamedBody637_99 : StackLang.HolProg 64 :=
.seq NamedBody637_79 NamedBody637_98

def NamedBody637_100 : StackLang.HolProg 64 :=
.seq NamedBody637_78 NamedBody637_99

def NamedBody637_101 : StackLang.HolProg 64 :=
.seq NamedBody637_77 NamedBody637_100

def NamedBody637_102 : StackLang.HolProg 64 :=
.seq NamedBody637_76 NamedBody637_101

def NamedBody637_103 : StackLang.HolProg 64 :=
.seq NamedBody637_75 NamedBody637_102

def NamedBody637_104 : StackLang.HolProg 64 :=
.seq NamedBody637_74 NamedBody637_103

def NamedBody637_105 : StackLang.HolProg 64 :=
.seq NamedBody637_73 NamedBody637_104

def NamedBody637_106 : StackLang.HolProg 64 :=
.seq NamedBody637_72 NamedBody637_105

def NamedBody637_107 : StackLang.HolProg 64 :=
.seq NamedBody637_71 NamedBody637_106

def NamedBody637_108 : StackLang.HolProg 64 :=
.seq NamedBody637_70 NamedBody637_107

def NamedBody637_109 : StackLang.HolProg 64 :=
.seq NamedBody637_69 NamedBody637_108

def NamedBody637_110 : StackLang.HolProg 64 :=
.seq NamedBody637_68 NamedBody637_109

def NamedBody637_111 : StackLang.HolProg 64 :=
.seq NamedBody637_67 NamedBody637_110

def NamedBody637_112 : StackLang.HolProg 64 :=
.seq NamedBody637_66 NamedBody637_111

def NamedBody637_113 : StackLang.HolProg 64 :=
.seq NamedBody637_65 NamedBody637_112

def NamedBody637_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody637_117 : StackLang.HolProg 64 :=
.seq NamedBody637_115 NamedBody637_116

def NamedBody637_118 : StackLang.HolProg 64 :=
.seq NamedBody637_114 NamedBody637_117

def NamedBody637_119 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 30 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody637_113 NamedBody637_118

def NamedBody637_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_122 : StackLang.HolProg 64 :=
.seq NamedBody637_120 NamedBody637_121

def NamedBody637_123 : StackLang.HolProg 64 :=
.seq NamedBody637_119 NamedBody637_122

def NamedBody637_124 : StackLang.HolProg 64 :=
.seq NamedBody637_64 NamedBody637_123

def NamedBody637_125 : StackLang.HolProg 64 :=
.loop NamedBody637_124

def NamedBody637_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody637_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody637_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody637_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 29 29
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody637_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody637_137 : StackLang.HolProg 64 :=
.seq NamedBody637_135 NamedBody637_136

def NamedBody637_138 : StackLang.HolProg 64 :=
.seq NamedBody637_134 NamedBody637_137

def NamedBody637_139 : StackLang.HolProg 64 :=
.seq NamedBody637_133 NamedBody637_138

def NamedBody637_140 : StackLang.HolProg 64 :=
.seq NamedBody637_132 NamedBody637_139

def NamedBody637_141 : StackLang.HolProg 64 :=
.seq NamedBody637_131 NamedBody637_140

def NamedBody637_142 : StackLang.HolProg 64 :=
.seq NamedBody637_130 NamedBody637_141

def NamedBody637_143 : StackLang.HolProg 64 :=
.seq NamedBody637_129 NamedBody637_142

def NamedBody637_144 : StackLang.HolProg 64 :=
.seq NamedBody637_128 NamedBody637_143

def NamedBody637_145 : StackLang.HolProg 64 :=
.seq NamedBody637_127 NamedBody637_144

def NamedBody637_146 : StackLang.HolProg 64 :=
.seq NamedBody637_126 NamedBody637_145

def NamedBody637_147 : StackLang.HolProg 64 :=
.seq NamedBody637_125 NamedBody637_146

def NamedBody637_148 : StackLang.HolProg 64 :=
.seq NamedBody637_63 NamedBody637_147

def NamedBody637_149 : StackLang.HolProg 64 :=
.seq NamedBody637_62 NamedBody637_148

def NamedBody637_150 : StackLang.HolProg 64 :=
.seq NamedBody637_61 NamedBody637_149

def NamedBody637_151 : StackLang.HolProg 64 :=
.seq NamedBody637_60 NamedBody637_150

def NamedBody637_152 : StackLang.HolProg 64 :=
.seq NamedBody637_59 NamedBody637_151

def NamedBody637_153 : StackLang.HolProg 64 :=
.seq NamedBody637_58 NamedBody637_152

def NamedBody637_154 : StackLang.HolProg 64 :=
.seq NamedBody637_57 NamedBody637_153

def NamedBody637_155 : StackLang.HolProg 64 :=
.seq NamedBody637_56 NamedBody637_154

def NamedBody637_156 : StackLang.HolProg 64 :=
.seq NamedBody637_55 NamedBody637_155

def NamedBody637_157 : StackLang.HolProg 64 :=
.seq NamedBody637_54 NamedBody637_156

def NamedBody637_158 : StackLang.HolProg 64 :=
.seq NamedBody637_53 NamedBody637_157

def NamedBody637_159 : StackLang.HolProg 64 :=
.seq NamedBody637_52 NamedBody637_158

def NamedBody637_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody637_162 : StackLang.HolProg 64 :=
.seq NamedBody637_160 NamedBody637_161

def NamedBody637_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 29 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28) NamedBody637_159 NamedBody637_162

def NamedBody637_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_166 : StackLang.HolProg 64 :=
.seq NamedBody637_164 NamedBody637_165

def NamedBody637_167 : StackLang.HolProg 64 :=
.seq NamedBody637_163 NamedBody637_166

def NamedBody637_168 : StackLang.HolProg 64 :=
.seq NamedBody637_51 NamedBody637_167

def NamedBody637_169 : StackLang.HolProg 64 :=
.loop NamedBody637_168

def NamedBody637_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody637_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody637_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody637_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody637_174 : StackLang.HolProg 64 :=
.seq NamedBody637_172 NamedBody637_173

def NamedBody637_175 : StackLang.HolProg 64 :=
.seq NamedBody637_171 NamedBody637_174

def NamedBody637_176 : StackLang.HolProg 64 :=
.seq NamedBody637_170 NamedBody637_175

def NamedBody637_177 : StackLang.HolProg 64 :=
.seq NamedBody637_169 NamedBody637_176

def NamedBody637_178 : StackLang.HolProg 64 :=
.seq NamedBody637_50 NamedBody637_177

def NamedBody637_179 : StackLang.HolProg 64 :=
.seq NamedBody637_49 NamedBody637_178

def NamedBody637_180 : StackLang.HolProg 64 :=
.seq NamedBody637_48 NamedBody637_179

def NamedBody637_181 : StackLang.HolProg 64 :=
.seq NamedBody637_47 NamedBody637_180

def NamedBody637_182 : StackLang.HolProg 64 :=
.seq NamedBody637_46 NamedBody637_181

def NamedBody637_183 : StackLang.HolProg 64 :=
.seq NamedBody637_8 NamedBody637_182

def NamedBody637_184 : StackLang.HolProg 64 :=
.seq NamedBody637_3 NamedBody637_183

def NamedBody637_185 : StackLang.HolProg 64 :=
.seq NamedBody637_2 NamedBody637_184

def NamedBody637_186 : StackLang.HolProg 64 :=
.seq NamedBody637_1 NamedBody637_185

def NamedBody637_187 : StackLang.HolProg 64 :=
.seq NamedBody637_0 NamedBody637_186

def Named637 : Nat × StackLang.HolProg 64 := (637, NamedBody637_187)
theorem Named637_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed637 = Named637 := by
  kernel_rfl
#print axioms Named637_eq
end InitECandidate.Proofs.BackendStages
