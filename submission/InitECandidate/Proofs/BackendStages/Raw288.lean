import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function288
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody288_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody288_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody288_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody288_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody288_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody288_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody288_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody288_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody288_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody288_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody288_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody288_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody288_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def rawBody288_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def rawBody288_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody288_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody288_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody288_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody288_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def rawBody288_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody288_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def rawBody288_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def rawBody288_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody288_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody288_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody288_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody288_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def rawBody288_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody288_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def rawBody288_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def rawBody288_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody288_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody288_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody288_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody288_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def rawBody288_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody288_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def rawBody288_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody288_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody288_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody288_64 : StackLang.HolProg 64 :=
.seq rawBody288_62 rawBody288_63

def rawBody288_65 : StackLang.HolProg 64 :=
.seq rawBody288_61 rawBody288_64

def rawBody288_66 : StackLang.HolProg 64 :=
.seq rawBody288_60 rawBody288_65

def rawBody288_67 : StackLang.HolProg 64 :=
.seq rawBody288_59 rawBody288_66

def rawBody288_68 : StackLang.HolProg 64 :=
.seq rawBody288_58 rawBody288_67

def rawBody288_69 : StackLang.HolProg 64 :=
.seq rawBody288_57 rawBody288_68

def rawBody288_70 : StackLang.HolProg 64 :=
.seq rawBody288_56 rawBody288_69

def rawBody288_71 : StackLang.HolProg 64 :=
.seq rawBody288_55 rawBody288_70

def rawBody288_72 : StackLang.HolProg 64 :=
.seq rawBody288_54 rawBody288_71

def rawBody288_73 : StackLang.HolProg 64 :=
.seq rawBody288_53 rawBody288_72

def rawBody288_74 : StackLang.HolProg 64 :=
.seq rawBody288_52 rawBody288_73

def rawBody288_75 : StackLang.HolProg 64 :=
.seq rawBody288_51 rawBody288_74

def rawBody288_76 : StackLang.HolProg 64 :=
.seq rawBody288_50 rawBody288_75

def rawBody288_77 : StackLang.HolProg 64 :=
.seq rawBody288_49 rawBody288_76

def rawBody288_78 : StackLang.HolProg 64 :=
.seq rawBody288_48 rawBody288_77

def rawBody288_79 : StackLang.HolProg 64 :=
.seq rawBody288_47 rawBody288_78

def rawBody288_80 : StackLang.HolProg 64 :=
.seq rawBody288_46 rawBody288_79

def rawBody288_81 : StackLang.HolProg 64 :=
.seq rawBody288_45 rawBody288_80

def rawBody288_82 : StackLang.HolProg 64 :=
.seq rawBody288_44 rawBody288_81

def rawBody288_83 : StackLang.HolProg 64 :=
.seq rawBody288_43 rawBody288_82

def rawBody288_84 : StackLang.HolProg 64 :=
.seq rawBody288_42 rawBody288_83

def rawBody288_85 : StackLang.HolProg 64 :=
.seq rawBody288_41 rawBody288_84

def rawBody288_86 : StackLang.HolProg 64 :=
.seq rawBody288_40 rawBody288_85

def rawBody288_87 : StackLang.HolProg 64 :=
.seq rawBody288_39 rawBody288_86

def rawBody288_88 : StackLang.HolProg 64 :=
.seq rawBody288_38 rawBody288_87

def rawBody288_89 : StackLang.HolProg 64 :=
.seq rawBody288_37 rawBody288_88

def rawBody288_90 : StackLang.HolProg 64 :=
.seq rawBody288_36 rawBody288_89

def rawBody288_91 : StackLang.HolProg 64 :=
.seq rawBody288_35 rawBody288_90

def rawBody288_92 : StackLang.HolProg 64 :=
.seq rawBody288_34 rawBody288_91

def rawBody288_93 : StackLang.HolProg 64 :=
.seq rawBody288_33 rawBody288_92

def rawBody288_94 : StackLang.HolProg 64 :=
.seq rawBody288_32 rawBody288_93

def rawBody288_95 : StackLang.HolProg 64 :=
.seq rawBody288_31 rawBody288_94

def rawBody288_96 : StackLang.HolProg 64 :=
.seq rawBody288_30 rawBody288_95

def rawBody288_97 : StackLang.HolProg 64 :=
.seq rawBody288_29 rawBody288_96

def rawBody288_98 : StackLang.HolProg 64 :=
.seq rawBody288_28 rawBody288_97

def rawBody288_99 : StackLang.HolProg 64 :=
.seq rawBody288_27 rawBody288_98

def rawBody288_100 : StackLang.HolProg 64 :=
.seq rawBody288_26 rawBody288_99

def rawBody288_101 : StackLang.HolProg 64 :=
.seq rawBody288_25 rawBody288_100

def rawBody288_102 : StackLang.HolProg 64 :=
.seq rawBody288_24 rawBody288_101

def rawBody288_103 : StackLang.HolProg 64 :=
.seq rawBody288_23 rawBody288_102

def rawBody288_104 : StackLang.HolProg 64 :=
.seq rawBody288_22 rawBody288_103

def rawBody288_105 : StackLang.HolProg 64 :=
.seq rawBody288_21 rawBody288_104

def rawBody288_106 : StackLang.HolProg 64 :=
.seq rawBody288_20 rawBody288_105

def rawBody288_107 : StackLang.HolProg 64 :=
.seq rawBody288_19 rawBody288_106

def rawBody288_108 : StackLang.HolProg 64 :=
.seq rawBody288_18 rawBody288_107

def rawBody288_109 : StackLang.HolProg 64 :=
.seq rawBody288_17 rawBody288_108

def rawBody288_110 : StackLang.HolProg 64 :=
.seq rawBody288_16 rawBody288_109

def rawBody288_111 : StackLang.HolProg 64 :=
.seq rawBody288_15 rawBody288_110

def rawBody288_112 : StackLang.HolProg 64 :=
.seq rawBody288_14 rawBody288_111

def rawBody288_113 : StackLang.HolProg 64 :=
.seq rawBody288_13 rawBody288_112

def rawBody288_114 : StackLang.HolProg 64 :=
.seq rawBody288_12 rawBody288_113

def rawBody288_115 : StackLang.HolProg 64 :=
.seq rawBody288_11 rawBody288_114

def rawBody288_116 : StackLang.HolProg 64 :=
.seq rawBody288_10 rawBody288_115

def rawBody288_117 : StackLang.HolProg 64 :=
.seq rawBody288_9 rawBody288_116

def rawBody288_118 : StackLang.HolProg 64 :=
.seq rawBody288_8 rawBody288_117

def rawBody288_119 : StackLang.HolProg 64 :=
.seq rawBody288_7 rawBody288_118

def rawBody288_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody288_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody288_123 : StackLang.HolProg 64 :=
.seq rawBody288_121 rawBody288_122

def rawBody288_124 : StackLang.HolProg 64 :=
.seq rawBody288_120 rawBody288_123

def rawBody288_125 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) rawBody288_119 rawBody288_124

def rawBody288_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody288_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_128 : StackLang.HolProg 64 :=
.seq rawBody288_126 rawBody288_127

def rawBody288_129 : StackLang.HolProg 64 :=
.seq rawBody288_125 rawBody288_128

def rawBody288_130 : StackLang.HolProg 64 :=
.seq rawBody288_6 rawBody288_129

def rawBody288_131 : StackLang.HolProg 64 :=
.seq rawBody288_5 rawBody288_130

def rawBody288_132 : StackLang.HolProg 64 :=
.loop rawBody288_131

def rawBody288_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody288_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody288_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody288_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody288_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody288_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody288_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody288_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody288_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody288_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody288_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def rawBody288_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody288_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody288_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody288_157 : StackLang.HolProg 64 :=
.seq rawBody288_155 rawBody288_156

def rawBody288_158 : StackLang.HolProg 64 :=
.seq rawBody288_154 rawBody288_157

def rawBody288_159 : StackLang.HolProg 64 :=
.seq rawBody288_153 rawBody288_158

def rawBody288_160 : StackLang.HolProg 64 :=
.seq rawBody288_152 rawBody288_159

def rawBody288_161 : StackLang.HolProg 64 :=
.seq rawBody288_151 rawBody288_160

def rawBody288_162 : StackLang.HolProg 64 :=
.seq rawBody288_150 rawBody288_161

def rawBody288_163 : StackLang.HolProg 64 :=
.seq rawBody288_149 rawBody288_162

def rawBody288_164 : StackLang.HolProg 64 :=
.seq rawBody288_148 rawBody288_163

def rawBody288_165 : StackLang.HolProg 64 :=
.seq rawBody288_147 rawBody288_164

def rawBody288_166 : StackLang.HolProg 64 :=
.seq rawBody288_146 rawBody288_165

def rawBody288_167 : StackLang.HolProg 64 :=
.seq rawBody288_145 rawBody288_166

def rawBody288_168 : StackLang.HolProg 64 :=
.seq rawBody288_144 rawBody288_167

def rawBody288_169 : StackLang.HolProg 64 :=
.seq rawBody288_143 rawBody288_168

def rawBody288_170 : StackLang.HolProg 64 :=
.seq rawBody288_142 rawBody288_169

def rawBody288_171 : StackLang.HolProg 64 :=
.seq rawBody288_141 rawBody288_170

def rawBody288_172 : StackLang.HolProg 64 :=
.seq rawBody288_140 rawBody288_171

def rawBody288_173 : StackLang.HolProg 64 :=
.seq rawBody288_139 rawBody288_172

def rawBody288_174 : StackLang.HolProg 64 :=
.seq rawBody288_138 rawBody288_173

def rawBody288_175 : StackLang.HolProg 64 :=
.seq rawBody288_137 rawBody288_174

def rawBody288_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody288_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody288_178 : StackLang.HolProg 64 :=
.seq rawBody288_176 rawBody288_177

def rawBody288_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody288_175 rawBody288_178

def rawBody288_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody288_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_182 : StackLang.HolProg 64 :=
.seq rawBody288_180 rawBody288_181

def rawBody288_183 : StackLang.HolProg 64 :=
.seq rawBody288_179 rawBody288_182

def rawBody288_184 : StackLang.HolProg 64 :=
.seq rawBody288_136 rawBody288_183

def rawBody288_185 : StackLang.HolProg 64 :=
.loop rawBody288_184

def rawBody288_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody288_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody288_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody288_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody288_190 : StackLang.HolProg 64 :=
.seq rawBody288_188 rawBody288_189

def rawBody288_191 : StackLang.HolProg 64 :=
.seq rawBody288_187 rawBody288_190

def rawBody288_192 : StackLang.HolProg 64 :=
.seq rawBody288_186 rawBody288_191

def rawBody288_193 : StackLang.HolProg 64 :=
.seq rawBody288_185 rawBody288_192

def rawBody288_194 : StackLang.HolProg 64 :=
.seq rawBody288_135 rawBody288_193

def rawBody288_195 : StackLang.HolProg 64 :=
.seq rawBody288_134 rawBody288_194

def rawBody288_196 : StackLang.HolProg 64 :=
.seq rawBody288_133 rawBody288_195

def rawBody288_197 : StackLang.HolProg 64 :=
.seq rawBody288_132 rawBody288_196

def rawBody288_198 : StackLang.HolProg 64 :=
.seq rawBody288_4 rawBody288_197

def rawBody288_199 : StackLang.HolProg 64 :=
.seq rawBody288_3 rawBody288_198

def rawBody288_200 : StackLang.HolProg 64 :=
.seq rawBody288_2 rawBody288_199

def rawBody288_201 : StackLang.HolProg 64 :=
.seq rawBody288_1 rawBody288_200

def rawBody288_202 : StackLang.HolProg 64 :=
.seq rawBody288_0 rawBody288_201

def raw288 : StackLang.HolProg 64 := rawBody288_202
theorem raw288_eq : StackRawCall.compTop RawInfo.rawInfo (function288 (.list [])).1 = raw288 := by
  kernel_rfl
#print axioms raw288_eq
end InitECandidate.Proofs.BackendStages
