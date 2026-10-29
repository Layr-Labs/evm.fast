import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw637
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody637_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody637_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody637_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody637_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody637_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody637_7 : StackLang.HolProg 64 :=
.seq AllocBody637_5 AllocBody637_6

def AllocBody637_8 : StackLang.HolProg 64 :=
.seq AllocBody637_4 AllocBody637_7

def AllocBody637_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody637_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody637_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody637_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody637_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody637_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody637_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody637_23 : StackLang.HolProg 64 :=
.seq AllocBody637_21 AllocBody637_22

def AllocBody637_24 : StackLang.HolProg 64 :=
.seq AllocBody637_20 AllocBody637_23

def AllocBody637_25 : StackLang.HolProg 64 :=
.seq AllocBody637_19 AllocBody637_24

def AllocBody637_26 : StackLang.HolProg 64 :=
.seq AllocBody637_18 AllocBody637_25

def AllocBody637_27 : StackLang.HolProg 64 :=
.seq AllocBody637_17 AllocBody637_26

def AllocBody637_28 : StackLang.HolProg 64 :=
.seq AllocBody637_16 AllocBody637_27

def AllocBody637_29 : StackLang.HolProg 64 :=
.seq AllocBody637_15 AllocBody637_28

def AllocBody637_30 : StackLang.HolProg 64 :=
.seq AllocBody637_14 AllocBody637_29

def AllocBody637_31 : StackLang.HolProg 64 :=
.seq AllocBody637_13 AllocBody637_30

def AllocBody637_32 : StackLang.HolProg 64 :=
.seq AllocBody637_12 AllocBody637_31

def AllocBody637_33 : StackLang.HolProg 64 :=
.seq AllocBody637_11 AllocBody637_32

def AllocBody637_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody637_37 : StackLang.HolProg 64 :=
.seq AllocBody637_35 AllocBody637_36

def AllocBody637_38 : StackLang.HolProg 64 :=
.seq AllocBody637_34 AllocBody637_37

def AllocBody637_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody637_33 AllocBody637_38

def AllocBody637_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_42 : StackLang.HolProg 64 :=
.seq AllocBody637_40 AllocBody637_41

def AllocBody637_43 : StackLang.HolProg 64 :=
.seq AllocBody637_39 AllocBody637_42

def AllocBody637_44 : StackLang.HolProg 64 :=
.seq AllocBody637_10 AllocBody637_43

def AllocBody637_45 : StackLang.HolProg 64 :=
.seq AllocBody637_9 AllocBody637_44

def AllocBody637_46 : StackLang.HolProg 64 :=
.loop AllocBody637_45

def AllocBody637_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def AllocBody637_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody637_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody637_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody637_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody637_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def AllocBody637_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody637_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 14 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody637_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody637_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody637_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody637_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody637_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody637_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody637_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody637_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody637_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4294967295#64)

def AllocBody637_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody637_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody637_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody637_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody637_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody637_90 : StackLang.HolProg 64 :=
.seq AllocBody637_88 AllocBody637_89

def AllocBody637_91 : StackLang.HolProg 64 :=
.seq AllocBody637_87 AllocBody637_90

def AllocBody637_92 : StackLang.HolProg 64 :=
.seq AllocBody637_86 AllocBody637_91

def AllocBody637_93 : StackLang.HolProg 64 :=
.seq AllocBody637_85 AllocBody637_92

def AllocBody637_94 : StackLang.HolProg 64 :=
.seq AllocBody637_84 AllocBody637_93

def AllocBody637_95 : StackLang.HolProg 64 :=
.seq AllocBody637_83 AllocBody637_94

def AllocBody637_96 : StackLang.HolProg 64 :=
.seq AllocBody637_82 AllocBody637_95

def AllocBody637_97 : StackLang.HolProg 64 :=
.seq AllocBody637_81 AllocBody637_96

def AllocBody637_98 : StackLang.HolProg 64 :=
.seq AllocBody637_80 AllocBody637_97

def AllocBody637_99 : StackLang.HolProg 64 :=
.seq AllocBody637_79 AllocBody637_98

def AllocBody637_100 : StackLang.HolProg 64 :=
.seq AllocBody637_78 AllocBody637_99

def AllocBody637_101 : StackLang.HolProg 64 :=
.seq AllocBody637_77 AllocBody637_100

def AllocBody637_102 : StackLang.HolProg 64 :=
.seq AllocBody637_76 AllocBody637_101

def AllocBody637_103 : StackLang.HolProg 64 :=
.seq AllocBody637_75 AllocBody637_102

def AllocBody637_104 : StackLang.HolProg 64 :=
.seq AllocBody637_74 AllocBody637_103

def AllocBody637_105 : StackLang.HolProg 64 :=
.seq AllocBody637_73 AllocBody637_104

def AllocBody637_106 : StackLang.HolProg 64 :=
.seq AllocBody637_72 AllocBody637_105

def AllocBody637_107 : StackLang.HolProg 64 :=
.seq AllocBody637_71 AllocBody637_106

def AllocBody637_108 : StackLang.HolProg 64 :=
.seq AllocBody637_70 AllocBody637_107

def AllocBody637_109 : StackLang.HolProg 64 :=
.seq AllocBody637_69 AllocBody637_108

def AllocBody637_110 : StackLang.HolProg 64 :=
.seq AllocBody637_68 AllocBody637_109

def AllocBody637_111 : StackLang.HolProg 64 :=
.seq AllocBody637_67 AllocBody637_110

def AllocBody637_112 : StackLang.HolProg 64 :=
.seq AllocBody637_66 AllocBody637_111

def AllocBody637_113 : StackLang.HolProg 64 :=
.seq AllocBody637_65 AllocBody637_112

def AllocBody637_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody637_117 : StackLang.HolProg 64 :=
.seq AllocBody637_115 AllocBody637_116

def AllocBody637_118 : StackLang.HolProg 64 :=
.seq AllocBody637_114 AllocBody637_117

def AllocBody637_119 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody637_113 AllocBody637_118

def AllocBody637_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_122 : StackLang.HolProg 64 :=
.seq AllocBody637_120 AllocBody637_121

def AllocBody637_123 : StackLang.HolProg 64 :=
.seq AllocBody637_119 AllocBody637_122

def AllocBody637_124 : StackLang.HolProg 64 :=
.seq AllocBody637_64 AllocBody637_123

def AllocBody637_125 : StackLang.HolProg 64 :=
.loop AllocBody637_124

def AllocBody637_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody637_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody637_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody637_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody637_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody637_137 : StackLang.HolProg 64 :=
.seq AllocBody637_135 AllocBody637_136

def AllocBody637_138 : StackLang.HolProg 64 :=
.seq AllocBody637_134 AllocBody637_137

def AllocBody637_139 : StackLang.HolProg 64 :=
.seq AllocBody637_133 AllocBody637_138

def AllocBody637_140 : StackLang.HolProg 64 :=
.seq AllocBody637_132 AllocBody637_139

def AllocBody637_141 : StackLang.HolProg 64 :=
.seq AllocBody637_131 AllocBody637_140

def AllocBody637_142 : StackLang.HolProg 64 :=
.seq AllocBody637_130 AllocBody637_141

def AllocBody637_143 : StackLang.HolProg 64 :=
.seq AllocBody637_129 AllocBody637_142

def AllocBody637_144 : StackLang.HolProg 64 :=
.seq AllocBody637_128 AllocBody637_143

def AllocBody637_145 : StackLang.HolProg 64 :=
.seq AllocBody637_127 AllocBody637_144

def AllocBody637_146 : StackLang.HolProg 64 :=
.seq AllocBody637_126 AllocBody637_145

def AllocBody637_147 : StackLang.HolProg 64 :=
.seq AllocBody637_125 AllocBody637_146

def AllocBody637_148 : StackLang.HolProg 64 :=
.seq AllocBody637_63 AllocBody637_147

def AllocBody637_149 : StackLang.HolProg 64 :=
.seq AllocBody637_62 AllocBody637_148

def AllocBody637_150 : StackLang.HolProg 64 :=
.seq AllocBody637_61 AllocBody637_149

def AllocBody637_151 : StackLang.HolProg 64 :=
.seq AllocBody637_60 AllocBody637_150

def AllocBody637_152 : StackLang.HolProg 64 :=
.seq AllocBody637_59 AllocBody637_151

def AllocBody637_153 : StackLang.HolProg 64 :=
.seq AllocBody637_58 AllocBody637_152

def AllocBody637_154 : StackLang.HolProg 64 :=
.seq AllocBody637_57 AllocBody637_153

def AllocBody637_155 : StackLang.HolProg 64 :=
.seq AllocBody637_56 AllocBody637_154

def AllocBody637_156 : StackLang.HolProg 64 :=
.seq AllocBody637_55 AllocBody637_155

def AllocBody637_157 : StackLang.HolProg 64 :=
.seq AllocBody637_54 AllocBody637_156

def AllocBody637_158 : StackLang.HolProg 64 :=
.seq AllocBody637_53 AllocBody637_157

def AllocBody637_159 : StackLang.HolProg 64 :=
.seq AllocBody637_52 AllocBody637_158

def AllocBody637_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody637_162 : StackLang.HolProg 64 :=
.seq AllocBody637_160 AllocBody637_161

def AllocBody637_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) AllocBody637_159 AllocBody637_162

def AllocBody637_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_166 : StackLang.HolProg 64 :=
.seq AllocBody637_164 AllocBody637_165

def AllocBody637_167 : StackLang.HolProg 64 :=
.seq AllocBody637_163 AllocBody637_166

def AllocBody637_168 : StackLang.HolProg 64 :=
.seq AllocBody637_51 AllocBody637_167

def AllocBody637_169 : StackLang.HolProg 64 :=
.loop AllocBody637_168

def AllocBody637_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody637_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody637_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody637_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody637_174 : StackLang.HolProg 64 :=
.seq AllocBody637_172 AllocBody637_173

def AllocBody637_175 : StackLang.HolProg 64 :=
.seq AllocBody637_171 AllocBody637_174

def AllocBody637_176 : StackLang.HolProg 64 :=
.seq AllocBody637_170 AllocBody637_175

def AllocBody637_177 : StackLang.HolProg 64 :=
.seq AllocBody637_169 AllocBody637_176

def AllocBody637_178 : StackLang.HolProg 64 :=
.seq AllocBody637_50 AllocBody637_177

def AllocBody637_179 : StackLang.HolProg 64 :=
.seq AllocBody637_49 AllocBody637_178

def AllocBody637_180 : StackLang.HolProg 64 :=
.seq AllocBody637_48 AllocBody637_179

def AllocBody637_181 : StackLang.HolProg 64 :=
.seq AllocBody637_47 AllocBody637_180

def AllocBody637_182 : StackLang.HolProg 64 :=
.seq AllocBody637_46 AllocBody637_181

def AllocBody637_183 : StackLang.HolProg 64 :=
.seq AllocBody637_8 AllocBody637_182

def AllocBody637_184 : StackLang.HolProg 64 :=
.seq AllocBody637_3 AllocBody637_183

def AllocBody637_185 : StackLang.HolProg 64 :=
.seq AllocBody637_2 AllocBody637_184

def AllocBody637_186 : StackLang.HolProg 64 :=
.seq AllocBody637_1 AllocBody637_185

def AllocBody637_187 : StackLang.HolProg 64 :=
.seq AllocBody637_0 AllocBody637_186

def Alloc637 : Nat × StackLang.HolProg 64 := (637, AllocBody637_187)
theorem Alloc637_eq : StackAlloc.progComp (637, raw637) = Alloc637 := by
  kernel_rfl
#print axioms Alloc637_eq
end InitECandidate.Proofs.BackendStages
