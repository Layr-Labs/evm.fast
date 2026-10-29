import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed85
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody85_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody85_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody85_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody85_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody85_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_9 : StackLang.HolProg 64 :=
.call none (Sum.inl 84) none

def NamedBody85_10 : StackLang.HolProg 64 :=
.seq NamedBody85_8 NamedBody85_9

def NamedBody85_11 : StackLang.HolProg 64 :=
.seq NamedBody85_7 NamedBody85_10

def NamedBody85_12 : StackLang.HolProg 64 :=
.seq NamedBody85_6 NamedBody85_11

def NamedBody85_13 : StackLang.HolProg 64 :=
.seq NamedBody85_5 NamedBody85_12

def NamedBody85_14 : StackLang.HolProg 64 :=
.seq NamedBody85_4 NamedBody85_13

def NamedBody85_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody85_14 NamedBody85_15

def NamedBody85_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody85_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody85_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody85_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody85_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody85_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody85_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody85_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody85_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody85_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody85_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody85_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody85_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody85_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody85_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody85_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody85_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody85_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody85_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody85_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody85_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody85_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody85_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody85_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody85_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody85_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody85_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody85_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody85_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody85_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody85_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody85_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody85_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody85_65 : StackLang.HolProg 64 :=
.seq NamedBody85_63 NamedBody85_64

def NamedBody85_66 : StackLang.HolProg 64 :=
.seq NamedBody85_62 NamedBody85_65

def NamedBody85_67 : StackLang.HolProg 64 :=
.seq NamedBody85_61 NamedBody85_66

def NamedBody85_68 : StackLang.HolProg 64 :=
.seq NamedBody85_60 NamedBody85_67

def NamedBody85_69 : StackLang.HolProg 64 :=
.seq NamedBody85_59 NamedBody85_68

def NamedBody85_70 : StackLang.HolProg 64 :=
.seq NamedBody85_58 NamedBody85_69

def NamedBody85_71 : StackLang.HolProg 64 :=
.seq NamedBody85_57 NamedBody85_70

def NamedBody85_72 : StackLang.HolProg 64 :=
.seq NamedBody85_56 NamedBody85_71

def NamedBody85_73 : StackLang.HolProg 64 :=
.seq NamedBody85_55 NamedBody85_72

def NamedBody85_74 : StackLang.HolProg 64 :=
.seq NamedBody85_54 NamedBody85_73

def NamedBody85_75 : StackLang.HolProg 64 :=
.seq NamedBody85_53 NamedBody85_74

def NamedBody85_76 : StackLang.HolProg 64 :=
.seq NamedBody85_52 NamedBody85_75

def NamedBody85_77 : StackLang.HolProg 64 :=
.seq NamedBody85_51 NamedBody85_76

def NamedBody85_78 : StackLang.HolProg 64 :=
.seq NamedBody85_50 NamedBody85_77

def NamedBody85_79 : StackLang.HolProg 64 :=
.seq NamedBody85_49 NamedBody85_78

def NamedBody85_80 : StackLang.HolProg 64 :=
.seq NamedBody85_48 NamedBody85_79

def NamedBody85_81 : StackLang.HolProg 64 :=
.seq NamedBody85_47 NamedBody85_80

def NamedBody85_82 : StackLang.HolProg 64 :=
.seq NamedBody85_46 NamedBody85_81

def NamedBody85_83 : StackLang.HolProg 64 :=
.seq NamedBody85_45 NamedBody85_82

def NamedBody85_84 : StackLang.HolProg 64 :=
.seq NamedBody85_44 NamedBody85_83

def NamedBody85_85 : StackLang.HolProg 64 :=
.seq NamedBody85_43 NamedBody85_84

def NamedBody85_86 : StackLang.HolProg 64 :=
.seq NamedBody85_42 NamedBody85_85

def NamedBody85_87 : StackLang.HolProg 64 :=
.seq NamedBody85_41 NamedBody85_86

def NamedBody85_88 : StackLang.HolProg 64 :=
.seq NamedBody85_40 NamedBody85_87

def NamedBody85_89 : StackLang.HolProg 64 :=
.seq NamedBody85_39 NamedBody85_88

def NamedBody85_90 : StackLang.HolProg 64 :=
.seq NamedBody85_38 NamedBody85_89

def NamedBody85_91 : StackLang.HolProg 64 :=
.seq NamedBody85_37 NamedBody85_90

def NamedBody85_92 : StackLang.HolProg 64 :=
.seq NamedBody85_36 NamedBody85_91

def NamedBody85_93 : StackLang.HolProg 64 :=
.seq NamedBody85_35 NamedBody85_92

def NamedBody85_94 : StackLang.HolProg 64 :=
.seq NamedBody85_34 NamedBody85_93

def NamedBody85_95 : StackLang.HolProg 64 :=
.seq NamedBody85_33 NamedBody85_94

def NamedBody85_96 : StackLang.HolProg 64 :=
.seq NamedBody85_32 NamedBody85_95

def NamedBody85_97 : StackLang.HolProg 64 :=
.seq NamedBody85_31 NamedBody85_96

def NamedBody85_98 : StackLang.HolProg 64 :=
.seq NamedBody85_30 NamedBody85_97

def NamedBody85_99 : StackLang.HolProg 64 :=
.seq NamedBody85_29 NamedBody85_98

def NamedBody85_100 : StackLang.HolProg 64 :=
.seq NamedBody85_28 NamedBody85_99

def NamedBody85_101 : StackLang.HolProg 64 :=
.seq NamedBody85_27 NamedBody85_100

def NamedBody85_102 : StackLang.HolProg 64 :=
.seq NamedBody85_26 NamedBody85_101

def NamedBody85_103 : StackLang.HolProg 64 :=
.seq NamedBody85_25 NamedBody85_102

def NamedBody85_104 : StackLang.HolProg 64 :=
.seq NamedBody85_24 NamedBody85_103

def NamedBody85_105 : StackLang.HolProg 64 :=
.seq NamedBody85_23 NamedBody85_104

def NamedBody85_106 : StackLang.HolProg 64 :=
.seq NamedBody85_22 NamedBody85_105

def NamedBody85_107 : StackLang.HolProg 64 :=
.seq NamedBody85_21 NamedBody85_106

def NamedBody85_108 : StackLang.HolProg 64 :=
.seq NamedBody85_20 NamedBody85_107

def NamedBody85_109 : StackLang.HolProg 64 :=
.seq NamedBody85_19 NamedBody85_108

def NamedBody85_110 : StackLang.HolProg 64 :=
.seq NamedBody85_18 NamedBody85_109

def NamedBody85_111 : StackLang.HolProg 64 :=
.seq NamedBody85_17 NamedBody85_110

def NamedBody85_112 : StackLang.HolProg 64 :=
.seq NamedBody85_16 NamedBody85_111

def NamedBody85_113 : StackLang.HolProg 64 :=
.seq NamedBody85_3 NamedBody85_112

def NamedBody85_114 : StackLang.HolProg 64 :=
.seq NamedBody85_2 NamedBody85_113

def NamedBody85_115 : StackLang.HolProg 64 :=
.seq NamedBody85_1 NamedBody85_114

def NamedBody85_116 : StackLang.HolProg 64 :=
.seq NamedBody85_0 NamedBody85_115

def Named85 : Nat × StackLang.HolProg 64 := (85, NamedBody85_116)
theorem Named85_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed85 = Named85 := by
  kernel_rfl
#print axioms Named85_eq
end InitECandidate.Proofs.BackendStages
