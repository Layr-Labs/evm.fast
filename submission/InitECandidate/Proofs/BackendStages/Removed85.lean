import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc85
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody85_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody85_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody85_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody85_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody85_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_9 : StackLang.HolProg 64 :=
.call none (Sum.inl 84) none

def RemovedBody85_10 : StackLang.HolProg 64 :=
.seq RemovedBody85_8 RemovedBody85_9

def RemovedBody85_11 : StackLang.HolProg 64 :=
.seq RemovedBody85_7 RemovedBody85_10

def RemovedBody85_12 : StackLang.HolProg 64 :=
.seq RemovedBody85_6 RemovedBody85_11

def RemovedBody85_13 : StackLang.HolProg 64 :=
.seq RemovedBody85_5 RemovedBody85_12

def RemovedBody85_14 : StackLang.HolProg 64 :=
.seq RemovedBody85_4 RemovedBody85_13

def RemovedBody85_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody85_14 RemovedBody85_15

def RemovedBody85_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody85_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody85_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody85_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody85_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody85_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody85_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody85_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody85_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody85_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody85_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody85_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody85_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody85_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody85_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody85_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody85_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody85_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody85_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody85_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody85_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody85_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody85_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody85_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody85_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody85_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody85_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody85_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody85_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody85_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody85_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody85_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody85_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody85_65 : StackLang.HolProg 64 :=
.seq RemovedBody85_63 RemovedBody85_64

def RemovedBody85_66 : StackLang.HolProg 64 :=
.seq RemovedBody85_62 RemovedBody85_65

def RemovedBody85_67 : StackLang.HolProg 64 :=
.seq RemovedBody85_61 RemovedBody85_66

def RemovedBody85_68 : StackLang.HolProg 64 :=
.seq RemovedBody85_60 RemovedBody85_67

def RemovedBody85_69 : StackLang.HolProg 64 :=
.seq RemovedBody85_59 RemovedBody85_68

def RemovedBody85_70 : StackLang.HolProg 64 :=
.seq RemovedBody85_58 RemovedBody85_69

def RemovedBody85_71 : StackLang.HolProg 64 :=
.seq RemovedBody85_57 RemovedBody85_70

def RemovedBody85_72 : StackLang.HolProg 64 :=
.seq RemovedBody85_56 RemovedBody85_71

def RemovedBody85_73 : StackLang.HolProg 64 :=
.seq RemovedBody85_55 RemovedBody85_72

def RemovedBody85_74 : StackLang.HolProg 64 :=
.seq RemovedBody85_54 RemovedBody85_73

def RemovedBody85_75 : StackLang.HolProg 64 :=
.seq RemovedBody85_53 RemovedBody85_74

def RemovedBody85_76 : StackLang.HolProg 64 :=
.seq RemovedBody85_52 RemovedBody85_75

def RemovedBody85_77 : StackLang.HolProg 64 :=
.seq RemovedBody85_51 RemovedBody85_76

def RemovedBody85_78 : StackLang.HolProg 64 :=
.seq RemovedBody85_50 RemovedBody85_77

def RemovedBody85_79 : StackLang.HolProg 64 :=
.seq RemovedBody85_49 RemovedBody85_78

def RemovedBody85_80 : StackLang.HolProg 64 :=
.seq RemovedBody85_48 RemovedBody85_79

def RemovedBody85_81 : StackLang.HolProg 64 :=
.seq RemovedBody85_47 RemovedBody85_80

def RemovedBody85_82 : StackLang.HolProg 64 :=
.seq RemovedBody85_46 RemovedBody85_81

def RemovedBody85_83 : StackLang.HolProg 64 :=
.seq RemovedBody85_45 RemovedBody85_82

def RemovedBody85_84 : StackLang.HolProg 64 :=
.seq RemovedBody85_44 RemovedBody85_83

def RemovedBody85_85 : StackLang.HolProg 64 :=
.seq RemovedBody85_43 RemovedBody85_84

def RemovedBody85_86 : StackLang.HolProg 64 :=
.seq RemovedBody85_42 RemovedBody85_85

def RemovedBody85_87 : StackLang.HolProg 64 :=
.seq RemovedBody85_41 RemovedBody85_86

def RemovedBody85_88 : StackLang.HolProg 64 :=
.seq RemovedBody85_40 RemovedBody85_87

def RemovedBody85_89 : StackLang.HolProg 64 :=
.seq RemovedBody85_39 RemovedBody85_88

def RemovedBody85_90 : StackLang.HolProg 64 :=
.seq RemovedBody85_38 RemovedBody85_89

def RemovedBody85_91 : StackLang.HolProg 64 :=
.seq RemovedBody85_37 RemovedBody85_90

def RemovedBody85_92 : StackLang.HolProg 64 :=
.seq RemovedBody85_36 RemovedBody85_91

def RemovedBody85_93 : StackLang.HolProg 64 :=
.seq RemovedBody85_35 RemovedBody85_92

def RemovedBody85_94 : StackLang.HolProg 64 :=
.seq RemovedBody85_34 RemovedBody85_93

def RemovedBody85_95 : StackLang.HolProg 64 :=
.seq RemovedBody85_33 RemovedBody85_94

def RemovedBody85_96 : StackLang.HolProg 64 :=
.seq RemovedBody85_32 RemovedBody85_95

def RemovedBody85_97 : StackLang.HolProg 64 :=
.seq RemovedBody85_31 RemovedBody85_96

def RemovedBody85_98 : StackLang.HolProg 64 :=
.seq RemovedBody85_30 RemovedBody85_97

def RemovedBody85_99 : StackLang.HolProg 64 :=
.seq RemovedBody85_29 RemovedBody85_98

def RemovedBody85_100 : StackLang.HolProg 64 :=
.seq RemovedBody85_28 RemovedBody85_99

def RemovedBody85_101 : StackLang.HolProg 64 :=
.seq RemovedBody85_27 RemovedBody85_100

def RemovedBody85_102 : StackLang.HolProg 64 :=
.seq RemovedBody85_26 RemovedBody85_101

def RemovedBody85_103 : StackLang.HolProg 64 :=
.seq RemovedBody85_25 RemovedBody85_102

def RemovedBody85_104 : StackLang.HolProg 64 :=
.seq RemovedBody85_24 RemovedBody85_103

def RemovedBody85_105 : StackLang.HolProg 64 :=
.seq RemovedBody85_23 RemovedBody85_104

def RemovedBody85_106 : StackLang.HolProg 64 :=
.seq RemovedBody85_22 RemovedBody85_105

def RemovedBody85_107 : StackLang.HolProg 64 :=
.seq RemovedBody85_21 RemovedBody85_106

def RemovedBody85_108 : StackLang.HolProg 64 :=
.seq RemovedBody85_20 RemovedBody85_107

def RemovedBody85_109 : StackLang.HolProg 64 :=
.seq RemovedBody85_19 RemovedBody85_108

def RemovedBody85_110 : StackLang.HolProg 64 :=
.seq RemovedBody85_18 RemovedBody85_109

def RemovedBody85_111 : StackLang.HolProg 64 :=
.seq RemovedBody85_17 RemovedBody85_110

def RemovedBody85_112 : StackLang.HolProg 64 :=
.seq RemovedBody85_16 RemovedBody85_111

def RemovedBody85_113 : StackLang.HolProg 64 :=
.seq RemovedBody85_3 RemovedBody85_112

def RemovedBody85_114 : StackLang.HolProg 64 :=
.seq RemovedBody85_2 RemovedBody85_113

def RemovedBody85_115 : StackLang.HolProg 64 :=
.seq RemovedBody85_1 RemovedBody85_114

def RemovedBody85_116 : StackLang.HolProg 64 :=
.seq RemovedBody85_0 RemovedBody85_115

def Removed85 : Nat × StackLang.HolProg 64 := (85, RemovedBody85_116)
theorem Removed85_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc85 = Removed85 := by
  kernel_rfl
#print axioms Removed85_eq
end InitECandidate.Proofs.BackendStages
