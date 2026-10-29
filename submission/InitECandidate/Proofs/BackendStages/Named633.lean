import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed633
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody633_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody633_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody633_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody633_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody633_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 18446744073709551248#64))

def NamedBody633_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody633_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody633_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody633_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody633_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody633_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody633_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody633_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody633_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody633_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody633_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody633_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody633_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody633_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody633_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 8 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody633_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody633_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody633_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody633_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody633_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody633_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody633_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody633_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody633_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody633_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody633_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody633_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody633_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody633_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody633_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody633_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody633_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody633_63 : StackLang.HolProg 64 :=
.seq NamedBody633_61 NamedBody633_62

def NamedBody633_64 : StackLang.HolProg 64 :=
.seq NamedBody633_60 NamedBody633_63

def NamedBody633_65 : StackLang.HolProg 64 :=
.seq NamedBody633_59 NamedBody633_64

def NamedBody633_66 : StackLang.HolProg 64 :=
.seq NamedBody633_58 NamedBody633_65

def NamedBody633_67 : StackLang.HolProg 64 :=
.seq NamedBody633_57 NamedBody633_66

def NamedBody633_68 : StackLang.HolProg 64 :=
.seq NamedBody633_56 NamedBody633_67

def NamedBody633_69 : StackLang.HolProg 64 :=
.seq NamedBody633_55 NamedBody633_68

def NamedBody633_70 : StackLang.HolProg 64 :=
.seq NamedBody633_54 NamedBody633_69

def NamedBody633_71 : StackLang.HolProg 64 :=
.seq NamedBody633_53 NamedBody633_70

def NamedBody633_72 : StackLang.HolProg 64 :=
.seq NamedBody633_52 NamedBody633_71

def NamedBody633_73 : StackLang.HolProg 64 :=
.seq NamedBody633_51 NamedBody633_72

def NamedBody633_74 : StackLang.HolProg 64 :=
.seq NamedBody633_50 NamedBody633_73

def NamedBody633_75 : StackLang.HolProg 64 :=
.seq NamedBody633_49 NamedBody633_74

def NamedBody633_76 : StackLang.HolProg 64 :=
.seq NamedBody633_48 NamedBody633_75

def NamedBody633_77 : StackLang.HolProg 64 :=
.seq NamedBody633_47 NamedBody633_76

def NamedBody633_78 : StackLang.HolProg 64 :=
.seq NamedBody633_46 NamedBody633_77

def NamedBody633_79 : StackLang.HolProg 64 :=
.seq NamedBody633_45 NamedBody633_78

def NamedBody633_80 : StackLang.HolProg 64 :=
.seq NamedBody633_44 NamedBody633_79

def NamedBody633_81 : StackLang.HolProg 64 :=
.seq NamedBody633_43 NamedBody633_80

def NamedBody633_82 : StackLang.HolProg 64 :=
.seq NamedBody633_42 NamedBody633_81

def NamedBody633_83 : StackLang.HolProg 64 :=
.seq NamedBody633_41 NamedBody633_82

def NamedBody633_84 : StackLang.HolProg 64 :=
.seq NamedBody633_40 NamedBody633_83

def NamedBody633_85 : StackLang.HolProg 64 :=
.seq NamedBody633_39 NamedBody633_84

def NamedBody633_86 : StackLang.HolProg 64 :=
.seq NamedBody633_38 NamedBody633_85

def NamedBody633_87 : StackLang.HolProg 64 :=
.seq NamedBody633_37 NamedBody633_86

def NamedBody633_88 : StackLang.HolProg 64 :=
.seq NamedBody633_36 NamedBody633_87

def NamedBody633_89 : StackLang.HolProg 64 :=
.seq NamedBody633_35 NamedBody633_88

def NamedBody633_90 : StackLang.HolProg 64 :=
.seq NamedBody633_34 NamedBody633_89

def NamedBody633_91 : StackLang.HolProg 64 :=
.seq NamedBody633_33 NamedBody633_90

def NamedBody633_92 : StackLang.HolProg 64 :=
.seq NamedBody633_32 NamedBody633_91

def NamedBody633_93 : StackLang.HolProg 64 :=
.seq NamedBody633_31 NamedBody633_92

def NamedBody633_94 : StackLang.HolProg 64 :=
.seq NamedBody633_30 NamedBody633_93

def NamedBody633_95 : StackLang.HolProg 64 :=
.seq NamedBody633_29 NamedBody633_94

def NamedBody633_96 : StackLang.HolProg 64 :=
.seq NamedBody633_28 NamedBody633_95

def NamedBody633_97 : StackLang.HolProg 64 :=
.seq NamedBody633_27 NamedBody633_96

def NamedBody633_98 : StackLang.HolProg 64 :=
.seq NamedBody633_26 NamedBody633_97

def NamedBody633_99 : StackLang.HolProg 64 :=
.seq NamedBody633_25 NamedBody633_98

def NamedBody633_100 : StackLang.HolProg 64 :=
.seq NamedBody633_24 NamedBody633_99

def NamedBody633_101 : StackLang.HolProg 64 :=
.seq NamedBody633_23 NamedBody633_100

def NamedBody633_102 : StackLang.HolProg 64 :=
.seq NamedBody633_22 NamedBody633_101

def NamedBody633_103 : StackLang.HolProg 64 :=
.seq NamedBody633_21 NamedBody633_102

def NamedBody633_104 : StackLang.HolProg 64 :=
.seq NamedBody633_20 NamedBody633_103

def NamedBody633_105 : StackLang.HolProg 64 :=
.seq NamedBody633_19 NamedBody633_104

def NamedBody633_106 : StackLang.HolProg 64 :=
.seq NamedBody633_18 NamedBody633_105

def NamedBody633_107 : StackLang.HolProg 64 :=
.seq NamedBody633_17 NamedBody633_106

def NamedBody633_108 : StackLang.HolProg 64 :=
.seq NamedBody633_16 NamedBody633_107

def NamedBody633_109 : StackLang.HolProg 64 :=
.seq NamedBody633_15 NamedBody633_108

def NamedBody633_110 : StackLang.HolProg 64 :=
.seq NamedBody633_14 NamedBody633_109

def NamedBody633_111 : StackLang.HolProg 64 :=
.seq NamedBody633_13 NamedBody633_110

def NamedBody633_112 : StackLang.HolProg 64 :=
.seq NamedBody633_12 NamedBody633_111

def NamedBody633_113 : StackLang.HolProg 64 :=
.seq NamedBody633_11 NamedBody633_112

def NamedBody633_114 : StackLang.HolProg 64 :=
.seq NamedBody633_10 NamedBody633_113

def NamedBody633_115 : StackLang.HolProg 64 :=
.seq NamedBody633_9 NamedBody633_114

def NamedBody633_116 : StackLang.HolProg 64 :=
.seq NamedBody633_8 NamedBody633_115

def NamedBody633_117 : StackLang.HolProg 64 :=
.seq NamedBody633_7 NamedBody633_116

def NamedBody633_118 : StackLang.HolProg 64 :=
.seq NamedBody633_6 NamedBody633_117

def NamedBody633_119 : StackLang.HolProg 64 :=
.seq NamedBody633_5 NamedBody633_118

def NamedBody633_120 : StackLang.HolProg 64 :=
.seq NamedBody633_4 NamedBody633_119

def NamedBody633_121 : StackLang.HolProg 64 :=
.seq NamedBody633_3 NamedBody633_120

def NamedBody633_122 : StackLang.HolProg 64 :=
.seq NamedBody633_2 NamedBody633_121

def NamedBody633_123 : StackLang.HolProg 64 :=
.seq NamedBody633_1 NamedBody633_122

def NamedBody633_124 : StackLang.HolProg 64 :=
.seq NamedBody633_0 NamedBody633_123

def Named633 : Nat × StackLang.HolProg 64 := (633, NamedBody633_124)
theorem Named633_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed633 = Named633 := by
  kernel_rfl
#print axioms Named633_eq
end InitECandidate.Proofs.BackendStages
