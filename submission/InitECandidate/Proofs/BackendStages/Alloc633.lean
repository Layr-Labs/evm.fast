import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw633
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody633_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody633_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody633_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 7 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody633_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody633_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 7 7

def AllocBody633_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 18446744073709551248#64))

def AllocBody633_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody633_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody633_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody633_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody633_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody633_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody633_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody633_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody633_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody633_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody633_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody633_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody633_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody633_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody633_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody633_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody633_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody633_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody633_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody633_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody633_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody633_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody633_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody633_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody633_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody633_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody633_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody633_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody633_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody633_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody633_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody633_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody633_63 : StackLang.HolProg 64 :=
.seq AllocBody633_61 AllocBody633_62

def AllocBody633_64 : StackLang.HolProg 64 :=
.seq AllocBody633_60 AllocBody633_63

def AllocBody633_65 : StackLang.HolProg 64 :=
.seq AllocBody633_59 AllocBody633_64

def AllocBody633_66 : StackLang.HolProg 64 :=
.seq AllocBody633_58 AllocBody633_65

def AllocBody633_67 : StackLang.HolProg 64 :=
.seq AllocBody633_57 AllocBody633_66

def AllocBody633_68 : StackLang.HolProg 64 :=
.seq AllocBody633_56 AllocBody633_67

def AllocBody633_69 : StackLang.HolProg 64 :=
.seq AllocBody633_55 AllocBody633_68

def AllocBody633_70 : StackLang.HolProg 64 :=
.seq AllocBody633_54 AllocBody633_69

def AllocBody633_71 : StackLang.HolProg 64 :=
.seq AllocBody633_53 AllocBody633_70

def AllocBody633_72 : StackLang.HolProg 64 :=
.seq AllocBody633_52 AllocBody633_71

def AllocBody633_73 : StackLang.HolProg 64 :=
.seq AllocBody633_51 AllocBody633_72

def AllocBody633_74 : StackLang.HolProg 64 :=
.seq AllocBody633_50 AllocBody633_73

def AllocBody633_75 : StackLang.HolProg 64 :=
.seq AllocBody633_49 AllocBody633_74

def AllocBody633_76 : StackLang.HolProg 64 :=
.seq AllocBody633_48 AllocBody633_75

def AllocBody633_77 : StackLang.HolProg 64 :=
.seq AllocBody633_47 AllocBody633_76

def AllocBody633_78 : StackLang.HolProg 64 :=
.seq AllocBody633_46 AllocBody633_77

def AllocBody633_79 : StackLang.HolProg 64 :=
.seq AllocBody633_45 AllocBody633_78

def AllocBody633_80 : StackLang.HolProg 64 :=
.seq AllocBody633_44 AllocBody633_79

def AllocBody633_81 : StackLang.HolProg 64 :=
.seq AllocBody633_43 AllocBody633_80

def AllocBody633_82 : StackLang.HolProg 64 :=
.seq AllocBody633_42 AllocBody633_81

def AllocBody633_83 : StackLang.HolProg 64 :=
.seq AllocBody633_41 AllocBody633_82

def AllocBody633_84 : StackLang.HolProg 64 :=
.seq AllocBody633_40 AllocBody633_83

def AllocBody633_85 : StackLang.HolProg 64 :=
.seq AllocBody633_39 AllocBody633_84

def AllocBody633_86 : StackLang.HolProg 64 :=
.seq AllocBody633_38 AllocBody633_85

def AllocBody633_87 : StackLang.HolProg 64 :=
.seq AllocBody633_37 AllocBody633_86

def AllocBody633_88 : StackLang.HolProg 64 :=
.seq AllocBody633_36 AllocBody633_87

def AllocBody633_89 : StackLang.HolProg 64 :=
.seq AllocBody633_35 AllocBody633_88

def AllocBody633_90 : StackLang.HolProg 64 :=
.seq AllocBody633_34 AllocBody633_89

def AllocBody633_91 : StackLang.HolProg 64 :=
.seq AllocBody633_33 AllocBody633_90

def AllocBody633_92 : StackLang.HolProg 64 :=
.seq AllocBody633_32 AllocBody633_91

def AllocBody633_93 : StackLang.HolProg 64 :=
.seq AllocBody633_31 AllocBody633_92

def AllocBody633_94 : StackLang.HolProg 64 :=
.seq AllocBody633_30 AllocBody633_93

def AllocBody633_95 : StackLang.HolProg 64 :=
.seq AllocBody633_29 AllocBody633_94

def AllocBody633_96 : StackLang.HolProg 64 :=
.seq AllocBody633_28 AllocBody633_95

def AllocBody633_97 : StackLang.HolProg 64 :=
.seq AllocBody633_27 AllocBody633_96

def AllocBody633_98 : StackLang.HolProg 64 :=
.seq AllocBody633_26 AllocBody633_97

def AllocBody633_99 : StackLang.HolProg 64 :=
.seq AllocBody633_25 AllocBody633_98

def AllocBody633_100 : StackLang.HolProg 64 :=
.seq AllocBody633_24 AllocBody633_99

def AllocBody633_101 : StackLang.HolProg 64 :=
.seq AllocBody633_23 AllocBody633_100

def AllocBody633_102 : StackLang.HolProg 64 :=
.seq AllocBody633_22 AllocBody633_101

def AllocBody633_103 : StackLang.HolProg 64 :=
.seq AllocBody633_21 AllocBody633_102

def AllocBody633_104 : StackLang.HolProg 64 :=
.seq AllocBody633_20 AllocBody633_103

def AllocBody633_105 : StackLang.HolProg 64 :=
.seq AllocBody633_19 AllocBody633_104

def AllocBody633_106 : StackLang.HolProg 64 :=
.seq AllocBody633_18 AllocBody633_105

def AllocBody633_107 : StackLang.HolProg 64 :=
.seq AllocBody633_17 AllocBody633_106

def AllocBody633_108 : StackLang.HolProg 64 :=
.seq AllocBody633_16 AllocBody633_107

def AllocBody633_109 : StackLang.HolProg 64 :=
.seq AllocBody633_15 AllocBody633_108

def AllocBody633_110 : StackLang.HolProg 64 :=
.seq AllocBody633_14 AllocBody633_109

def AllocBody633_111 : StackLang.HolProg 64 :=
.seq AllocBody633_13 AllocBody633_110

def AllocBody633_112 : StackLang.HolProg 64 :=
.seq AllocBody633_12 AllocBody633_111

def AllocBody633_113 : StackLang.HolProg 64 :=
.seq AllocBody633_11 AllocBody633_112

def AllocBody633_114 : StackLang.HolProg 64 :=
.seq AllocBody633_10 AllocBody633_113

def AllocBody633_115 : StackLang.HolProg 64 :=
.seq AllocBody633_9 AllocBody633_114

def AllocBody633_116 : StackLang.HolProg 64 :=
.seq AllocBody633_8 AllocBody633_115

def AllocBody633_117 : StackLang.HolProg 64 :=
.seq AllocBody633_7 AllocBody633_116

def AllocBody633_118 : StackLang.HolProg 64 :=
.seq AllocBody633_6 AllocBody633_117

def AllocBody633_119 : StackLang.HolProg 64 :=
.seq AllocBody633_5 AllocBody633_118

def AllocBody633_120 : StackLang.HolProg 64 :=
.seq AllocBody633_4 AllocBody633_119

def AllocBody633_121 : StackLang.HolProg 64 :=
.seq AllocBody633_3 AllocBody633_120

def AllocBody633_122 : StackLang.HolProg 64 :=
.seq AllocBody633_2 AllocBody633_121

def AllocBody633_123 : StackLang.HolProg 64 :=
.seq AllocBody633_1 AllocBody633_122

def AllocBody633_124 : StackLang.HolProg 64 :=
.seq AllocBody633_0 AllocBody633_123

def Alloc633 : Nat × StackLang.HolProg 64 := (633, AllocBody633_124)
theorem Alloc633_eq : StackAlloc.progComp (633, raw633) = Alloc633 := by
  kernel_rfl
#print axioms Alloc633_eq
end InitECandidate.Proofs.BackendStages
