import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc633
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody633_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody633_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody633_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody633_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody633_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 18446744073709551248#64))

def RemovedBody633_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody633_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody633_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody633_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody633_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody633_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody633_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody633_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody633_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody633_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody633_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody633_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody633_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody633_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody633_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody633_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody633_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody633_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody633_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody633_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody633_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody633_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody633_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody633_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody633_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody633_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody633_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody633_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody633_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody633_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody633_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody633_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody633_63 : StackLang.HolProg 64 :=
.seq RemovedBody633_61 RemovedBody633_62

def RemovedBody633_64 : StackLang.HolProg 64 :=
.seq RemovedBody633_60 RemovedBody633_63

def RemovedBody633_65 : StackLang.HolProg 64 :=
.seq RemovedBody633_59 RemovedBody633_64

def RemovedBody633_66 : StackLang.HolProg 64 :=
.seq RemovedBody633_58 RemovedBody633_65

def RemovedBody633_67 : StackLang.HolProg 64 :=
.seq RemovedBody633_57 RemovedBody633_66

def RemovedBody633_68 : StackLang.HolProg 64 :=
.seq RemovedBody633_56 RemovedBody633_67

def RemovedBody633_69 : StackLang.HolProg 64 :=
.seq RemovedBody633_55 RemovedBody633_68

def RemovedBody633_70 : StackLang.HolProg 64 :=
.seq RemovedBody633_54 RemovedBody633_69

def RemovedBody633_71 : StackLang.HolProg 64 :=
.seq RemovedBody633_53 RemovedBody633_70

def RemovedBody633_72 : StackLang.HolProg 64 :=
.seq RemovedBody633_52 RemovedBody633_71

def RemovedBody633_73 : StackLang.HolProg 64 :=
.seq RemovedBody633_51 RemovedBody633_72

def RemovedBody633_74 : StackLang.HolProg 64 :=
.seq RemovedBody633_50 RemovedBody633_73

def RemovedBody633_75 : StackLang.HolProg 64 :=
.seq RemovedBody633_49 RemovedBody633_74

def RemovedBody633_76 : StackLang.HolProg 64 :=
.seq RemovedBody633_48 RemovedBody633_75

def RemovedBody633_77 : StackLang.HolProg 64 :=
.seq RemovedBody633_47 RemovedBody633_76

def RemovedBody633_78 : StackLang.HolProg 64 :=
.seq RemovedBody633_46 RemovedBody633_77

def RemovedBody633_79 : StackLang.HolProg 64 :=
.seq RemovedBody633_45 RemovedBody633_78

def RemovedBody633_80 : StackLang.HolProg 64 :=
.seq RemovedBody633_44 RemovedBody633_79

def RemovedBody633_81 : StackLang.HolProg 64 :=
.seq RemovedBody633_43 RemovedBody633_80

def RemovedBody633_82 : StackLang.HolProg 64 :=
.seq RemovedBody633_42 RemovedBody633_81

def RemovedBody633_83 : StackLang.HolProg 64 :=
.seq RemovedBody633_41 RemovedBody633_82

def RemovedBody633_84 : StackLang.HolProg 64 :=
.seq RemovedBody633_40 RemovedBody633_83

def RemovedBody633_85 : StackLang.HolProg 64 :=
.seq RemovedBody633_39 RemovedBody633_84

def RemovedBody633_86 : StackLang.HolProg 64 :=
.seq RemovedBody633_38 RemovedBody633_85

def RemovedBody633_87 : StackLang.HolProg 64 :=
.seq RemovedBody633_37 RemovedBody633_86

def RemovedBody633_88 : StackLang.HolProg 64 :=
.seq RemovedBody633_36 RemovedBody633_87

def RemovedBody633_89 : StackLang.HolProg 64 :=
.seq RemovedBody633_35 RemovedBody633_88

def RemovedBody633_90 : StackLang.HolProg 64 :=
.seq RemovedBody633_34 RemovedBody633_89

def RemovedBody633_91 : StackLang.HolProg 64 :=
.seq RemovedBody633_33 RemovedBody633_90

def RemovedBody633_92 : StackLang.HolProg 64 :=
.seq RemovedBody633_32 RemovedBody633_91

def RemovedBody633_93 : StackLang.HolProg 64 :=
.seq RemovedBody633_31 RemovedBody633_92

def RemovedBody633_94 : StackLang.HolProg 64 :=
.seq RemovedBody633_30 RemovedBody633_93

def RemovedBody633_95 : StackLang.HolProg 64 :=
.seq RemovedBody633_29 RemovedBody633_94

def RemovedBody633_96 : StackLang.HolProg 64 :=
.seq RemovedBody633_28 RemovedBody633_95

def RemovedBody633_97 : StackLang.HolProg 64 :=
.seq RemovedBody633_27 RemovedBody633_96

def RemovedBody633_98 : StackLang.HolProg 64 :=
.seq RemovedBody633_26 RemovedBody633_97

def RemovedBody633_99 : StackLang.HolProg 64 :=
.seq RemovedBody633_25 RemovedBody633_98

def RemovedBody633_100 : StackLang.HolProg 64 :=
.seq RemovedBody633_24 RemovedBody633_99

def RemovedBody633_101 : StackLang.HolProg 64 :=
.seq RemovedBody633_23 RemovedBody633_100

def RemovedBody633_102 : StackLang.HolProg 64 :=
.seq RemovedBody633_22 RemovedBody633_101

def RemovedBody633_103 : StackLang.HolProg 64 :=
.seq RemovedBody633_21 RemovedBody633_102

def RemovedBody633_104 : StackLang.HolProg 64 :=
.seq RemovedBody633_20 RemovedBody633_103

def RemovedBody633_105 : StackLang.HolProg 64 :=
.seq RemovedBody633_19 RemovedBody633_104

def RemovedBody633_106 : StackLang.HolProg 64 :=
.seq RemovedBody633_18 RemovedBody633_105

def RemovedBody633_107 : StackLang.HolProg 64 :=
.seq RemovedBody633_17 RemovedBody633_106

def RemovedBody633_108 : StackLang.HolProg 64 :=
.seq RemovedBody633_16 RemovedBody633_107

def RemovedBody633_109 : StackLang.HolProg 64 :=
.seq RemovedBody633_15 RemovedBody633_108

def RemovedBody633_110 : StackLang.HolProg 64 :=
.seq RemovedBody633_14 RemovedBody633_109

def RemovedBody633_111 : StackLang.HolProg 64 :=
.seq RemovedBody633_13 RemovedBody633_110

def RemovedBody633_112 : StackLang.HolProg 64 :=
.seq RemovedBody633_12 RemovedBody633_111

def RemovedBody633_113 : StackLang.HolProg 64 :=
.seq RemovedBody633_11 RemovedBody633_112

def RemovedBody633_114 : StackLang.HolProg 64 :=
.seq RemovedBody633_10 RemovedBody633_113

def RemovedBody633_115 : StackLang.HolProg 64 :=
.seq RemovedBody633_9 RemovedBody633_114

def RemovedBody633_116 : StackLang.HolProg 64 :=
.seq RemovedBody633_8 RemovedBody633_115

def RemovedBody633_117 : StackLang.HolProg 64 :=
.seq RemovedBody633_7 RemovedBody633_116

def RemovedBody633_118 : StackLang.HolProg 64 :=
.seq RemovedBody633_6 RemovedBody633_117

def RemovedBody633_119 : StackLang.HolProg 64 :=
.seq RemovedBody633_5 RemovedBody633_118

def RemovedBody633_120 : StackLang.HolProg 64 :=
.seq RemovedBody633_4 RemovedBody633_119

def RemovedBody633_121 : StackLang.HolProg 64 :=
.seq RemovedBody633_3 RemovedBody633_120

def RemovedBody633_122 : StackLang.HolProg 64 :=
.seq RemovedBody633_2 RemovedBody633_121

def RemovedBody633_123 : StackLang.HolProg 64 :=
.seq RemovedBody633_1 RemovedBody633_122

def RemovedBody633_124 : StackLang.HolProg 64 :=
.seq RemovedBody633_0 RemovedBody633_123

def Removed633 : Nat × StackLang.HolProg 64 := (633, RemovedBody633_124)
theorem Removed633_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc633 = Removed633 := by
  kernel_rfl
#print axioms Removed633_eq
end InitECandidate.Proofs.BackendStages
