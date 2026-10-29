import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function633
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody633_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody633_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody633_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 7 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody633_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody633_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 7 7

def rawBody633_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 18446744073709551248#64))

def rawBody633_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody633_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody633_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody633_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody633_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody633_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody633_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody633_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def rawBody633_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody633_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody633_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody633_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody633_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody633_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody633_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody633_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody633_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody633_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody633_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody633_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody633_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody633_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody633_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody633_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody633_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.ror 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody633_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def rawBody633_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody633_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody633_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody633_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody633_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody633_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody633_63 : StackLang.HolProg 64 :=
.seq rawBody633_61 rawBody633_62

def rawBody633_64 : StackLang.HolProg 64 :=
.seq rawBody633_60 rawBody633_63

def rawBody633_65 : StackLang.HolProg 64 :=
.seq rawBody633_59 rawBody633_64

def rawBody633_66 : StackLang.HolProg 64 :=
.seq rawBody633_58 rawBody633_65

def rawBody633_67 : StackLang.HolProg 64 :=
.seq rawBody633_57 rawBody633_66

def rawBody633_68 : StackLang.HolProg 64 :=
.seq rawBody633_56 rawBody633_67

def rawBody633_69 : StackLang.HolProg 64 :=
.seq rawBody633_55 rawBody633_68

def rawBody633_70 : StackLang.HolProg 64 :=
.seq rawBody633_54 rawBody633_69

def rawBody633_71 : StackLang.HolProg 64 :=
.seq rawBody633_53 rawBody633_70

def rawBody633_72 : StackLang.HolProg 64 :=
.seq rawBody633_52 rawBody633_71

def rawBody633_73 : StackLang.HolProg 64 :=
.seq rawBody633_51 rawBody633_72

def rawBody633_74 : StackLang.HolProg 64 :=
.seq rawBody633_50 rawBody633_73

def rawBody633_75 : StackLang.HolProg 64 :=
.seq rawBody633_49 rawBody633_74

def rawBody633_76 : StackLang.HolProg 64 :=
.seq rawBody633_48 rawBody633_75

def rawBody633_77 : StackLang.HolProg 64 :=
.seq rawBody633_47 rawBody633_76

def rawBody633_78 : StackLang.HolProg 64 :=
.seq rawBody633_46 rawBody633_77

def rawBody633_79 : StackLang.HolProg 64 :=
.seq rawBody633_45 rawBody633_78

def rawBody633_80 : StackLang.HolProg 64 :=
.seq rawBody633_44 rawBody633_79

def rawBody633_81 : StackLang.HolProg 64 :=
.seq rawBody633_43 rawBody633_80

def rawBody633_82 : StackLang.HolProg 64 :=
.seq rawBody633_42 rawBody633_81

def rawBody633_83 : StackLang.HolProg 64 :=
.seq rawBody633_41 rawBody633_82

def rawBody633_84 : StackLang.HolProg 64 :=
.seq rawBody633_40 rawBody633_83

def rawBody633_85 : StackLang.HolProg 64 :=
.seq rawBody633_39 rawBody633_84

def rawBody633_86 : StackLang.HolProg 64 :=
.seq rawBody633_38 rawBody633_85

def rawBody633_87 : StackLang.HolProg 64 :=
.seq rawBody633_37 rawBody633_86

def rawBody633_88 : StackLang.HolProg 64 :=
.seq rawBody633_36 rawBody633_87

def rawBody633_89 : StackLang.HolProg 64 :=
.seq rawBody633_35 rawBody633_88

def rawBody633_90 : StackLang.HolProg 64 :=
.seq rawBody633_34 rawBody633_89

def rawBody633_91 : StackLang.HolProg 64 :=
.seq rawBody633_33 rawBody633_90

def rawBody633_92 : StackLang.HolProg 64 :=
.seq rawBody633_32 rawBody633_91

def rawBody633_93 : StackLang.HolProg 64 :=
.seq rawBody633_31 rawBody633_92

def rawBody633_94 : StackLang.HolProg 64 :=
.seq rawBody633_30 rawBody633_93

def rawBody633_95 : StackLang.HolProg 64 :=
.seq rawBody633_29 rawBody633_94

def rawBody633_96 : StackLang.HolProg 64 :=
.seq rawBody633_28 rawBody633_95

def rawBody633_97 : StackLang.HolProg 64 :=
.seq rawBody633_27 rawBody633_96

def rawBody633_98 : StackLang.HolProg 64 :=
.seq rawBody633_26 rawBody633_97

def rawBody633_99 : StackLang.HolProg 64 :=
.seq rawBody633_25 rawBody633_98

def rawBody633_100 : StackLang.HolProg 64 :=
.seq rawBody633_24 rawBody633_99

def rawBody633_101 : StackLang.HolProg 64 :=
.seq rawBody633_23 rawBody633_100

def rawBody633_102 : StackLang.HolProg 64 :=
.seq rawBody633_22 rawBody633_101

def rawBody633_103 : StackLang.HolProg 64 :=
.seq rawBody633_21 rawBody633_102

def rawBody633_104 : StackLang.HolProg 64 :=
.seq rawBody633_20 rawBody633_103

def rawBody633_105 : StackLang.HolProg 64 :=
.seq rawBody633_19 rawBody633_104

def rawBody633_106 : StackLang.HolProg 64 :=
.seq rawBody633_18 rawBody633_105

def rawBody633_107 : StackLang.HolProg 64 :=
.seq rawBody633_17 rawBody633_106

def rawBody633_108 : StackLang.HolProg 64 :=
.seq rawBody633_16 rawBody633_107

def rawBody633_109 : StackLang.HolProg 64 :=
.seq rawBody633_15 rawBody633_108

def rawBody633_110 : StackLang.HolProg 64 :=
.seq rawBody633_14 rawBody633_109

def rawBody633_111 : StackLang.HolProg 64 :=
.seq rawBody633_13 rawBody633_110

def rawBody633_112 : StackLang.HolProg 64 :=
.seq rawBody633_12 rawBody633_111

def rawBody633_113 : StackLang.HolProg 64 :=
.seq rawBody633_11 rawBody633_112

def rawBody633_114 : StackLang.HolProg 64 :=
.seq rawBody633_10 rawBody633_113

def rawBody633_115 : StackLang.HolProg 64 :=
.seq rawBody633_9 rawBody633_114

def rawBody633_116 : StackLang.HolProg 64 :=
.seq rawBody633_8 rawBody633_115

def rawBody633_117 : StackLang.HolProg 64 :=
.seq rawBody633_7 rawBody633_116

def rawBody633_118 : StackLang.HolProg 64 :=
.seq rawBody633_6 rawBody633_117

def rawBody633_119 : StackLang.HolProg 64 :=
.seq rawBody633_5 rawBody633_118

def rawBody633_120 : StackLang.HolProg 64 :=
.seq rawBody633_4 rawBody633_119

def rawBody633_121 : StackLang.HolProg 64 :=
.seq rawBody633_3 rawBody633_120

def rawBody633_122 : StackLang.HolProg 64 :=
.seq rawBody633_2 rawBody633_121

def rawBody633_123 : StackLang.HolProg 64 :=
.seq rawBody633_1 rawBody633_122

def rawBody633_124 : StackLang.HolProg 64 :=
.seq rawBody633_0 rawBody633_123

def raw633 : StackLang.HolProg 64 := rawBody633_124
theorem raw633_eq : StackRawCall.compTop RawInfo.rawInfo (function633 (.list [])).1 = raw633 := by
  kernel_rfl
#print axioms raw633_eq
end InitECandidate.Proofs.BackendStages
