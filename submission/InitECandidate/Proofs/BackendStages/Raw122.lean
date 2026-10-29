import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function122
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody122_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody122_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody122_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4294901760#64)

def rawBody122_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody122_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody122_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def rawBody122_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody122_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_12 : StackLang.HolProg 64 :=
.seq rawBody122_10 rawBody122_11

def rawBody122_13 : StackLang.HolProg 64 :=
.seq rawBody122_9 rawBody122_12

def rawBody122_14 : StackLang.HolProg 64 :=
.seq rawBody122_8 rawBody122_13

def rawBody122_15 : StackLang.HolProg 64 :=
.seq rawBody122_7 rawBody122_14

def rawBody122_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_18 : StackLang.HolProg 64 :=
.seq rawBody122_16 rawBody122_17

def rawBody122_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody122_15 rawBody122_18

def rawBody122_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4278190080#64)

def rawBody122_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody122_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody122_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody122_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody122_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_31 : StackLang.HolProg 64 :=
.seq rawBody122_29 rawBody122_30

def rawBody122_32 : StackLang.HolProg 64 :=
.seq rawBody122_28 rawBody122_31

def rawBody122_33 : StackLang.HolProg 64 :=
.seq rawBody122_27 rawBody122_32

def rawBody122_34 : StackLang.HolProg 64 :=
.seq rawBody122_26 rawBody122_33

def rawBody122_35 : StackLang.HolProg 64 :=
.seq rawBody122_25 rawBody122_34

def rawBody122_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_38 : StackLang.HolProg 64 :=
.seq rawBody122_36 rawBody122_37

def rawBody122_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody122_35 rawBody122_38

def rawBody122_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4026531840#64)

def rawBody122_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody122_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody122_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody122_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody122_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_51 : StackLang.HolProg 64 :=
.seq rawBody122_49 rawBody122_50

def rawBody122_52 : StackLang.HolProg 64 :=
.seq rawBody122_48 rawBody122_51

def rawBody122_53 : StackLang.HolProg 64 :=
.seq rawBody122_47 rawBody122_52

def rawBody122_54 : StackLang.HolProg 64 :=
.seq rawBody122_46 rawBody122_53

def rawBody122_55 : StackLang.HolProg 64 :=
.seq rawBody122_45 rawBody122_54

def rawBody122_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_58 : StackLang.HolProg 64 :=
.seq rawBody122_56 rawBody122_57

def rawBody122_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody122_55 rawBody122_58

def rawBody122_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3221225472#64)

def rawBody122_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody122_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody122_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody122_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody122_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_71 : StackLang.HolProg 64 :=
.seq rawBody122_69 rawBody122_70

def rawBody122_72 : StackLang.HolProg 64 :=
.seq rawBody122_68 rawBody122_71

def rawBody122_73 : StackLang.HolProg 64 :=
.seq rawBody122_67 rawBody122_72

def rawBody122_74 : StackLang.HolProg 64 :=
.seq rawBody122_66 rawBody122_73

def rawBody122_75 : StackLang.HolProg 64 :=
.seq rawBody122_65 rawBody122_74

def rawBody122_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_78 : StackLang.HolProg 64 :=
.seq rawBody122_76 rawBody122_77

def rawBody122_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody122_75 rawBody122_78

def rawBody122_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2147483648#64)

def rawBody122_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody122_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody122_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody122_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_89 : StackLang.HolProg 64 :=
.seq rawBody122_87 rawBody122_88

def rawBody122_90 : StackLang.HolProg 64 :=
.seq rawBody122_86 rawBody122_89

def rawBody122_91 : StackLang.HolProg 64 :=
.seq rawBody122_85 rawBody122_90

def rawBody122_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody122_94 : StackLang.HolProg 64 :=
.seq rawBody122_92 rawBody122_93

def rawBody122_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody122_91 rawBody122_94

def rawBody122_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody122_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody122_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody122_99 : StackLang.HolProg 64 :=
.seq rawBody122_97 rawBody122_98

def rawBody122_100 : StackLang.HolProg 64 :=
.seq rawBody122_96 rawBody122_99

def rawBody122_101 : StackLang.HolProg 64 :=
.seq rawBody122_95 rawBody122_100

def rawBody122_102 : StackLang.HolProg 64 :=
.seq rawBody122_84 rawBody122_101

def rawBody122_103 : StackLang.HolProg 64 :=
.seq rawBody122_83 rawBody122_102

def rawBody122_104 : StackLang.HolProg 64 :=
.seq rawBody122_82 rawBody122_103

def rawBody122_105 : StackLang.HolProg 64 :=
.seq rawBody122_81 rawBody122_104

def rawBody122_106 : StackLang.HolProg 64 :=
.seq rawBody122_80 rawBody122_105

def rawBody122_107 : StackLang.HolProg 64 :=
.seq rawBody122_79 rawBody122_106

def rawBody122_108 : StackLang.HolProg 64 :=
.seq rawBody122_64 rawBody122_107

def rawBody122_109 : StackLang.HolProg 64 :=
.seq rawBody122_63 rawBody122_108

def rawBody122_110 : StackLang.HolProg 64 :=
.seq rawBody122_62 rawBody122_109

def rawBody122_111 : StackLang.HolProg 64 :=
.seq rawBody122_61 rawBody122_110

def rawBody122_112 : StackLang.HolProg 64 :=
.seq rawBody122_60 rawBody122_111

def rawBody122_113 : StackLang.HolProg 64 :=
.seq rawBody122_59 rawBody122_112

def rawBody122_114 : StackLang.HolProg 64 :=
.seq rawBody122_44 rawBody122_113

def rawBody122_115 : StackLang.HolProg 64 :=
.seq rawBody122_43 rawBody122_114

def rawBody122_116 : StackLang.HolProg 64 :=
.seq rawBody122_42 rawBody122_115

def rawBody122_117 : StackLang.HolProg 64 :=
.seq rawBody122_41 rawBody122_116

def rawBody122_118 : StackLang.HolProg 64 :=
.seq rawBody122_40 rawBody122_117

def rawBody122_119 : StackLang.HolProg 64 :=
.seq rawBody122_39 rawBody122_118

def rawBody122_120 : StackLang.HolProg 64 :=
.seq rawBody122_24 rawBody122_119

def rawBody122_121 : StackLang.HolProg 64 :=
.seq rawBody122_23 rawBody122_120

def rawBody122_122 : StackLang.HolProg 64 :=
.seq rawBody122_22 rawBody122_121

def rawBody122_123 : StackLang.HolProg 64 :=
.seq rawBody122_21 rawBody122_122

def rawBody122_124 : StackLang.HolProg 64 :=
.seq rawBody122_20 rawBody122_123

def rawBody122_125 : StackLang.HolProg 64 :=
.seq rawBody122_19 rawBody122_124

def rawBody122_126 : StackLang.HolProg 64 :=
.seq rawBody122_6 rawBody122_125

def rawBody122_127 : StackLang.HolProg 64 :=
.seq rawBody122_5 rawBody122_126

def rawBody122_128 : StackLang.HolProg 64 :=
.seq rawBody122_4 rawBody122_127

def rawBody122_129 : StackLang.HolProg 64 :=
.seq rawBody122_3 rawBody122_128

def rawBody122_130 : StackLang.HolProg 64 :=
.seq rawBody122_2 rawBody122_129

def rawBody122_131 : StackLang.HolProg 64 :=
.seq rawBody122_1 rawBody122_130

def rawBody122_132 : StackLang.HolProg 64 :=
.seq rawBody122_0 rawBody122_131

def raw122 : StackLang.HolProg 64 := rawBody122_132
theorem raw122_eq : StackRawCall.compTop RawInfo.rawInfo (function122 (.list [])).1 = raw122 := by
  kernel_rfl
#print axioms raw122_eq
end InitECandidate.Proofs.BackendStages
