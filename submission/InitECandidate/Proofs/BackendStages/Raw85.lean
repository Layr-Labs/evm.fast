import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function85
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody85_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody85_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody85_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody85_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody85_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody85_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_9 : StackLang.HolProg 64 :=
.call none (Sum.inl 84) none

def rawBody85_10 : StackLang.HolProg 64 :=
.seq rawBody85_8 rawBody85_9

def rawBody85_11 : StackLang.HolProg 64 :=
.seq rawBody85_7 rawBody85_10

def rawBody85_12 : StackLang.HolProg 64 :=
.seq rawBody85_6 rawBody85_11

def rawBody85_13 : StackLang.HolProg 64 :=
.seq rawBody85_5 rawBody85_12

def rawBody85_14 : StackLang.HolProg 64 :=
.seq rawBody85_4 rawBody85_13

def rawBody85_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody85_14 rawBody85_15

def rawBody85_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody85_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody85_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody85_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody85_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody85_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody85_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody85_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody85_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody85_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody85_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody85_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody85_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody85_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody85_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody85_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody85_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody85_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody85_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody85_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody85_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody85_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody85_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody85_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody85_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody85_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody85_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody85_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody85_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody85_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody85_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody85_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody85_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody85_65 : StackLang.HolProg 64 :=
.seq rawBody85_63 rawBody85_64

def rawBody85_66 : StackLang.HolProg 64 :=
.seq rawBody85_62 rawBody85_65

def rawBody85_67 : StackLang.HolProg 64 :=
.seq rawBody85_61 rawBody85_66

def rawBody85_68 : StackLang.HolProg 64 :=
.seq rawBody85_60 rawBody85_67

def rawBody85_69 : StackLang.HolProg 64 :=
.seq rawBody85_59 rawBody85_68

def rawBody85_70 : StackLang.HolProg 64 :=
.seq rawBody85_58 rawBody85_69

def rawBody85_71 : StackLang.HolProg 64 :=
.seq rawBody85_57 rawBody85_70

def rawBody85_72 : StackLang.HolProg 64 :=
.seq rawBody85_56 rawBody85_71

def rawBody85_73 : StackLang.HolProg 64 :=
.seq rawBody85_55 rawBody85_72

def rawBody85_74 : StackLang.HolProg 64 :=
.seq rawBody85_54 rawBody85_73

def rawBody85_75 : StackLang.HolProg 64 :=
.seq rawBody85_53 rawBody85_74

def rawBody85_76 : StackLang.HolProg 64 :=
.seq rawBody85_52 rawBody85_75

def rawBody85_77 : StackLang.HolProg 64 :=
.seq rawBody85_51 rawBody85_76

def rawBody85_78 : StackLang.HolProg 64 :=
.seq rawBody85_50 rawBody85_77

def rawBody85_79 : StackLang.HolProg 64 :=
.seq rawBody85_49 rawBody85_78

def rawBody85_80 : StackLang.HolProg 64 :=
.seq rawBody85_48 rawBody85_79

def rawBody85_81 : StackLang.HolProg 64 :=
.seq rawBody85_47 rawBody85_80

def rawBody85_82 : StackLang.HolProg 64 :=
.seq rawBody85_46 rawBody85_81

def rawBody85_83 : StackLang.HolProg 64 :=
.seq rawBody85_45 rawBody85_82

def rawBody85_84 : StackLang.HolProg 64 :=
.seq rawBody85_44 rawBody85_83

def rawBody85_85 : StackLang.HolProg 64 :=
.seq rawBody85_43 rawBody85_84

def rawBody85_86 : StackLang.HolProg 64 :=
.seq rawBody85_42 rawBody85_85

def rawBody85_87 : StackLang.HolProg 64 :=
.seq rawBody85_41 rawBody85_86

def rawBody85_88 : StackLang.HolProg 64 :=
.seq rawBody85_40 rawBody85_87

def rawBody85_89 : StackLang.HolProg 64 :=
.seq rawBody85_39 rawBody85_88

def rawBody85_90 : StackLang.HolProg 64 :=
.seq rawBody85_38 rawBody85_89

def rawBody85_91 : StackLang.HolProg 64 :=
.seq rawBody85_37 rawBody85_90

def rawBody85_92 : StackLang.HolProg 64 :=
.seq rawBody85_36 rawBody85_91

def rawBody85_93 : StackLang.HolProg 64 :=
.seq rawBody85_35 rawBody85_92

def rawBody85_94 : StackLang.HolProg 64 :=
.seq rawBody85_34 rawBody85_93

def rawBody85_95 : StackLang.HolProg 64 :=
.seq rawBody85_33 rawBody85_94

def rawBody85_96 : StackLang.HolProg 64 :=
.seq rawBody85_32 rawBody85_95

def rawBody85_97 : StackLang.HolProg 64 :=
.seq rawBody85_31 rawBody85_96

def rawBody85_98 : StackLang.HolProg 64 :=
.seq rawBody85_30 rawBody85_97

def rawBody85_99 : StackLang.HolProg 64 :=
.seq rawBody85_29 rawBody85_98

def rawBody85_100 : StackLang.HolProg 64 :=
.seq rawBody85_28 rawBody85_99

def rawBody85_101 : StackLang.HolProg 64 :=
.seq rawBody85_27 rawBody85_100

def rawBody85_102 : StackLang.HolProg 64 :=
.seq rawBody85_26 rawBody85_101

def rawBody85_103 : StackLang.HolProg 64 :=
.seq rawBody85_25 rawBody85_102

def rawBody85_104 : StackLang.HolProg 64 :=
.seq rawBody85_24 rawBody85_103

def rawBody85_105 : StackLang.HolProg 64 :=
.seq rawBody85_23 rawBody85_104

def rawBody85_106 : StackLang.HolProg 64 :=
.seq rawBody85_22 rawBody85_105

def rawBody85_107 : StackLang.HolProg 64 :=
.seq rawBody85_21 rawBody85_106

def rawBody85_108 : StackLang.HolProg 64 :=
.seq rawBody85_20 rawBody85_107

def rawBody85_109 : StackLang.HolProg 64 :=
.seq rawBody85_19 rawBody85_108

def rawBody85_110 : StackLang.HolProg 64 :=
.seq rawBody85_18 rawBody85_109

def rawBody85_111 : StackLang.HolProg 64 :=
.seq rawBody85_17 rawBody85_110

def rawBody85_112 : StackLang.HolProg 64 :=
.seq rawBody85_16 rawBody85_111

def rawBody85_113 : StackLang.HolProg 64 :=
.seq rawBody85_3 rawBody85_112

def rawBody85_114 : StackLang.HolProg 64 :=
.seq rawBody85_2 rawBody85_113

def rawBody85_115 : StackLang.HolProg 64 :=
.seq rawBody85_1 rawBody85_114

def rawBody85_116 : StackLang.HolProg 64 :=
.seq rawBody85_0 rawBody85_115

def raw85 : StackLang.HolProg 64 := rawBody85_116
theorem raw85_eq : StackRawCall.compTop RawInfo.rawInfo (function85 (.list [])).1 = raw85 := by
  kernel_rfl
#print axioms raw85_eq
end InitECandidate.Proofs.BackendStages
